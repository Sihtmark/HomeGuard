//
//  CameraModel.swift
//  HomeGuard
//
//  Created by sihtmark on 07.08.2023.
//

import UIKit

protocol CameraModelProtocol {
    var rec: Bool { get }
    var snapshot: UIImage? { get }

    init(managedObject: RealmCamera)
}

struct CameraModel: CameraModelProtocol, ObjectModelProtocol {
    let name: String
    let snapshot: UIImage?
    let room: String?
    let id: Int
    var favorites, rec: Bool
}

extension CameraModel {
    init(managedObject: RealmCamera) {
        name = managedObject.name
        snapshot = managedObject.snapshot!.isEmpty ? nil : UIImage(data: managedObject.snapshot!)
        room = managedObject.room
        id = managedObject.id
        favorites = managedObject.favorites
        rec = managedObject.rec
    }
}
