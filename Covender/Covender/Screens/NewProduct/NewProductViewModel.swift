//
//  NewProductViewModel.swift
//  Covender
//
//  Created by Marc Tamarit on 16/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation
import SwiftUI

class NewProductViewModel {
    var model: NewProductModel

    @State var name: String = ""
    @State var description: String = ""
    @State var price: String = ""
    @State var format: String = ""

    init(model: NewProductModel) {
        self.model = model
    }
    
    func save() {
        model.product = Product(name: name, description: description, price: 5.0, urlToImage: testDataUrlImage.urlString, format: format)
    }
}
