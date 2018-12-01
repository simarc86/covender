//
//  NewSaleAPIDataManager.swift
//  Covender
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation

class NewSaleAPIDataManager: NewSaleAPIDataManagerInputProtocol {
    func saveSellProduct(product: Product, completion: @escaping (_ result: TypeResult) -> Void) {
        FirebaseService.shared.saveProdcut(product: product) { (result) in
            completion (result)
        }
    }
}
