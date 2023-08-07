//
//  ApiDoorsModel.swift
//  HomeGuard
//
//  Created by sihtmark on 07.08.2023.
//

import Foundation

struct APIDoorsModel: Codable {
    let success: Bool
    let data: [Door]
}

struct Door: Codable {
    let name: String
    let room: String?
    let id: Int
    let favorites: Bool
    let snapshot: String?
}
