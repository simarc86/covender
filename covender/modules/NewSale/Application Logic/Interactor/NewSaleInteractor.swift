//
//  NewSaleInteractor.swift
//  Covender
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation

class NewSaleInteractor: NewSaleInteractorInputProtocol {
    weak var presenter: NewSaleInteractorOutputProtocol?
    var APIDataManager: NewSaleAPIDataManagerInputProtocol?
    var localDatamanager: NewSaleLocalDataManagerInputProtocol?

    init() {}
    
    func newSellProductAdded(product: Product) {
        APIDataManager?.saveSellProduct(product: product)
        localDatamanager?.saveSellProduct(product: product)
    }
}
