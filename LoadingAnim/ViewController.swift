//
//  ViewController.swift
//  LoadingAnim
//
//  Created by lianli on 16/12/7.
//  Copyright © 2016年 lianli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func changeProgress(_ sender: UISlider) {
        
        loadingView.progress = CGFloat(sender.value)
        loadingView.setNeedsDisplay()
    }
    @IBOutlet weak var loadingView: LoadingView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

