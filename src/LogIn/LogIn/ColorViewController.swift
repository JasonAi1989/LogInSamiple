//
//  ColorViewController.swift
//  LogIn
//
//  Created by jason on 15/8/13.
//  Copyright (c) 2015年 jason. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var blueSquare: UIView!
    @IBOutlet weak var name: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(1, animations: {
            self.blueSquare.backgroundColor = UIColor.redColor()
            self.name.textColor = UIColor.blueColor()
        })
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
