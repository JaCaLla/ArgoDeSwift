//
//  Pet.swift
//  argoTest
//
//  Created by JAVIER CALATRAVA LLAVERIA on 08/04/16.
//  Copyright © 2016 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

import Foundation
import Argo
import Curry

class Pet{
    var year: Int = 0
    var name: String = ""
}

extension Pet : Decodable {
    typealias DecodedType = Pet
    
    static func decode(json: JSON) -> Decoded<Pet> {
        let pet = Pet()
        pet.year = (json <| "year").value!
        pet.name = (json <| "name").value!

        
        return .Success(pet)
    }
}