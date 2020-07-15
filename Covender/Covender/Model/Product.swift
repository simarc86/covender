//
//  Product.swift
//  Covender
//
//  Created by Marc Tamarit on 14/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation

struct Product: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var price: Float
    var urlToImage: String?
}

#if DEBUG
let testDataProducts = [
    Product(name: "Palets", price: 5.0, urlToImage: testDataUrlImage.urlString),
    Product(name: "Cajas", price: 1.0, urlToImage: "https://www.ikea.com/es/es/images/products/knagglig-box__0711003_PE727883_S5.JPG?f=xxxs")
]
let testDataProduct = Product(name: "Palets", price: 5.0, urlToImage: testDataUrlImage.urlString)

#endif
