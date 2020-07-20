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
//    @State var presentAddNewProduct = false

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.productCellViewModels) { productCellViewModel in
                        ProductCellBuilder.build(data: productCellViewModel.product)
                    }

//                    if presentAddNewProduct {
//                        ProductCellBuilder.build(data: ServiceLocator.emptyProduct())
//                    }
                }
//                Button(action: { self.presentAddNewProduct.toggle()}) {
//                    HStack {
//                        Image(systemName: "plus.circle.fill")
//                        .resizable()
//                        .frame(width: 20, height: 20, alignment: .center)
//                        Text("Add Product")
//                    }
//                }
                NavigationLink(destination: NewProductBuilder.build(repository: viewModel.productRepository)) {
                                   Text("Add new product")
                               }.navigationBarTitle("Product")
            }
            .navigationBarTitle("Products")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(viewModel: ProductListViewModel())
    }
}
