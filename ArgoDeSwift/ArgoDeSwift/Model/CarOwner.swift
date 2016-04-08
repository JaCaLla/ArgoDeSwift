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

struct CarOwner {
    let id: Int
    let name: String
    let cars: [Car]?
}

extension CarOwner: Decodable {
    static func decode(j: JSON) -> Decoded<CarOwner> {
        return curry(CarOwner.init)
            <^> j <| "id"
            <*> j <| "name"
            <*> j <|| "cars" // Use ? for parsing optional values
    }
}


