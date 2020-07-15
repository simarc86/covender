//
//  ProductCell.swift
//  Covender
//
//  Created by Marc Tamarit on 14/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import SwiftUI

struct ProductCellView: View {
    let viewModel: ProductCellViewModel
    var body: some View {
        HStack {
            UrlImageView(urlString: viewModel.urlImage)
            Text(viewModel.name)
            Spacer()
            Text(viewModel.price)
        }
    }
}
