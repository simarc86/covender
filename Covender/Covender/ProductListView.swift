//
//  ContentView.swift
//  Covender
//
//  Created by Marc Tamarit on 14/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import SwiftUI

struct ProductListView: View {
    var viewModel:ProductListViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.products) { product in
                    ProductCellBuilder.build(data: product)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .leading)
                        Text("Add new product")
                    }
                }
            }
            .navigationBarTitle("Products")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(viewModel: ProductListViewModel(model: ProductListModel(products: testDataProducts))
)
    }
}
