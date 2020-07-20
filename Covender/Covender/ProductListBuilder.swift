//
//  ProductListBuilder.swift
//  Covender
//
//  Created by Marc Tamarit on 15/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation

class ProductListBuilder {
    static func build() -> ProductListView {
        let viewModel = ProductListViewModel()
        let view = ProductListView(viewModel: viewModel)        
        return view
    }
}
