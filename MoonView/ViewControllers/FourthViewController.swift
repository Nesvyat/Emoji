//
//  FourthViewController.swift
//  MoonView
//
//  Created by MacBook Pro on 21.08.2022.
//

import UIKit

class FourthViewController: UIViewController {
    @IBOutlet var fullInfoLabel: UILabel!
   
    
    var user: User!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullInfoLabel.text = user.fullName
       
    }
    

   

}
