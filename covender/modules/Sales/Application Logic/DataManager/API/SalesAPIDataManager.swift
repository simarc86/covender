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
    init() {}
    
    func getProductsFromAPI(completion: @escaping (_ products: [Product]) -> Void) {
        FirebaseService.shared.listAllProducts { (products: [Product]) in
            completion(products)
        }
    }
}
