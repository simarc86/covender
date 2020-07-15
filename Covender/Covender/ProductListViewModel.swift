//
//  ProductListViewModel.swift
//  Covender
//
//  Created by Marc Tamarit on 15/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation
import Combine

class ProductListViewModel {
    var model: ProductListModel

    var products: [Product] {
        get {
            return model.products
        }
    }
    
    init(model: ProductListModel) {
        self.model = model
    }
}


