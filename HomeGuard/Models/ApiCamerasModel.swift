//
//  ApiCamerasModel.swift
//  HomeGuard
//
//  Created by sihtmark on 07.08.2023.
//

import UIKit

protocol ApiCamerasModelProtocol {
    var success: Bool { get }
    var data: RoomsAndCameras { get }
}

struct ApiCamerasModel: Codable, ApiCamerasModelProtocol {
    let success: Bool
    let data: RoomsAndCameras
}

protocol RoomsAndCamerasProtocol {
    var room: [String] { get }
    var cameras: [Camera] { get }
}

struct RoomsAndCameras: Codable, RoomsAndCamerasProtocol {
    let room: [String]
    let cameras: [Camera]
}

protocol CameraProtocol {
    var name: String { get }
    var snapshot: String { get }
    var room: String? { get }
    var id: Int { get }
    var favorites: Bool { get }
    var rec: Bool { get }
}

struct Camera: Codable, CameraProtocol {
    let name: String
    let snapshot: String
    let room: String?
    let id: Int
    let favorites, rec: Bool
}
