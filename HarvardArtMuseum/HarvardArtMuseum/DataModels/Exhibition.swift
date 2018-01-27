//
//  Exhibition.swift
//  HarvardArtMuseum
//
//  Created by Magdalena Witkowska on 27.01.2018.
//  Copyright © 2018 Magdalena Witkowska. All rights reserved.
//

import RealmSwift
import Foundation

class Exhibition: Object {
    @objc dynamic var id = 0
    @objc dynamic var title = ""
    @objc dynamic var beginDate: Date?
    @objc dynamic var endDate: Date?
    @objc dynamic var imageURL: String?
    var venues = List<Venue>()
    @objc dynamic var primaryVenue: Venue? {
        return venues.count > 0 ? venues[0] : nil
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    convenience init(id: Int, title: String, int beginDate: Date?, int endDate: Date?, imageURL: String?, venues: List<Venue>) {
        self.init()
        self.id = id
        self.title = title
        self.beginDate = beginDate
        self.endDate = endDate
        self.imageURL = imageURL
        self.venues = venues
    }
    
}
