//
//  ServiceLocator.swift
//  Covender
//
//  Created by Marc Tamarit on 16/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation

class ServiceLocator {
    static func emptyProduct() -> Product{
        return Product(name: "", description: "", price: 0, format: "")
    }
}
