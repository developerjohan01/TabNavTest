//
//  SecondViewController.swift
//  TabNavTest
//
//  Created by Johan Nilsson on 2017/05/28.
//  Copyright © 2017 Johan Nilsson. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UINavigationBarDelegate, UITabBarDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("2")

        // Do any additional setup after loading the view.
        
    }
    
    @IBOutlet weak var rightButtonOutlet: UIBarButtonItem!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.title = self.navigationItem.title
        self.tabBarController?.navigationItem.rightBarButtonItems = self.navigationItem.rightBarButtonItems
//        self.tabBarController?.navigationItem.rightBarButtonItem = rightButtonOutlet //This is the IBOutlet variable that you previously added
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
