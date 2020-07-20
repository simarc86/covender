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
    @Published var model: ProductCellModel
    private var cancellables = Set<AnyCancellable>()
    
    var id = ""

    var price: String {
        get {
            return String(model.product.price)
        }
    }
    var name: String {
        get {
            return model.product.name
        }
    }
    
    var urlImage: String? {
        get {
            return model.product.urlToImage
        }
    }
    
    init(model: ProductCellModel) {
        self.model = model
        
        model.$product
            .compactMap { product in
                product.id
        }
        .assign(to: \.id, on: self)
        .store(in: &cancellables)
    }
}
