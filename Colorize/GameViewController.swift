//
//  GameViewController.swift
//  Colorize
//
//  Created by Zuokun Yu on 2/21/15.
//  Copyright (c) 2015 MeowStudios. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    @IBOutlet weak internal var redSlider: UISlider!
    @IBOutlet weak internal var greenSlider: UISlider!
    @IBOutlet weak internal var blueSlider: UISlider!
    @IBOutlet weak internal var color: UILabel!
    internal var targetRed = CGFloat();
    internal var targetBlue = CGFloat();
    internal var targetGreen = CGFloat();
    internal var red = CGFloat();
    internal var blue = CGFloat();
    internal var green = CGFloat();
    internal var score = Float(0.0);
    @IBOutlet weak var scoreButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        targetRed = CGFloat(Float(arc4random()) / Float(UINT32_MAX));
        targetBlue = CGFloat(Float(arc4random()) / Float(UINT32_MAX));
        targetGreen = CGFloat(Float(arc4random()) / Float(UINT32_MAX));
        
        color.textColor = UIColor(red: targetRed, green: targetGreen, blue: targetBlue, alpha: 1.0);
        
        red = CGFloat(Float(arc4random()) / Float(UINT32_MAX));
        blue = CGFloat(Float(arc4random()) / Float(UINT32_MAX));
        green = CGFloat(Float(arc4random()) / Float(UINT32_MAX));
        
        color.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0);
        
        redSlider.value = Float(red);
        greenSlider.value = Float(green);
        blueSlider.value = Float(blue);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeRColor(sender: UISlider) {
        //let rVal = redSlider.value;
        //NSLog("%d", rVal);
        //color.text = "\(rVal)";
        color.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0);
    }
    @IBAction func changeGColor(sender: UISlider) {
        color.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0);
    }

    @IBAction func changeBColor(sender: UISlider) {
        color.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0);
    }
    @IBAction func calcScore(sender: UIButton) {
        score = abs(Float(targetRed) - redSlider.value) * abs(Float(targetGreen) - greenSlider.value) * abs(Float(targetBlue) - blueSlider.value);
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let controller = segue.destinationViewController as ScoreViewController
        controller.score = score;
    }
    

}
