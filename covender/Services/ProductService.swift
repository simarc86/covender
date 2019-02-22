//
//  ProductService.swift
//  covender
//
//  Created by Marc Tamarit Romero on 1/12/18.
//  Copyright © 2018 Marc Tamarit. All rights reserved.
//

import Foundation
import FirebaseDatabase
import CodableFirebase

class ProductService {
    static func createProduct(data: DataSnapshot) -> Product?{
        guard let value = data.value else {
            print("Error parsing Product")
            return nil
        }
        do {
            let product = try FirebaseDecoder().decode(Product.self, from: value)
            print(product)
            return product
        } catch let error {
            print(error)
        }
        return nil
    }
}
