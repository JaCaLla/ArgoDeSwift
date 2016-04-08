//
//  ViewController.swift
//  argoTest
//
//  Created by JAVIER CALATRAVA LLAVERIA on 08/04/16.
//  Copyright © 2016 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

import UIKit
import Argo

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let user: Decoded<Person> = decode(JSONFromFile("person")!)
        print(user)
        
        let persons:Decoded<[Person]> = decode(JSONFromFile("persons")!)
        print(persons)

        let carOwners:Decoded<[CarOwner]> = decode(JSONFromFile("car_owners")!)
        print(carOwners)
        
        let model: PersonsAndCars? = JSONFromFile("persons_and_cars").flatMap(decode)
        print(model)
        
        let json: AnyObject = JSONFromFile("pets")!
        let pet = Pet.decode(JSON(json))
        print(pet)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

