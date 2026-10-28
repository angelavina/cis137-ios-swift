//
//  Dog.swift
//  DogBreeds
//
//  Created by Pacheco, Hellen on 10/9/21.
//

import SwiftUI

struct Subject : Codable, Identifiable {
    var id: String
    var name: String
    var description: String
    var imageName: String {
        name.lowercased() + "_flag"
    }
    var location: String
    var imageName2: String {
        location.lowercased()
    }
}

