//
//  HomeService.swift
//  CoordinatorDemo
//
//  Created by Rana Ijaz Ahmad on 22/06/2022.
//

import Foundation

typealias onFailure = (NetworkError?) -> Void

class HomeService {
    
    func getRequiredService(complete :@escaping (HomeResponse) -> Void, failure:@escaping onFailure) {
        
        let isNetworkSuccess = true
        
        // Add sample data to doctors
        let doctorBO1 = Doctor(id: 1, name: "Dr Jane", picURL: "Dr-Jane-F", speciality: "General Specialist", rating: 4.9, perHourCharges: 50)
        let doctorBO2 = Doctor(id: 2, name: "Dr Jane", picURL: "Dr-Jane-M", speciality: "General Specialist", rating: 4.5, perHourCharges: 45)
        var doctorsList: [Doctor] = []
        doctorsList.append(doctorBO1)
        doctorsList.append(doctorBO2)
        
        // Add sample data to categories
        let categoryBO1 = Category(id: 1, name: "General", imageURL: "general")
        let categoryBO2 = Category(id: 2, name: "Cardialogy", imageURL: "cardialogy")
        let categoryBO3 = Category(id: 3, name: "Pull", imageURL: "pull")
        var categoriesList: [Category] = []
        categoriesList.append(categoryBO1)
        categoriesList.append(categoryBO2)
        categoriesList.append(categoryBO3)
        
        let homeResponseBO = HomeResponse(code: 200, message: "Success", doctors: doctorsList, categories: categoriesList)
        
        if isNetworkSuccess{
            complete(homeResponseBO)
        }
        else{
            let error = NetworkError() // If we pass False then this error condition will execute
            failure(error)
        }
    }
}
