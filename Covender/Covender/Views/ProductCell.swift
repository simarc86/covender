//
//  ProductCell.swift
//  Covender
//
//  Created by Marc Tamarit on 14/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import SwiftUI

struct ProductCell: View {
    let product: Product
    
    var body: some View {
        HStack {
            Image(systemName: "circle")
                .resizable()
                .frame(width: 20, height: 20, alignment: .leading)
            Text(product.name)
            Spacer()
            Text(product.price.debugDescription)
        }
    }
}
