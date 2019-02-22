//
//  NewSaleLocalDataManager.swift
//  Covender
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation
import CoreData

class NewSaleLocalDataManager: NewSaleLocalDataManagerInputProtocol {
       
    init() {}

    func saveSellProduct(product: Product) {
        print("saveSellProduct in local " + product.type)
    }
}
