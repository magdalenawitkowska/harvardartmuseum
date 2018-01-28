//
//  MockManager.swift
//  HarvardArtMuseum
//
//  Created by Magdalena Witkowska on 27.01.2018.
//  Copyright © 2018 Magdalena Witkowska. All rights reserved.
//

import Foundation
import PromiseKit
import RealmSwift

class MockManager: DataAccess {
    
    func getExhibitions() -> Promise<List<Exhibition>> {
        let venue = Venue(id: 1, name: "Harvard University Art Museums", address: "32 Quincy Street", city: "Cambridge")
        let exhibition1 = Exhibition(id: 1, title: "Pattern and Purpose. Decorative Arts of Islam", beginDate: "1994-02-19", endDate: "1994-07-03"   , imageURL: nil, venues: List<Venue>())
        exhibition1.venues.append(venue)
        let exhibitions = List<Exhibition>()
        exhibitions.append(exhibition1)
        return Promise(value: exhibitions)
    }
    
    required init() {
        
    }
    
    
}
