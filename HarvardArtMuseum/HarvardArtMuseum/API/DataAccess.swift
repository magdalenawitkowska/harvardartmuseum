//
//  DataAccess.swift
//  HarvardArtMuseum
//
//  Created by Magdalena Witkowska on 27.01.2018.
//  Copyright © 2018 Magdalena Witkowska. All rights reserved.
//

import Foundation
import PromiseKit
import RealmSwift

protocol DataAccess {
    func getExhibitions() -> Promise<List<Exhibition>>?
}
