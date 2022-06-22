//
//  Category.swift
//  CoordinatorDemo
//
//  Created by Rana Ijaz Ahmad on 22/06/2022.
//

import Foundation

struct Category: Codable {
    let id: Int?
    let name: String?
    var imageURL: String?
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case imageURL = "pic_url"
    }
}
