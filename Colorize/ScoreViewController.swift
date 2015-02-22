//
//  ScoreViewController.swift
//  Colorize
//
//  Created by Zuokun Yu on 2/22/15.
//  Copyright (c) 2015 MeowStudios. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {
    @IBOutlet weak var scoreField: UITextField!
    var score = Float(0.0);
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scoreField.text = "\(score)";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    
    }
    */

}
