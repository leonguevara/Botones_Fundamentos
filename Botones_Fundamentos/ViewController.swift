//
//  ViewController.swift
//  Botones_Fundamentos
//
//  Created by León Felipe Guevara Chávez on 2017-11-7.
//  Copyright © 2017 León Felipe Guevara Chávez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myName: UITextField!
    var name : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func accionMiBoton(_ sender: Any) {
        if(mySwitch.isOn) {
            performSegue(withIdentifier: "pageTwo", sender: self)
        } else {
            performSegue(withIdentifier: "pageOne", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pageTwo" {
            let number = arc4random_uniform(100) + 1
            let nextView = segue.destination as! PageTwoViewController
            
            nextView.myNumber = Int(number)
        } else {
            if segue.identifier == "pageOne" {
                name = myName.text!
                let nextView = segue.destination as! PageOneViewController
                nextView.myName = self.name
            }
        }
    }
    
}

