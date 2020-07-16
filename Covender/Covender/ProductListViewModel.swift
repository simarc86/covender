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
    var model: ProductListModel
    private var cancellables = Set<AnyCancellable>()

    @Published var productCellViewModels = [ProductCellViewModel]()
    
    init(model: ProductListModel) {
        self.model = model
        self.productCellViewModels = model.products.map { product in
            ProductCellViewModel(model: ProductCellModel(product: product))
        }
    }
}


