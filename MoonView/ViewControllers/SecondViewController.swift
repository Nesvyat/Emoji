//
//  SecondViewController.swift
//  MoonView
//
//  Created by MacBook Pro on 21.08.2022.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var nameLabel: UILabel!
    
    var user: User!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController
        else { return }
        guard let viewControllers = tabBarController.viewControllers
        else { return }
        
        for viewController in viewControllers {
            if let thirdVC = viewController as? ThirdViewController {
                thirdVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                guard let fourthVC = navigationVC.topViewController as? FourthViewController else { return }
                fourthVC.user = user
            }
        }
    }
            
        
        
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.name
        
    

    }
    @IBAction func nextButton() {
        performSegue(withIdentifier: "showThirdScreen", sender: nil)
    }
}
