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
    Product(name: "Cajas", price: 1.0)
]
#endif
