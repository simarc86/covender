//
//  UrlImageModel.swift
//  Covender
//
//  Created by Marc Tamarit on 15/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation
import SwiftUI

class UrlImageModel: ObservableObject {
    @Published var image: UIImage?
    var urlString: String?
    
    init(urlString: String?) {
        self.urlString = urlString
        loadImage()
    }
    
    func loadImage() {
        loadImageFromUrl()
    }
    
    func loadImageFromUrl() {
        guard let urlString = urlString, let url = URL(string: urlString) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url, completionHandler: getImageFromResponse(data:response:error:))
        task.resume()
    }
    
    func getImageFromResponse(data: Data?, response: URLResponse?, error: Error?) {
        guard error == nil else {
            print("Error: \(error?.localizedDescription ?? "")")
            return
        }
        guard let data = data else {
            print("data not found")
            return
        }
        
        DispatchQueue.main.async {
            guard let loadImage = UIImage(data: data) else {
                return
            }
            
            self.image = loadImage
        }
    }
}

#if DEBUG
let testDataUrlImage = UrlImageModel(urlString: "https://metrecubic.com/wp-content/uploads/2017/09/plaet-cajas.png")
#endif
