//
//  Menu.swift
//  iDine
//
//  Created by Paul Hudson on 27/06/2019.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import SwiftUI

struct ShipSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [subs]
    var imagecredit : String
    
    var shipimage: String {
        name
    }
}

struct subs: Codable, Equatable, Identifiable {
    var id: UUID
    var hullcode: String
    var buildstart: String
    var fleet: Int
    var role: String
    
    
#if DEBUG
    static let example = subs(id: UUID(), hullcode: "SSN", buildstart: "January 1972", fleet: 20, role:"Nuclear powered fast attack submarine used by the United States Navy.")
#endif
}
