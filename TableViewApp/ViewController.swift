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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = restuarantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restuarantNames[indexPath.row] )
        return cell
    }
    


}

