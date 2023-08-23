//
//  AbstractModel.swift
//  HomeGuard
//
//  Created by sihtmark on 23.08.2023.
//

import UIKit

protocol ObjectModelProtocol {
    var name: String { get }
    var room: String? { get }
    var id: Int { get }
    var favorites: Bool { get }
}
