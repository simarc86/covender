//
//  CategoryCellViewModel.swift
//  Covender
//
//  Created by Marc Tamarit on 31/8/20.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation
import Combine

class CategoryCellViewModel: ObservableObject, Identifiable {
    @Published var category: Category
    var id = ""
    private var cancellables = Set<AnyCancellable>()
    
    init(category: Category) {
        self.category = category
        $category.compactMap { category in
            category.id
        }
        .assign(to: \.id, on: self)
        .store(in: &cancellables)
    }
}
