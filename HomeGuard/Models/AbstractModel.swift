//
//  AbstractModel.swift
//  HomeGuard
//
//  Created by sihtmark on 23.08.2023.
//

import UIKit

protocol AbstractModelProtocol {
    var name: String { get }
    var room: String? { get }
    var id: Int { get }
    var favorites: Bool { get }
    var snapshot: UIImage? { get }
}
