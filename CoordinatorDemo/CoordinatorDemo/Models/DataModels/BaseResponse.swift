//
//  BaseResponse.swift
//  CoordinatorDemo
//
//  Created by Rana Ijaz Ahmad on 22/06/2022.
//

struct HomeResponse: Decodable {
    let code: Int?
    let message: String?
    let doctors: [Doctor]?
    let categories: [Category]?
    
    enum CodingKeys: String, CodingKey {
        case code, message, doctors
        case categories
    }
}
