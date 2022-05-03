//
//  Cat.swift
//  Realm_Example
//
//  Created by mcnc on 2022/05/03.
//

import Foundation
import RealmSwift

class Cat: Object {
    
    @objc dynamic var name: String?
    @objc dynamic var color: String?
    @objc dynamic var gender: String?
}
