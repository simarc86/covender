//
//  PurchasesWireFrame.swift
//  Vendor
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation
import UIKit

class PurchasesWireFrame: PurchasesWireFrameProtocol {

    class func presentPurchasesModule(fromView: UIViewController) {

        // Generating module components
        let view: PurchasesViewProtocol = PurchasesViewController()
        let presenter: PurchasesPresenterProtocol & PurchasesInteractorOutputProtocol = PurchasesPresenter()
        let interactor: PurchasesInteractorInputProtocol = PurchasesInteractor()
        let APIDataManager: PurchasesAPIDataManagerInputProtocol = PurchasesAPIDataManager()
        let localDataManager: PurchasesLocalDataManagerInputProtocol = PurchasesLocalDataManager()
        let wireFrame: PurchasesWireFrameProtocol = PurchasesWireFrame()

        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager        
    }
}
