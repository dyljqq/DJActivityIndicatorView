//
//  ViewController.swift
//  DJActivityIndicatorView
//
//  Created by 季勤强 on 16/9/28.
//  Copyright © 2016年 季勤强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = RGB(red: 237, green: 85, blue: 101)
        
        let margin: CGFloat = 20
        let types: [DJActivityIndicatorType] = [.NineDots, .TriplePulse, .FiveDots, .RotatingSquare, .DoubleBounce,
                                                .BallPulse, .BallRotateClip, .BallClipRotatePulse, .BallRotateMultiple, .BallRotate]
        let width = (view.bounds.width - margin * 2) / 5.0
        for (index, type) in types.enumerate() {
            let animationView = DJActivityIndicatorView(type: type)
            animationView.frame = CGRectMake(margin + width * (CGFloat(index) % 5), margin + width * (CGFloat(index / 5)), width, width)
            view.addSubview(animationView)
            animationView.startAnimation()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

