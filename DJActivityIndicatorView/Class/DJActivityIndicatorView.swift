//
//  DJActivityIndicatorView.swift
//  DJActivityIndicatorView
//
//  Created by 季勤强 on 16/9/28.
//  Copyright © 2016年 季勤强. All rights reserved.
//

import UIKit

public enum DJActivityIndicatorType {
    case NineDots
    case TriplePulse
    case FiveDots
    case RotatingSquare
    case DoubleBounce
    case BallPulse
    case BallRotateClip
    case BallClipRotatePulse
    case BallRotateMultiple
    case BallRotate
}

public class DJActivityIndicatorView: UIView {
    
    struct Constant {
        static let defaultSize: CGFloat = 40.0
    }
    
    var animationLayer: CALayer = CALayer()
    var type: DJActivityIndicatorType = .NineDots
    var color: UIColor = whiteColor
    var size: CGSize = CGSizeMake(Constant.defaultSize, Constant.defaultSize)
    var animating = false
    
    required public init(type: DJActivityIndicatorType, tintColor: UIColor = whiteColor, size: CGFloat = Constant.defaultSize) {
        super.init(frame: defaultFrame)
        self.type = type
        self.color = tintColor
        self.size = CGSizeMake(size, size)
        self.hidden = true
        layer.addSublayer(animationLayer)
    }
    
    public func startAnimation() {
        if animationLayer.sublayers == nil {
            setup()
        }
        self.hidden = false
        animationLayer.speed = 1.0
        animating = true
    }
    
    public func stopAnimation() {
        self.hidden = true
        animationLayer.speed = 0.0
        animating = false
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        animationLayer.frame = bounds
        
        if animating {
            stopAnimation()
            setup()
            startAnimation()
        }
    }
    
    private func setup() {
        animationLayer.sublayers = nil
        
        let subLayer = getLayer(type)
        subLayer.setupAnimation(animationLayer, size: size, tintColor: color)
        animationLayer.speed = 0.0
    }
    
    private func getLayer(type: DJActivityIndicatorType)-> DJAnimationProtocol {
        switch type {
        case .NineDots: return DJActivityIndicatorNineDots()
        case .TriplePulse: return DJActivityIndicatorTriplePulse()
        case .FiveDots: return DJActivityIndicatorFiveDots()
        case .RotatingSquare: return DJActivityIndicatorRotatingSquare()
        case .DoubleBounce: return DJActivityIndicatorDoubleBounce()
        case .BallPulse: return DJActivityIndicatorBallPulse()
        case .BallRotateClip: return DJActivityIndicatorBallRotateClip()
        case .BallClipRotatePulse: return DJActivityIndicatorBallClipRotatePulse()
        case .BallRotateMultiple: return DJActivityIndicatorBallRotateMultiple()
        case .BallRotate: return DJActivityIndicatorBallRotate()
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
