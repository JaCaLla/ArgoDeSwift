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

struct Car {
    let year: Int
    let brand: String
}

extension Car: Decodable {
    static func decode(j: JSON) -> Decoded<Car> {
        return curry(Car.init)
            <^> j <| "year"
            <*> j <| "brand"
        
    }
}


