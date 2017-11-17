//
//  PageTwoViewController.swift
//  Botones_Fundamentos
//
//  Created by León Felipe Guevara Chávez on 2017-11-14.
//  Copyright © 2017 León Felipe Guevara Chávez. All rights reserved.
//

import UIKit

class PageTwoViewController: UIViewController {

    @IBOutlet weak var pageLabel: UILabel!
    var myNumber : Int = 0
    // Comentario
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pageLabel.text = "Page Two - Random number: \(myNumber)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
