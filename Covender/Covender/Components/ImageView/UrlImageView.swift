//
//  UrlImageView.swift
//  Covender
//
//  Created by Marc Tamarit on 15/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import SwiftUI

struct UrlImageView: View {
    @ObservedObject var urlImageModel: UrlImageModel
    
    init(urlString: String?) {
        urlImageModel = UrlImageModel(urlString: urlString)
    }
    var body: some View {
        Image(uiImage: urlImageModel.image ?? defaultImage())
        .resizable()
        .scaledToFit()
            .frame(width: 20, height: 20, alignment: .center)
    }
        
    func defaultImage() -> UIImage {
        return UIImage(systemName: "circle") ?? UIImage()
    }
}

struct UrlImageView_Previews: PreviewProvider {
    static var previews: some View {
        UrlImageView(urlString: testDataUrlImage.urlString)
    }
}
