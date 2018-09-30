//
//  ViewController.swift
//  ios-recruiting-brazil
//
//  Created by André Vieira on 28/09/18.
//  Copyright © 2018 André Vieira. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let popularGrid = PopularMoviesGridView()
        let favorite = FavoriteMoviesView()
        
        favorite.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag:  1)
        popularGrid.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag:  0)
        let controllers = [popularGrid, favorite]
        self.viewControllers = controllers
        self.viewControllers = controllers.map {
            UINavigationController(rootViewController: $0)
        }
    }
}