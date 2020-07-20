//
//  ProductCellModel.swift
//  Covender
//
//  Created by Marc Tamarit on 15/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation

class ProductCellModel: ObservableObject {
    @Published var product: Product
    
    init(product: Product) {
        self.product = product
    }
}
