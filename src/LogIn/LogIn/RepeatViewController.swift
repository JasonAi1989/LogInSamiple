//
//  RepeatViewController.swift
//  LogIn
//
//  Created by jason on 15/8/13.
//  Copyright (c) 2015年 jason. All rights reserved.
//

import UIKit

class RepeatViewController: UIViewController {

    @IBOutlet weak var blueSquare: UIView!
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var greenSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func repeat(){
        UIView.animateWithDuration(1, delay: 0, options: nil, animations: {
            self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
            }, completion: {(finished) -> Void in
                self.repeat()
        })
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        repeat()  //first repeat way
        
        //second repeat way, but just repeat the animation
        UIView.animateWithDuration(1, delay: 0, options: .Repeat, animations: {
            self.redSquare.center.x = self.view.bounds.width - self.redSquare.center.x
        }, completion: nil)
        
        //third repeat way based on the second way, now the square can be move forth and back
        UIView.animateWithDuration(1, delay: 0, options: .Repeat | .Autoreverse, animations: {
            self.greenSquare.center.x = self.view.bounds.width - self.greenSquare.center.x
            }, completion: nil)
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
