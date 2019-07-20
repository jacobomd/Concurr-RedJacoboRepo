//
//  TabBarController.swift
//  Eh-Ho
//
//  Created by Ignacio Garcia Sainz on 16/07/2019.
//  Copyright © 2019 KeepCoding. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    let categoriesController: UIViewController
    
    init(categoriesController: UIViewController) {
        self.categoriesController = categoriesController
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Not supported")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureTabBar()
    }
    
    private func configureTabBar() {
        let categoriesController = self.categoriesController
        categoriesController.tabBarItem = UITabBarItem(title: "Topics", image: nil, selectedImage: nil)
        
        
        self.tabBar.barTintColor = .white
        
        let controllers = [categoriesController]
        self.viewControllers = controllers.map { UINavigationController(rootViewController: $0) }
        //self.viewControllers = controllers.map { $0 }


    }

}
