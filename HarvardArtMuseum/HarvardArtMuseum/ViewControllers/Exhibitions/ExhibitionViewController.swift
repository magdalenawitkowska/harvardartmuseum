//
//  ViewController.swift
//  HarvardArtMuseum
//
//  Created by Magdalena Witkowska on 27.01.2018.
//  Copyright © 2018 Magdalena Witkowska. All rights reserved.
//

import UIKit
import RealmSwift

class ExhibitionViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var dataAccess: DataAccess!
    var exhibitions: List<Exhibition>! = List<Exhibition>()
    
    //MARK: Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.tableFooterView = UIView()
        getExhibitionData()
    }

    func getExhibitionData() {
        
        exhibitions = dataAccess.getExhibitions().value
        tableView.reloadData()
    }
}

extension ExhibitionViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exhibitions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ExhibitionCell.nibName, for: indexPath) as! ExhibitionCell
        cell.configureCell(exhibition: Array(exhibitions)[indexPath.row])
        return cell
    }
    
}

extension ExhibitionViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 364.0
    }
}

