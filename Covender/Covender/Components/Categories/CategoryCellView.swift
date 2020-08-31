//
//  CategoryCellView.swift
//  Covender
//
//  Created by Marc Tamarit on 31/8/20.
//  Copyright © 2020 simco. All rights reserved.
//

import SwiftUI

struct CategoryCellView: View {
    @ObservedObject var viewModel: CategoryCellViewModel
    var body: some View {
        Text(viewModel.category.name)
    }
}

struct CategoryCellView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCellView(viewModel: CategoryCellViewModel(category: Category(name: "Musica")))
    }
}
