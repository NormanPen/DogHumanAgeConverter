//
//  ViewController.swift
//  DogHumanAgeConverter
//
//  Created by Norman Pendzich on 09.04.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogAgeTextField: UITextField!
    
    @IBOutlet weak var humanAgeLabel: UILabel!
    
    @IBOutlet weak var convertButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        convertButton.layer.cornerRadius = 15
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func convertButtonDidTap(_ sender: UIButton) {
        let dogAge = Int(dogAgeTextField.text!) ?? 0
        
        if dogAge <= 20 {
            humanAgeLabel.text = "Dein Hund ist \(dogAge * 7) Menschenjahre alt."
            view.endEditing(true)
            
        } else {
            humanAgeLabel.text = "Bitte gebe ein realistisches Hundealter ein"
            view.endEditing(true)
        }
    }
    
    
    
    @IBAction func refreshButtonDidTap(_ sender: Any) {
        
        dogAgeTextField.text = ""
        humanAgeLabel.text = "Bitte gebe die Anzahl der Hundejahre ein"
        view.endEditing(true)
    }
    
    
    
    
}

