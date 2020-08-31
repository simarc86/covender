//
//  CategoriesSelectorViewModel.swift
//  Covender
//
//  Created by Marc Tamarit on 31/8/20.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation
import Combine

class CategoriesSelectorViewModel: ObservableObject {
    var categoriesRepository = CategoriesRepository()
    @Published var categoriesCellViewModel = [CategoryCellViewModel]()
    private var cancellables = Set<AnyCancellable>()

    init() {
        refreshData()
        categoriesRepository.$categories.map { categories in
            categories.map { category in
                CategoryCellViewModel(category: category)
            }
        }
        .assign(to: \.categoriesCellViewModel , on: self)
        .store(in: &cancellables)
    }

    func refreshData() {
        categoriesRepository.loadData()
    }
}
