//
//  NewProductViewModel.swift
//  Covender
//
//  Created by Marc Tamarit on 16/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation

class NewProductViewModel: ObservableObject {
    @Published var model: NewProductModel
    var productRepository: ProductRepository

    init(productRepository: ProductRepository, model: NewProductModel) {
        self.model = model
        self.productRepository = productRepository
    }
    
    func save(name: String, description: String, price: String, format: String) {
        model.product = ServiceLocator.newProduct(name: name, description: description, price: price, format: format)
        guard let product = model.product else {
            return
        }
        productRepository.addProduct(product)
    }
}
