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
    @objc dynamic var beginDate: String?
    @objc dynamic var endDate: String?
    @objc dynamic var imageURL: String?
    var venues = List<Venue>()
    @objc dynamic var primaryVenue: Venue? {
        return venues.count > 0 ? venues[0] : nil
    }
    
    var times: String? {
        guard let begin = beginDate, let end = endDate else {
            return nil
        }
        let oldDateFormatter = DateFormatter()
        oldDateFormatter.dateFormat = "yyyy-MM-dd"
        
        let newDateFormatter = DateFormatter()
        newDateFormatter.dateFormat = "MMM dd, yyyy"
        
        guard let newBeginDate = oldDateFormatter.date(from: begin),
            let newEndDate = oldDateFormatter.date(from: end) else {
                return nil
        }
        return newDateFormatter.string(from: newBeginDate) + " - " + newDateFormatter.string(from: newEndDate)
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    convenience init(id: Int, title: String, beginDate: String?, endDate: String?, imageURL: String?, venues: List<Venue>) {
        self.init()
        self.id = id
        self.title = title
        self.beginDate = beginDate
        self.endDate = endDate
        self.imageURL = imageURL
        self.venues = venues
    }
    
}
