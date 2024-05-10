//
//  User.swift
//  Appetizers
//
//  Created by Matthew Morrison on 10/5/2024.
//

import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var dateOfBirth     = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
