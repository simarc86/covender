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
    var apiDataManager: NewSaleAPIDataManagerInputProtocol?
    var localDatamanager: NewSaleLocalDataManagerInputProtocol?

    init() {}
    
    func createProduct(name: String, unit: String, price: String) {
        let product = Product(type: name, unit: unit, price: ConversorService.getPriceFormatted(price: price))
        apiDataManager?.saveSellProduct(product: product, completion: { (result) in
            switch (result){
            case .success:
                self.presenter?.productAddSuccess(product: product)
            default:
                self.presenter?.productAddFailiure()
            }
        })
    }
    
    func startObserverProductAdded(){
        //TODO: implement this
    }
}
