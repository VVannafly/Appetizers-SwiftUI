//
//  Fileuser.swift
//  Appetizers
//
//  Created by Dmitriy Chernov on 11.04.2021.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthday = Date()
    var extraNapkins = false
    var frequentRefill = false
}
