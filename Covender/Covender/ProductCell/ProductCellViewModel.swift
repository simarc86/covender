//
//  ProductCellViewModel.swift
//  Covender
//
//  Created by Marc Tamarit on 15/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation

class ProductCellViewModel {
    private let model: ProductCellModel
    
    var price: String {
        get {
            return String(model.price)
        }
    }
    var name: String {
        get {
            return model.name 
        }
    }
    var urlImage: String? {
        get {
            return model.urlImage
        }
    }
    
    init(model: ProductCellModel) {
        self.model = model
    }
}
