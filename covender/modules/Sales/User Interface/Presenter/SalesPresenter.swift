//
//  SalesPresenter.swift
//  Vendor
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation

class SalesPresenter: SalesPresenterProtocol, SalesInteractorOutputProtocol {
    func reloadProducts(producsts: [Product]) {
        interactor?.getProducts()
    }
    
    func viewDidLoad() {
        view?.reloadData()
    }
    
    weak var view: SalesViewProtocol?
    var interactor: SalesInteractorInputProtocol?
    var wireFrame: SalesWireFrameProtocol?

    init() {}
    
    func addButtonTapped(){
        wireFrame?.presentNewSaleModule()
    }
}
