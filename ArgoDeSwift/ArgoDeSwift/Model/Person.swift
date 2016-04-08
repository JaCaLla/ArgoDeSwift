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

struct Person {
    let id: Int
    let name: String
    let email: String?

}

extension Person: Decodable {
    static func decode(j: JSON) -> Decoded<Person> {
        return curry(Person.init)
            <^> j <| "id"
            <*> j <| "name"
            <*> j <|? "email" // Use ? for parsing optional values

    }
}


