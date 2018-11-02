//
//  PurchasesPresenter.swift
//  Vendor
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation

class PurchasesPresenter: PurchasesPresenterProtocol, PurchasesInteractorOutputProtocol {
    weak var view: PurchasesViewProtocol?
    var interactor: PurchasesInteractorInputProtocol?
    var wireFrame: PurchasesWireFrameProtocol?

    init() {}
}
