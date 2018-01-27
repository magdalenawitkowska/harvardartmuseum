//
//  Venue.swift
//  HarvardArtMuseum
//
//  Created by Magdalena Witkowska on 27.01.2018.
//  Copyright © 2018 Magdalena Witkowska. All rights reserved.
//

import Foundation
import RealmSwift

class Venue: Object {
    @objc dynamic var id = 0
    @objc dynamic var name = ""
    @objc dynamic var address = ""
    @objc dynamic var city = ""
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
