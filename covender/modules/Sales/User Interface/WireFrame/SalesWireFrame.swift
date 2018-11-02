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

    class func presentSalesModule(fromView: AnyObject) {

        // Generating module components
        let view: SalesViewProtocol = SalesViewController()
        let presenter: SalesPresenterProtocol & SalesInteractorOutputProtocol = SalesPresenter()
        let interactor: SalesInteractorInputProtocol = SalesInteractor()
        let APIDataManager: SalesAPIDataManagerInputProtocol = SalesAPIDataManager()
        let localDataManager: SalesLocalDataManagerInputProtocol = SalesLocalDataManager()
        let wireFrame: SalesWireFrameProtocol = SalesWireFrame()

        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
    }
    
    static func assembleModule() -> UIViewController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "SalesViewController") as! SalesViewController
        
        let presenter = SalesPresenter()
        let interactor = SalesInteractor()
        let wireFrame = SalesWireFrame()
        
        let navigation = UINavigationController(rootViewController: view)
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireFrame = wireFrame
        
        interactor.presenter = presenter
        
        wireFrame.viewController = view
        
        return navigation
    }
    
    func presentNewSaleModule(){
//        NewSaleWireFrame.presentNewSaleModule(fromView: self.viewController!)
        
        let moduleNewSale = NewSaleWireFrame.assembleModule()
        self.viewController?.navigationController?.present(moduleNewSale, animated: true, completion: nil)
    }
}
