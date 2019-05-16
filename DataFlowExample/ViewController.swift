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
