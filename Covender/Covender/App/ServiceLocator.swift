//
//  ServiceLocator.swift
//  Covender
//
//  Created by Marc Tamarit on 16/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation

class ServiceLocator {
    static func emptyProduct() -> Product {
        return Product(name: "", description: "", price: 0, format: "")
    }
    
    static func newProduct(name: String, description: String, price: String, format: String) -> Product {
        let priceFloat = Float(price) ?? 0.0
        return Product(name: name, description: description, price: priceFloat, urlToImage: testDataUrlImage.urlString, format: format)
    }
    
    static func newArtist(name:String, category: String, description: String, place: String) -> Artist {
        return Artist(name: name, description: description, category: category, urlToImage: testDataUrlImage.urlString, place: place)
    }
}
