//
//  ViewController.swift
//  TableViewApp
//
//  Created by Emil Mubarakov on 10/07/2020.
//  Copyright © 2020 Emil Mubarakov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let restuarantNames = ["Burger Heroes", "Kitchen", "Bonsai", "X.O.", "Love&Life", "Шок", "Бочка", "Вкусные истории"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restuarantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.nameLabel.text = restuarantNames[indexPath.row]
        cell.imageOfPlace.image = UIImage(named: restuarantNames[indexPath.row])
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace.clipsToBounds = true
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    


}

