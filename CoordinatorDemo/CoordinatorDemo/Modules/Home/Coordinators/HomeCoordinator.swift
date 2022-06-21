//
//  HomeCoordinator.swift
//  CoordinatorDemo
//
//  Created by Rana Ijaz Ahmad on 21/06/2022.
//

import Foundation
import UIKit

class HomeCoordinator : Coordinator {
    
    weak var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    func start() {
        //
    }
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
}
