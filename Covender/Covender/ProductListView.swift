//
//  ContentView.swift
//  Covender
//
//  Created by Marc Tamarit on 14/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import SwiftUI

struct ProductListView: View {
    @ObservedObject var viewModel:ProductListViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.productCellViewModels) { productCellViewModel in
                    ProductCellBuilder.build(data: productCellViewModel.product)
                }
                
                NavigationLink(destination: NewProductBuilder.build()) {
                                   Text("Add new product")
                               }.navigationBarTitle("Product")
            }
            .navigationBarTitle("Products")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(viewModel: ProductListViewModel(model: ProductListModel(products: testDataProducts)))
    }
}
