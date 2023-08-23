//
//  ApiDoorsModel.swift
//  HomeGuard
//
//  Created by sihtmark on 07.08.2023.
//

import UIKit

protocol APIDoorsModelProtocol {
    var success: Bool { get }
    var data: [Door] { get }
}

struct APIDoorsModel: Codable, APIDoorsModelProtocol {
    let success: Bool
    let data: [Door]
}

protocol DoorProtocol {
    var snapshot: String? { get }
}

struct Door: Codable, DoorProtocol, ObjectModelProtocol {
    let name: String
    let room: String?
    let id: Int
    let favorites: Bool
    let snapshot: String?
}
