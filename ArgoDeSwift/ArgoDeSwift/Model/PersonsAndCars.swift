//
//  ATPerson.swift
//  argoTest
//
//  Created by JAVIER CALATRAVA LLAVERIA on 08/04/16.
//  Copyright © 2016 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

import Foundation

import Argo
import Curry

struct PersonsAndCars {
    let persons: [Person]?
    let cars: [Car]?
}

extension PersonsAndCars: Decodable {
    static func decode(j: JSON) -> Decoded<PersonsAndCars> {
        return curry(PersonsAndCars.init)
            <^> j <|| "persons"
            <*> j <|| "cars"
    }
}


