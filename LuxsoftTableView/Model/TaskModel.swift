//
//  DataModel.swift
//  LuxsoftTableView
//
//  Created by René Sestier on 09/07/21.
//

import Foundation

struct TaskModel:Codable {
    let title: String
    let details: Details
}

struct Details: Codable {
    let description: String
    let day: Int
}
