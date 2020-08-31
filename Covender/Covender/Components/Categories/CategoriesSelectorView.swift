//
//  CategoriesSelectorView.swift
//  Covender
//
//  Created by Marc Tamarit on 31/8/20.
//  Copyright © 2020 simco. All rights reserved.
//

import SwiftUI

struct CategoriesSelectorView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: CategoriesSelectorViewModel
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.categoriesCellViewModel) { categoryViewModel in
                    CategoryCellView(viewModel: categoryViewModel)
                }
            }.onAppear() {
                self.viewModel.refreshData()
            }
            Spacer()
            Button("dismiss") {
                self.presentationMode.wrappedValue.dismiss()
            }
        }
    }
}
