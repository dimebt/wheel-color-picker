//
//  ViewController.swift
//  Animation_Test_02
//
//  Created by Dimitar Stefanovski on 11.28.2016.
//  Copyright © 2016 Dimitar Stefanovski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var colorView: UIView! {
        didSet{
            let dragBall = UIPanGestureRecognizer(target: self, action:#selector(dragBall(recognizer:)))
            self.colorView.addGestureRecognizer(dragBall)
        }
    }
    var frame:CGRect = CGRect(x: 100, y: 100, width: 40, height: 100)
    
    override func viewDidLoad() {
        colorView = UIView(frame: frame)
        colorView.layer.cornerRadius = 6.0
        colorView.backgroundColor = .red
        self.view.addSubview(colorView)
    }
    
    
    var midViewX = CGFloat()
    var midViewY = CGFloat()
    
    var circlePath2 = UIBezierPath()
    var shapeLayer2 = CAShapeLayer()
    
    var pathForAnimation = UIBezierPath()
    
    //ova razgledaj go
    func dragBall(recognizer: UIPanGestureRecognizer) {
        
        //let angleEarth: Double = 180
        //let angleEarthAfterCalculate: CGFloat = CGFloat(angleEarth*M_PI/180) - CGFloat(M_PI/2)
        //let earthX = midViewX + cos(angleEarthAfterCalculate)*200
        //let earthY = midViewY + sin(angleEarthAfterCalculate)*200
        
        //
        switch recognizer .state
        {
        case .began, .changed:
            let point = recognizer.location(in: self.view);
            let earthX = Double(point.x)
            let earthY = Double(point.y)
            print("x: (\(earthX))")
            print("y: (\(earthY))")
//            let midViewXDouble = Double(self.frame.midX)
//            let midViewYDouble = Double(self.frame.size.height + self.frame.size.height - (self.frame.size.height / 20))     //tuka pozicija y
//            let angleX = (earthX - midViewXDouble)
//            let angleY = (earthY - midViewYDouble)
//            //let angle = tan(angleY/angleX)
//            let angle = atan2(angleY, angleX)
//            let earthX2 = midViewXDouble + cos(angle) * Double(self.frame.size.height)
//            let earthY2 = midViewYDouble + sin(angle) * Double(self.frame.size.height)
            
            colorView.transform = CGAffineTransform(translationX: CGFloat(earthX), y: CGFloat(earthY))
            //let novoKvadratcePozicija = CGRect(x: CGFloat(earthX2), y: CGFloat(earthY2 - 60), width: 40, height: 100)
            //kvadratce = UIBezierPath(roundedRect: novoKvadratcePozicija, cornerRadius: cornerRadius)
            //circlePath2 = UIBezierPath(arcCenter: CGPoint(x: earthX2,y: earthY2), radius: CGFloat(10), startAngle: CGFloat(0), endAngle:CGFloat(M_PI * 2), clockwise: true)
            //circlePath2 = colorView.layer
            //shapeLayer2.path = circlePath2.cgPath
            
//        case .ended:
//            print("ended")
//            //gi zemam location X i Y mu dodavam na X + nekoj broj da znaj deka treba da tera uste malce so animacija pa da zastani
//            //            UIView.animate(withDuration: 2.0, animations: {
//            //                {
//            //                    self.transform = CGAffineTransform(
//            //                }
//            //            })
//            
//            
//            let point = recognizer.location(in: self.view);
//            let earthX = Double(point.x)
//            let earthY = Double(point.y)
//            let midViewXDouble = Double(midViewX)
//            let midViewYDouble = Double(self.frame.size.height + self.frame.size.height - (self.frame.size.height / 20))     //tuka pozicija y
//            let angleX = (earthX - midViewXDouble)
//            let angleY = (earthY - midViewYDouble)
//            //let angle = tan(angleY/angleX)
//            let angle = atan2(angleY, angleX)
//            let earthX2 = midViewXDouble + cos(angle) * Double(self.frame.size.height)
//            let earthY2 = midViewYDouble + sin(angle) * Double(self.frame.size.height)
//            pathForAnimation = UIBezierPath(arcCenter: CGPoint(x: midViewXDouble,y: midViewYDouble), radius: self.frame.size.height, startAngle: CGFloat(0), endAngle:CGFloat(M_PI * 2), clockwise: true)
//            print("x: (\(midViewXDouble))")
//            print("y: (\(midViewYDouble))")
//            print("radius: (\(self.frame.size.height))")
//            // da se najdi pocetok UIbezierPath i kraj, za da ne vrti vo krug
//            
//            let animation = CAKeyframeAnimation(keyPath: "position");
//            animation.duration = 10
//            animation.repeatCount = 2
//            animation.path = pathForAnimation.cgPath
//            animation.rotationMode = kCAAnimationRotateAuto
//            
//            
//            self.colorView.layer.add(animation, forKey: nil)
            
        default : break
        }
    }
    


}

