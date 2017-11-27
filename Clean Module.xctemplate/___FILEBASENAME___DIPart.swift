//
//  ___VARIABLE_productName:identifier___DIPart.swift
//  Yarche
//
//  Created by Maxim Pisarenko on 14/11/2017.
//  Copyright © 2017 MAG Development. All rights reserved.
//

import Foundation
import DITranquillity

// swiftlint:disable force_unwrapping

class ___VARIABLE_productName:identifier___DIPart: DIPart {
    
    static func load(container: DIContainer) {
        
        container.register { /* Rebuild project and use R.swift to provide view controller */ }
            .as(___VARIABLE_productName:identifier___View.self)
            .injection(cycle: true) { $0.presenter = $1 }
            .lifetime(.objectGraph)
        
        container.register(___VARIABLE_productName:identifier___PresenterImpl.init)
            .as(___VARIABLE_productName:identifier___Presenter.self)
        
        container.register(___VARIABLE_productName:identifier___InteractorImpl.init)
            .as(___VARIABLE_productName:identifier___Interactor.self)
        
        container.register(___VARIABLE_productName:identifier___RouterImpl.init)
            .as(___VARIABLE_productName:identifier___Router.self)
    }
}
