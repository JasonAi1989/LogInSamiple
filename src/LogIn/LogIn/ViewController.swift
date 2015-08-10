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
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    
    //custom
    let spinner = UIActivityIndicatorView(activityIndicatorStyle: .WhiteLarge)
    var loginPosition = CGPoint.zeroPoint
    let errorMessage = UIImageView(image: UIImage(named: "Error"))
    
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
        
        // adjust place holder text
        let userPaddingView = UIView(frame: CGRectMake(0, 0, 40, self.username.frame.height))
        self.username.leftView = userPaddingView
        self.username.leftViewMode = UITextFieldViewMode.Always
        
        let passwordPaddingView = UIView(frame: CGRectMake(0, 0, 40, self.password.frame.height))
        self.password.leftView = passwordPaddingView
        self.password.leftViewMode = UITextFieldViewMode.Always
        
        //text field icon
        var userImageView = UIImageView(image: UIImage(named: "user"))
        userImageView.frame.origin = CGPoint(x:11, y:6)
        self.username.addSubview(userImageView)
        
        var passwordImageView = UIImageView(image: UIImage(named: "key"))
        passwordImageView.frame.origin = CGPoint(x:10, y:6)
        self.password.addSubview(passwordImageView)
        
        self.username.center.x -= self.view.bounds.width
        self.password.center.x -= self.view.bounds.width
        
        self.loginPosition = self.loginButton.center
        self.loginButton.center.x -= self.view.bounds.width
        
        self.view.addSubview(self.errorMessage)
        self.errorMessage.center = self.loginPosition
        self.errorMessage.hidden = true
        
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
        
        UIView.animateWithDuration(4.5, delay: 0.4, usingSpringWithDamping: 0.1, initialSpringVelocity: 1, options: nil, animations: {
            self.dot.center.x += self.view.bounds.width/3
            }, completion: nil)
 
        UIView.animateWithDuration(0.3, delay: 0.5, options: .CurveEaseOut, animations: {
            self.username.center.x += self.view.bounds.width
            }, completion: nil)
        
        UIView.animateWithDuration(0.3, delay: 0.6, options: .CurveEaseOut , animations: {
            self.password.center.x += self.view.bounds.width
            }, completion: nil)
        
        UIView.animateWithDuration(0.3, delay: 0.7, options: .CurveEaseOut , animations: {
            self.loginButton.center.x += self.view.bounds.width
            }, completion: nil)
    }

    @IBAction func loginTapped(sender: AnyObject) {
        //reset the button position
        UIView.animateWithDuration(0.3, animations: {
            self.loginButton.center = self.loginPosition
        })
        
        //reset the error message
        UIView.transitionWithView(self.errorMessage, duration: 0.3, options: .TransitionFlipFromBottom, animations: {
                self.errorMessage.hidden = true
        }, completion: nil)
        
        
        //spinner
        self.loginButton.addSubview(self.spinner)
        self.spinner.frame.origin = CGPointMake(12, 4)
        self.spinner.startAnimating()
        
        //button shake
        self.loginButton.center.x -= 30
        UIView.animateWithDuration(1.5, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, options: nil, animations: {
            self.loginButton.center.x += 30
            }, completion: { _ in
                UIView.animateWithDuration(0.3, animations: {
                    self.loginButton.center.y += 80
                    self.spinner.removeFromSuperview()
                    }, completion: { _ in
                        UIView.transitionWithView(self.errorMessage, duration: 0.3, options: .TransitionFlipFromTop | .CurveEaseOut, animations: {
                                self.errorMessage.hidden = false
                        }, completion: nil)
                })
        })
    }
    
    
}

