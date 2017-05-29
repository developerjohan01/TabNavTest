//
//  ThirdViewController.swift
//  TabNavTest
//
//  Created by Johan Nilsson on 2017/05/28.
//  Copyright © 2017 Johan Nilsson. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITabBarDelegate, UINavigationBarDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("3")

        let navItem = navigationItem
        print(navItem)
        print(navItem.backBarButtonItem?.title ?? "viewDidLoad: No back button item")
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.title = self.navigationItem.title
        self.tabBarController?.navigationItem.rightBarButtonItems = self.navigationItem.rightBarButtonItems
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(navigationItem.title ?? "viewDidAppear: No title")
        print(navigationItem.backBarButtonItem?.title ?? "viewDidAppear: No back button item")
        print(navigationItem.rightBarButtonItems?[0].title ?? "viewDidAppear: No right button item")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
