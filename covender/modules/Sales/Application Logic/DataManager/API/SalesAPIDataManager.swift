//
//  SalesAPIDataManager.swift
//  Vendor
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation
import FirebaseDatabase

class SalesAPIDataManager: SalesAPIDataManagerInputProtocol {
    func getProductsFromAPI(completion: @escaping (_ products: [DataSnapshot]) -> Void) {
        FirebaseService.shared.listAllProducts { (productsDataSnapshot: [DataSnapshot]) in
            completion(productsDataSnapshot)
        }
    }
    
    init() {}
}
