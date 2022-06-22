//
//  HomeViewModel.swift
//  CoordinatorDemo
//
//  Created by Rana Ijaz Ahmad on 21/06/2022.
//

import Foundation

class HomeViewModel{
    
    var doctors: [Doctor] = []
    var categories: [Category] = []
    
    var homeResponse: HomeResponse!{
        didSet{
            doctors = homeResponse.doctors ?? []
            categories = homeResponse.categories ?? []
            self.bindViewModelToController()
        }
    }
    var bindViewModelToController : (() -> ()) = {}
    
    var homeService: HomeService
    
    init(repo : HomeService = HomeService()) {
        homeService = HomeService()
    }
    
    func getHomeData() {
        self.homeService.getRequiredService(complete: {[weak self] (response) in
            self?.homeResponse = response
        }) { (networkError) in
            if let error = networkError {
                print("Error handling: \(error)")
            }
        }
    }

}
