//
//  Coordinator.swift
//  CoordinatorDemo
//
//  Created by Rana Ijaz Ahmad on 20/06/2022.
//

import Foundation
import UIKit

protocol Coordinator : AnyObject {
    var parentCoordinator: Coordinator? { get set }
        var children: [Coordinator] { get set }
        var navigationController : UINavigationController { get set }
        
        func start()
}
