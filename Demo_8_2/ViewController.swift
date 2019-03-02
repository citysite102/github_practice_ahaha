//
//  ViewController.swift
//  Demo_8_2
//
//  Created by YU CHONKAO on 2019/3/2.
//  Copyright © 2019年 Jkos. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    var demoView: UIView!
    var demoView2: UIView!
    var pushFirst: UIView!
    var kaneView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        demoView = UIView()
        demoView.backgroundColor = UIColor.red
       
        view.addSubview(demoView)
        demoView.snp.makeConstraints { (make) in
            make.center.equalTo(view.center)
            make.width.height.equalTo(100)
        }
        
        
//        startAnimation()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        startAnimation()
//        DispatchQueue.main.asyncAfter(deadline: .now()) {
            self.startAnimation()
//        }
    }


    func startAnimation() {
        let basicAnimation_1 = CABasicAnimation(keyPath: "position")
        basicAnimation_1.toValue = CGPoint(x: 300, y: 650)
//        basicAnimation_1.isRemovedOnCompletion = false
//        basicAnimation_1.fillMode = .forwards
//        basicAnimation_1.repeatCount = 5
//        basicAnimation_1.autoreverses = true
//        basicAnimation_1.speed = 2
//        basicAnimation_1.duration = 5
//        demoView.layer.add(basicAnimation_1, forKey: nil)

        let basicAnimation = CABasicAnimation(keyPath: "transform.rotation.y")
        basicAnimation.toValue = Double.pi*2
//        basicAnimation.isRemovedOnCompletion = false
//        basicAnimation.fillMode = .forwards
//        basicAnimation.duration = 5
//        demoView.layer.add(basicAnimation, forKey: nil)
        
        let animationGroup = CAAnimationGroup()
        animationGroup.duration = 5
//        animationGroup.fillMode
        animationGroup.animations = [basicAnimation_1, basicAnimation]
        demoView.layer.add(animationGroup, forKey: nil)

        
        
//        let keyframeAnimation = CAKeyframeAnimation(keyPath:"position")
//        keyframeAnimation.values = [-100, 10, 250, 0]
//        keyframeAnimation.keyTimes = [0, 0.1, 0.2, 0.9, 1.0]
//        keyframeAnimation.duration = 3
//        keyframeAnimation.repeatCount = .infinity
//        keyframeAnimation.isAdditive = true
//        keyframeAnimation.isRemovedOnCompletion = false
//        keyframeAnimation.fillMode = .forwards
//        keyframeAnimation.rotationMode = CAAnimationRotationMode.rotateAuto
//        keyframeAnimation.calculationMode = .paced
        
        
//        let demoCGPath = UIBezierPath()
//        demoCGPath.move(to: CGPoint(x: 0, y: 0))
//        demoCGPath.addLine(to: CGPoint(x: 350, y: 0))
//        demoCGPath.addLine(to: CGPoint(x: 100, y: 100))
//        demoCGPath.addLine(to: CGPoint(x: 350, y: 100))
//        demoCGPath.close()
        
//        let demoPath = UIBezierPath(ovalIn: CGRect(x: 50, y: 50, width: 250, height: 400))
//        keyframeAnimation.path = demoPath.cgPath
        
        
//        demoView.layer.add(keyframeAnimation, forKey: nil)
    }
}

