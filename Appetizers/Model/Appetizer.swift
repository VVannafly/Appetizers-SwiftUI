//
//  Appetizer.swift
//  Appetizers
//
//  Created by Dmitriy Chernov on 09.04.2021.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001, name: "Test Appetizer",
                                           description: "This is a description for my appetizer. It's yummy.",
                                           price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    static let sampleOne = Appetizer(id: 0002, name: "Test Appetizer One",
                                           description: "This is a description for my appetizer. It's yummy.",
                                           price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    static let sampleTwo = Appetizer(id: 0003, name: "Test Appetizer Three",
                                           description: "This is a description for my appetizer. It's yummy.",
                                           price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    static let sampleThree = Appetizer(id: 0004, name: "Test Appetizer Four",
                                           description: "This is a description for my appetizer. It's yummy.",
                                           price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    static let appetizers = Array(repeating: sampleAppetizer, count: 5)
    static let orderItems = [sampleAppetizer, sampleOne, sampleTwo, sampleThree]
    
}
