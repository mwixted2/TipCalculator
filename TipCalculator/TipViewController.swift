//
//  TipViewController.swift
//  TipCalculator
//
//  Created by Morgan Wixted on 12/13/15.
//  Copyright © 2015 Morgan Wixted. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    override func viewWillDisappear(animated: Bool){
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Tip Calculator"

        // Do any additional setup after loading the view.
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
