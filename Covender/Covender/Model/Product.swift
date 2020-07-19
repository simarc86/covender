//
//  Product.swift
//  Covender
//
//  Created by Marc Tamarit on 14/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct Product: Codable, Identifiable {
    @DocumentID var id: String?
    var name: String
    var description: String
    var price: Float
    var urlToImage: String?
    var format: String

}

#if DEBUG
let testDataProducts = [
testDataProduct,
Product(name: "Cajas", description:"Bla bla bla", price: 1.0, urlToImage: "https://www.ikea.com/es/es/images/products/knagglig-box__0711003_PE727883_S5.JPG?f=xxxs", format: "pack")
]
let testDataProduct = Product(name: "Palets", description:"Bla bla bla", price: 5.0, urlToImage: testDataUrlImage.urlString,  format: "unidad")
#endif
