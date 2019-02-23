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
    var fetching: Bool = false
    
    init() {}
    
    func fetchProducts(completion: @escaping (_ products: [Product]) -> Void) {
        fetching = true
        FirebaseService.shared.listAllProducts { (products: [Product]) in
            self.fetching = false
            completion(products)
        }
    }
}
