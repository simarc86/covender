//
//  SalesInteractor.swift
//  Vendor
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation
import FirebaseDatabase

class SalesInteractor: SalesInteractorInputProtocol {
    weak var presenter: SalesInteractorOutputProtocol?
    var apiDataManager: SalesAPIDataManagerInputProtocol?
    var localDatamanager: SalesLocalDataManagerInputProtocol?

    init() {}

    func getProducts() {
        apiDataManager?.getProductsFromAPI { (products: [Product]) in
            self.presenter?.reloadProducts(producsts: products)
        }
    }
}
