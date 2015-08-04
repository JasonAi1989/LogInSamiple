//
//  ViewController.swift
//  LogIn
//
//  Created by jason on 15/8/3.
//  Copyright (c) 2015年 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Bubble3: UIImageView!
    @IBOutlet weak var Bubble4: UIImageView!
    @IBOutlet weak var Bubble2: UIImageView!
    @IBOutlet weak var Bubble1: UIImageView!
    @IBOutlet weak var Bubble5: UIImageView!
    @IBOutlet weak var dot: UIImageView!
    @IBOutlet weak var logo: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.Bubble1.transform = CGAffineTransformMakeScale(0, 0)
        self.Bubble2.transform = CGAffineTransformMakeScale(0, 0)
        self.Bubble3.transform = CGAffineTransformMakeScale(0, 0)
        self.Bubble4.transform = CGAffineTransformMakeScale(0, 0)
        self.Bubble5.transform = CGAffineTransformMakeScale(0, 0)

        //if those code is not available, please cancle 'autoLayout' in storyboard file
        self.logo.center.x -= self.view.bounds.width
        self.dot.center.x -= self.view.bounds.width/3
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: nil, animations: {
            self.Bubble1.transform = CGAffineTransformMakeScale(1, 1)
            self.Bubble2.transform = CGAffineTransformMakeScale(1, 1)

        }, completion: nil)
     
        UIView.animateWithDuration(0.3, delay: 0.1, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: nil, animations: {
            self.Bubble3.transform = CGAffineTransformMakeScale(1, 1)
            self.Bubble4.transform = CGAffineTransformMakeScale(1, 1)
            }, completion: nil)
        
        UIView.animateWithDuration(0.3, delay: 0.2, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: nil, animations: {
            self.Bubble5.transform = CGAffineTransformMakeScale(1, 1)
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.3, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.6, options: nil, animations: {
            self.logo.center.x += self.view.bounds.width
            }, completion: nil)
        
        UIView.animateWithDuration(5, delay: 0.4, usingSpringWithDamping: 0.1, initialSpringVelocity: 1, options: nil, animations: {
            self.dot.center.x += self.view.bounds.width/3
            }, completion: nil)
 
    }

}

