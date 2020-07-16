//
//  NewProductView.swift
//  Covender
//
//  Created by Marc Tamarit on 15/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import SwiftUI

struct NewProductView: View {
    let viewModel: NewProductViewModel
    var body: some View {
        VStack {
            Spacer()
            VStack {
                HStack {
                    Spacer()
                    TextField("Product name", text: viewModel.$name)
                }
                HStack {
                    Spacer()
                    TextField("Description", text: viewModel.$description)
                }
                HStack {
                    Spacer()
                    TextField("Price", text: viewModel.$price)
                }
                HStack {
                    Spacer()
                    TextField("Format", text: viewModel.$format)
                }
            }
            Spacer()
            Button(action: {
                self.viewModel.save()
            }) {
                Text("Save")
            }
        }
    }
}

struct NewProductView_Previews: PreviewProvider {
    static var previews: some View {
        NewProductView(viewModel: NewProductViewModel(model: NewProductModel()))
    }
}
