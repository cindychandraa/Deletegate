//
//  HomeViewController.swift
//  DataFlowExample
//
//  Created by Cindy Chandra on 16/05/19.
//  Copyright © 2019 Cindy Chandra. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
