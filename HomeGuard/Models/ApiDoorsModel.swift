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
    var name: String { get }
    var room: String? { get }
    var id: Int { get }
    var favorites: Bool { get }
    var snapshot: String? { get }
}

struct Door: Codable {
    let name: String
    let room: String?
    let id: Int
    let favorites: Bool
    let snapshot: String?
}
