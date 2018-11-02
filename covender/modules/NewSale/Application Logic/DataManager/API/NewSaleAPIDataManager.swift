//
//  NewSaleAPIDataManager.swift
//  Covender
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation

class NewSaleAPIDataManager: NewSaleAPIDataManagerInputProtocol {    
    init() {}
    
    func saveSellProduct(product: Product) {
        print("saveSellProduct in Api " + product.name)
    }
}
