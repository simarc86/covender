//
//  ProductCellBuilder.swift
//  Covender
//
//  Created by Marc Tamarit on 15/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation

class ProductCellBuilder {
    static func build(data: Product) -> ProductCellView {
        let model = ProductCellModel(product: data)
        let viewModel = ProductCellViewModel(model: model)
        let view = ProductCellView(viewModel: viewModel)
        return view
    }
    
    static func addCellBuild(data: Product) -> ProductCellView {
        let model = ProductCellModel(product: data)
        let viewModel = ProductCellViewModel(model: model)
        let view = ProductCellView(viewModel: viewModel)
        return view
    }
}
