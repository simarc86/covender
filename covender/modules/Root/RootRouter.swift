//
//  RootRouter.swift
//  covender
//
//  Created by Marc Tamarit Romero on 2/11/18.
//  Copyright © 2018 Marc Tamarit. All rights reserved.
//

import UIKit
import CoreData

class RootRouter: RootWireframe {
    func presentLoginScreen(in window: UIWindow) {
        window.makeKeyAndVisible()
        window.rootViewController = LoginWireFrame.assembleModule()
    }
    
    func getContext() -> NSManagedObjectContext{
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext

    }
}
