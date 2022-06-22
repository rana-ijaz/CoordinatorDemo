//
//  Doctor.swift
//  CoordinatorDemo
//
//  Created by Rana Ijaz Ahmad on 22/06/2022.
//

import Foundation

struct Doctor: Codable {
    let id: Int?
    let name: String?
    var picURL: String?
    let speciality: String?
    var rating: Double?
    let perHourCharges: Double?
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case picURL = "pic_url"
        case speciality, rating, perHourCharges
    }
}
