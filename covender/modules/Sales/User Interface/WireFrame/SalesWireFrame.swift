//
//  SalesWireFrame.swift
//  Vendor
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation
import UIKit

class SalesWireFrame: SalesWireFrameProtocol {

    weak var viewController: UIViewController?
    weak var navigationController: UINavigationController?

   
    static func assembleModule() -> UIViewController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "SalesViewController") as! SalesViewController
        
        let presenter: SalesPresenterProtocol & SalesInteractorOutputProtocol = SalesPresenter()
        let interactor: SalesInteractorInputProtocol = SalesInteractor()
        let apiDataManager: SalesAPIDataManagerInputProtocol = SalesAPIDataManager()
        let localDataManager: SalesLocalDataManagerInputProtocol = SalesLocalDataManager()
        let wireFrame: SalesWireFrameProtocol = SalesWireFrame()
        let navigation = UINavigationController(rootViewController: view)
        
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.apiDataManager = apiDataManager
        interactor.localDatamanager = localDataManager
        wireFrame.navigationController = navigation
        wireFrame.viewController = view
        
        return navigation
    }
    
    func presentNewSaleModule(){
        let moduleNewSale = NewSaleWireFrame.assembleModule()
        navigationController?.pushViewController(moduleNewSale, animated: true)
    }
}
