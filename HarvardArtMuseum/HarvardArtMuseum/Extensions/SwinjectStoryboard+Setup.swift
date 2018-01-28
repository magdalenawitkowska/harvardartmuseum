//
//  SwinjectStoryboard+Setup.swift
//  HarvardArtMuseum
//
//  Created by Magdalena Witkowska on 27.01.2018.
//  Copyright © 2018 Magdalena Witkowska. All rights reserved.
//

import Foundation
import SwinjectStoryboard
import SwinjectAutoregistration
import Swinject

extension SwinjectStoryboard {
    
    @objc class func setup() {
        defaultContainer.storyboardInitCompleted(ExhibitionViewController.self) { (r, c) in
            c.dataAccess = r.resolve(MockManager.self)
        }
        
        defaultContainer.autoregister(MockManager.self, initializer: MockManager.init)
    }
}
