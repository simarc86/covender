//
//  NewSalePresenter.swift
//  Covender
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation

class NewSalePresenter: NewSalePresenterProtocol, NewSaleInteractorOutputProtocol {
    weak var view: NewSaleViewProtocol?
    var interactor: NewSaleInteractorInputProtocol?
    var wireFrame: NewSaleWireFrameProtocol?

    init() {}
    
    func didAddedProduct(name: String, unit: String, price: String) {
        let newProduct = Product(name: name, unit: unit, price: getPriceFormatted(price: price))
        interactor?.newSellProductAdded(product: newProduct)
    }
    
    func getPriceFormatted(price: String) -> Float{
        return Float(price)!
    }
}
