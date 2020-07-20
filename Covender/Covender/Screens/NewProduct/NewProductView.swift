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
    
    @State var name: String = ""
    @State var description: String = ""
    @State var price: String = ""
    @State var format: String = ""
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>

    var body: some View {
        VStack {
            VStack {
                RegularTextField(placeholder: "Product name", text: $name)
                RegularTextField(placeholder: "Description", text: $description)
                RegularTextField(placeholder: "Price", text: $price)
                RegularTextField(placeholder: "Format", text: $format)
            }
            Spacer()
            Button(action: {
                self.viewModel.save(name: self.name, description: self.description, price: self.price, format: self.format)
                self.mode.wrappedValue.dismiss()
            }) {
                Text("Save")
            }
        }
    }
}

struct NewProductView_Previews: PreviewProvider {
    static var previews: some View {
        NewProductView(viewModel: NewProductViewModel(productRepository: ProductRepository(), model: NewProductModel()))
    }
}
