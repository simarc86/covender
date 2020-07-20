//
//  NewProductBuilder.swift
//  Covender
//
//  Created by Marc Tamarit on 16/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation
import FirebaseFirestore

class NewProductBuilder {
    static func build(repository: ProductRepository) -> NewProductView {
        let model = NewProductModel()
        let viewModel = NewProductViewModel(productRepository: repository, model: model)
        let view = NewProductView(viewModel: viewModel)
        return view
    }
}
