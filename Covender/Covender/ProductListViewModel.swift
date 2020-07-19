//
//  ProductListViewModel.swift
//  Covender
//
//  Created by Marc Tamarit on 15/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation
import Combine

class ProductListViewModel: ObservableObject {
    var productRepository = ProductRepository()
    var model: ProductListModel
    private var cancellables = Set<AnyCancellable>()

    @Published var productCellViewModels = [ProductCellViewModel]()
    
    init(model: ProductListModel) {
        self.model = model
        productRepository.loadData()
        productRepository.$products.map { products in
            products.map { product in
                ProductCellViewModel(model: ProductCellModel(product: product))
            }
        }
        .assign(to: \.productCellViewModels, on: self)
        .store(in: &cancellables)
    }
}


