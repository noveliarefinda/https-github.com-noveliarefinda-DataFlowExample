//
//  HomeViewController.swift
//  DataFlowExample
//
//  Created by Novelia Refinda on 16/05/19.
//  Copyright © 2019 Novelia Refinda. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    //variable penampung
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set label ke penampungnya
        nameLabel.text = name
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
