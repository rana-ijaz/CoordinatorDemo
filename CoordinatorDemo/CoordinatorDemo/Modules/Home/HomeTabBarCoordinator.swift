//
//  HomeTabBarCoordinator.swift
//  CoordinatorDemo
//
//  Created by Rana Ijaz Ahmad on 21/06/2022.
//

import Foundation
import UIKit

class HomeTabBarCoordinator : NSObject, Coordinator {
    
    weak var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    var tabBarController: UITabBarController
    
    func start() {
        print("HomeTabBarCoordinator start")
        //goToHomePage()
        initializeHomeTabBar()
    }
    
    let storyboard = UIStoryboard.init(name: "Main", bundle: .main)
    
    func initializeHomeTabBar(){
        let tabbarControllerMain = storyboard.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
        
        // Instantiate all related coordinators and views also dependecies like VM or API Services.
        // We want each section has their own navigation controller, rather than app wide view controller.
        let homeCoordinator = HomeCoordinator.init(navigationController: UINavigationController())
        // we want to home coordinator connected to the App Coordinator, because the HomeTabbar coordinator only serves as a container.
        homeCoordinator.parentCoordinator = parentCoordinator
        
        
        /// Set delegate for UITabBarController
        tabBarController.delegate = self
        /// Assign page's controllers
        //tabBarController.setViewControllers(tabbarControllerMain.viewControllers, animated: true)
        tabBarController = tabbarControllerMain
        /// Let set index
        tabBarController.selectedIndex = 0 //TabBarPage.ready.pageOrderNumber()
        /// Styling
        tabBarController.tabBar.isTranslucent = true
        
        /// In this step, we attach tabBarController to navigation controller associated with this coordanator
        navigationController.viewControllers = [tabBarController]
        
    }
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
        self.tabBarController = .init()
    }
    
    func goToHomePage(){
        let homeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        let homeViewModel = HomeViewModel.init()
        //homeViewModel.appCoordinator = self
        
        homeViewController.viewModel = homeViewModel
        
        navigationController.pushViewController(homeViewController, animated: true)
    }
    
    deinit {
        print("AuthCoordinator Deinit")
    }
    
}

// MARK: - UITabBarControllerDelegate
extension HomeTabBarCoordinator: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController,
                          didSelect viewController: UIViewController) {
        // Some implementation
    }
}
