//
//  PurchasesInteractor.swift
//  Vendor
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation

class PurchasesInteractor: PurchasesInteractorInputProtocol {

    weak var presenter: PurchasesInteractorOutputProtocol?
    var APIDataManager: PurchasesAPIDataManagerInputProtocol?
    var localDatamanager: PurchasesLocalDataManagerInputProtocol?

    init() {}
}
