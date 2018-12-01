//
//  NewSaleWireFrame.swift
//  Covender
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation
import UIKit

class NewSaleWireFrame: NewSaleWireFrameProtocol {
    
    weak var viewController: UIViewController?
    
    static func assembleModule() -> UIViewController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "NewSaleViewController") as! NewSaleViewController
        
        let presenter = NewSalePresenter()
        let interactor = NewSaleInteractor()
        let wireFrame = NewSaleWireFrame()
        let APIDataManager: NewSaleAPIDataManagerInputProtocol = NewSaleAPIDataManager()
        let localDataManager: NewSaleLocalDataManagerInputProtocol = NewSaleLocalDataManager()
        
        let navigation = UINavigationController(rootViewController: view)
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireFrame = wireFrame
        
        interactor.presenter = presenter
        interactor.apiDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
        
        wireFrame.viewController = view
        
        return view
    }
    
    class func presentNewSaleModule(fromView: AnyObject) {

        // Generating module components
        let view: NewSaleViewProtocol = NewSaleViewController()
        let presenter: NewSalePresenterProtocol & NewSaleInteractorOutputProtocol = NewSalePresenter()
        let interactor: NewSaleInteractorInputProtocol = NewSaleInteractor()
        let APIDataManager: NewSaleAPIDataManagerInputProtocol = NewSaleAPIDataManager()
        let localDataManager: NewSaleLocalDataManagerInputProtocol = NewSaleLocalDataManager()
        let wireFrame: NewSaleWireFrameProtocol = NewSaleWireFrame()

        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.apiDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
        
        fromView.navigationController??.pushViewController(view as! NewSaleViewController, animated: true)
    }
}
