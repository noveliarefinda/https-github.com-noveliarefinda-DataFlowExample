//
//  ViewController.swift
//  DataFlowExample
//
//  Created by Novelia Refinda on 16/05/19.
//  Copyright © 2019 Novelia Refinda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullnameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fullnameTextField.delegate = self
        phoneTextField.delegate = self 
    }
    
    @IBAction func RegisterUser(_ sender: Any) {
        performSegue(withIdentifier: "goToHome", sender: nil)
    }
    
// fungsi yg dijalan setelah performSegue, salah satu kegunannya adalah u/passing data
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // jika castingnya berhasil dan dpet homeviewcontrooller maka ..
        if let destination = segue.destination as? HomeViewController {
            // kita set nilai name di Homeviewcontroller ke textfield
            destination.name = fullnameTextField.text
        }
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    //kalo misal kita klik di keyboard return apa yg terjadi
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == fullnameTextField {
            phoneTextField.becomeFirstResponder()
        } else if textField == phoneTextField {
            textField.resignFirstResponder()
        }
        
        return true
    }
}
