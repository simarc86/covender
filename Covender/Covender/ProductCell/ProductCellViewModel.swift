//
//  ProductCellViewModel.swift
//  Covender
//
//  Created by Marc Tamarit on 15/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation
import Combine

class ProductCellViewModel: ObservableObject, Identifiable {
    private let model: ProductCellModel
    private var cancellables = Set<AnyCancellable>()
    @Published var product: Product
    
    var id = ""

    var price: String {
        get {
            return String(model.price)
        }
    }
    var name: String {
        get {
            return model.name 
        }
    }
    
    var urlImage: String? {
        get {
            return model.urlImage
        }
    }
    
    init(model: ProductCellModel) {
        self.model = model
        self.product = model.product
        
        $product
            .map { product in
                product.id
        }
        .assign(to: \.id, on: self)
        .store(in: &cancellables)
    }
}
