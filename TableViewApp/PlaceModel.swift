//
//  PlaceModel.swift
//  TableViewApp
//
//  Created by Emil Mubarakov on 11/07/2020.
//  Copyright © 2020 Emil Mubarakov. All rights reserved.
//

import Foundation
import RealmSwift

class Place: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    
    convenience init(name: String, location: String?, type: String?, imageData: Data?) {
        self.init()
        self.name = name
        self.location = location
        self.type = type
        self.imageData = imageData
    }
    
}
