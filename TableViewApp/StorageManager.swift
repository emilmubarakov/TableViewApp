//
//  StorageManager.swift
//  TableViewApp
//
//  Created by Emil Mubarakov on 14/07/2020.
//  Copyright © 2020 Emil Mubarakov. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
}
