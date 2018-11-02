//
//  SalesInteractor.swift
//  Vendor
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation

class SalesInteractor: SalesInteractorInputProtocol {

    weak var presenter: SalesInteractorOutputProtocol?
    var APIDataManager: SalesAPIDataManagerInputProtocol?
    var localDatamanager: SalesLocalDataManagerInputProtocol?

    init() {}
}
