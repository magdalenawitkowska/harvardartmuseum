//
//  ExhibitionCell.swift
//  HarvardArtMuseum
//
//  Created by Magdalena Witkowska on 27.01.2018.
//  Copyright © 2018 Magdalena Witkowska. All rights reserved.
//

import Foundation
import UIKit

class ExhibitionCell: UITableViewCell {
    
    @IBOutlet weak var exhibitionImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var venueNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    static let nibName = "ExhibitionCell"
    
    func configureCell(exhibition: Exhibition) {
        titleLabel.text = exhibition.title
        
        if let venue = exhibition.primaryVenue {
            venueNameLabel.text = venue.name
        }
        
        if let times = exhibition.times {
            dateLabel.text = times
        }
        
    }
    
}
