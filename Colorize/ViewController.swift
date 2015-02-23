//
//  ViewController.swift
//  Colorize
//
//  Created by Zuokun Yu on 2/21/15.
//  Copyright (c) 2015 MeowStudios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorize: UITextField!
    var mutateColor = NSMutableAttributedString(string: "Colorize")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for (var idx = 0; idx < mutateColor.length; idx++) {
            var red = CGFloat(Float(arc4random()) / Float(UINT32_MAX))
            var blue = CGFloat(Float(arc4random()) / Float(UINT32_MAX))
            var green = CGFloat(Float(arc4random()) / Float(UINT32_MAX))
            mutateColor.addAttribute(NSForegroundColorAttributeName, value: UIColor(red: red, green: green, blue: blue, alpha: 1.0), range: NSRange(location: idx, length: 1))
        }
        colorize.attributedText = mutateColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

