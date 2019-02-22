//
//  ProductService.swift
//  covender
//
//  Created by Marc Tamarit Romero on 1/12/18.
//  Copyright © 2018 Marc Tamarit. All rights reserved.
//

import Foundation
import FirebaseDatabase

class ProductService {
    
    static func createProduct(data: DataSnapshot) -> Product{
        let data2 = ConversorService.getDictionaryFromDataSnapshot(data: data as! DataSnapshot)!
        let product = try JSONDecoder().decode(Product.self, from: data2)
        return product
    }
}
