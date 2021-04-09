//
//  NetworkError.swift
//  Appetizers
//
//  Created by Dmitriy Chernov on 09.04.2021.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
