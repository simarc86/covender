//
//  ProductService.swift
//  covender
//
//  Created by Marc Tamarit Romero on 1/12/18.
//  Copyright © 2018 Marc Tamarit. All rights reserved.
//

import Foundation

class ProductService {
    static func createProduct(dictionary: Dictionary<String, Any>) -> Product{
        let name = dictionary["name"] as! String
        let unit = dictionary["unit"] as! String
        let price = dictionary["price"] as! Float

        let product = Product(name: name, unit: unit, price: price)
        return product
    }
}
