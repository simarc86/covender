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

    init() {
    }
    
    func viewDidLoad(){
        interactor?.startObserverProductAdded()
    }

    func sendData(name: String, unit: String, price: String) {
        interactor?.createProduct(name: name, unit: unit, price: price)
    }
    
    func productAddSuccess(product: Product) {
        view?.showProductAddSuccess()
        wireFrame?.closeModule()
    }
    
    func productAddFailiure() {
        view?.showProductAddFailiure()
    }
}
