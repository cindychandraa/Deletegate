//
//  ViewController.swift
//  DataFlowExample
//
//  Created by Cindy Chandra on 16/05/19.
//  Copyright © 2019 Cindy Chandra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldLabel1: UITextField!
    @IBOutlet weak var textFieldLabel2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additioenal setup after loading the view.
        textFieldLabel1.delegate = self
        textFieldLabel2.delegate = self
    }
    @IBAction func register(_ sender: Any) {
        performSegue(withIdentifier: "goToHome", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? HomeViewController {
            destination.name = textFieldLabel1.text
        }
    
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == textFieldLabel1{
            textFieldLabel2.becomeFirstResponder()
        } else if textField == textFieldLabel2 {
        textField.resignFirstResponder()
    }
        return true
    }

}
