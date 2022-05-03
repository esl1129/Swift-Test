//
//  RealmViewController.swift
//  Realm_Example
//
//  Created by mcnc on 2022/05/03.
//

import UIKit
import RealmSwift

class RealmViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let realm = try! Realm()
        
        // Write
        /*
        var myCat = Cat()
        myCat.name = "Moe"
        myCat.color = "Gray"
        myCat.gender = "Male"
        
        try! realm.write {
            realm.add(myCat)
        }
         */
        
        
        print(realm.configuration.fileURL!)

        let results = realm.objects(Cat.self).filter("name = 'Moe'")
        print(results.count)
        
    }
    

}
