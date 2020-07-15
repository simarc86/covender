//
//  ProductCellModel.swift
//  Covender
//
//  Created by Marc Tamarit on 15/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation

class ProductCellModel {
    let product: Product
    
    var price: Float
    var name: String
    var urlImage: String?
    
    init(product: Product) {
        self.product = product
        self.price = product.price
        self.name = product.name
        self.urlImage = product.urlToImage
    }
}
