//
//  ViewController.swift
//  realmTest02
//
//  Created by D7703_19 on 2019. 5. 30..
//  Copyright © 2019년 sin. All rights reserved.
//

//
//  ViewController.swift
//  realmTest02
//
//  Created by D7703_19 on 2019. 5. 30..
//  Copyright © 2019년 sin. All rights reserved.
//

import UIKit
import RealmSwift

class Person: Object {
    @objc dynamic var name = ""
    @objc dynamic var age = 0
}

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(NSHomeDirectory())
    @IBAction func addObject(_ sender: Any) {
        let newPerson = Person()
        Person.name = nameTextField.text
        newPerson.age = Int(ageTextField.text)!
        
        let realm = try! Realm()
        try! realm.write {
            realm.add(newPerson)
        }
        
        nameTextField.text = ""
        ageTextField.text = ""
    }
    @IBAction func getObject(_ sender: Any) {
    }
        let realm = try! Realm()
        let resultArray = realm.objects(Person.self)
        print(resultArray.count)
    
    }
    
    
}

