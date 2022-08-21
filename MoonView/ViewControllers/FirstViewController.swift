//
//  FirstViewController.swift
//  MoonView
//
//  Created by MacBook Pro on 21.08.2022.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet var faceLabel: UILabel!
    
    private let user = User.returningModel()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
            guard
                let secondVC = navigationVC.topViewController as? SecondViewController else { return }
        secondVC.user = user
        }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
       
    }
    

   
    @IBAction func firstButton() {
        performSegue(withIdentifier: "showSecondScreen", sender: nil)
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        faceLabel.text = "🙋‍♂️"
}
}
