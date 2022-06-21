//
//  NavigationController.swift
//  CoordinatorDemo
//
//  Created by Rana Ijaz Ahmad on 20/06/2022.
//

import UIKit

enum NavigationBarStyle {
    case Default
    case Transparent
    case Black
}

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.navigationBar.backgroundColor = .black
        //self.navigationBar.barTintColor =  .white
    }
    
    func changeAppearance(toStyle: NavigationBarStyle, titleSize: CGFloat? = nil) {
        
    }
}
