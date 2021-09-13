//
//  ViewController.swift
//  ScreenTapDetection
//
//  Created by UrataHiroki on 2021/09/09.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var detectionResultLabel: UILabel!
    
    var gradient = CAGradientLayer()
    var tapCount = 0
    var longTapCount = 0
    var swipeCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradient.frame = CGRect(x: self.view.frame.minX, y: self.view.frame.minY, width: self.view.frame.size.width, height: self.view.frame.size.height)
        
        let tapDetection = UITapGestureRecognizer(target: self, action: #selector(screenTap))
        view.addGestureRecognizer(tapDetection)
        
        let longtapDetection = UILongPressGestureRecognizer(target: self, action: #selector(screenLongTap))
        view.addGestureRecognizer(longtapDetection)
        
        //swipe 
        let downSwipeDetection = UISwipeGestureRecognizer(target: self, action: #selector(downScreenSwipe))
        downSwipeDetection.direction = .down
        view.addGestureRecognizer(downSwipeDetection)
        
        let leftSwipeDetection = UISwipeGestureRecognizer(target: self, action: #selector(leftScreenSwipe))
        leftSwipeDetection.direction = .left
        view.addGestureRecognizer(leftSwipeDetection)
        
        let rightSwipeDetection = UISwipeGestureRecognizer(target: self, action: #selector(rightScreenSwipe))
        rightSwipeDetection.direction = .right
        view.addGestureRecognizer(rightSwipeDetection)
        
        let upSwipeDetection = UISwipeGestureRecognizer(target: self, action: #selector(upScreenSwipe))
        upSwipeDetection.direction = .up
        view.addGestureRecognizer(upSwipeDetection)
        
        //self.view.isUserInteractionEnabled = false
        
    }


    @objc func screenTap(){
        
        if tapCount == 5{
            
            self.view.isUserInteractionEnabled = false
            
            
        }else{
            
            
            print("screenTap")
            tapCount += 1
            detectionResultLabel.text = "\(tapCount)回、画面をタップしました"
            
            gradient.colors = [
                
                UIColor(red: CGFloat.random(in: 0...255) / 255,
                        green:CGFloat.random(in:0...255) / 255,
                        blue: CGFloat.random(in: 0...255) / 255,
                        alpha: CGFloat.random(in: 0.0...1.0)).cgColor,
                UIColor(red: CGFloat.random(in: 0...255) / 255,
                        green:CGFloat.random(in: 0...255) / 255,
                        blue: CGFloat.random(in: 0...255) / 255,
                        alpha: CGFloat.random(in: 0.0...1.0)).cgColor
            ]
            
            gradient.startPoint = CGPoint(x: 0.5, y: 0.5)
            gradient.endPoint = CGPoint(x: 0.5, y: 0)
            self.view.layer.insertSublayer(gradient, at: 0)
        }
        
    }
        
    

    @objc func screenLongTap(){
        print("screenLongTap")
        longTapCount += 1
        detectionResultLabel.text = "\(longTapCount)回、画面をロングタップしました"
        
        gradient.colors = [

                        UIColor(red: CGFloat.random(in: 0...255) / 255,
                                green:CGFloat.random(in:0...255) / 255,
                                blue: CGFloat.random(in: 0...255) / 255,
                                alpha: CGFloat.random(in: 0.0...1.0)).cgColor,
                        UIColor(red: CGFloat.random(in: 0...255) / 255,
                                green:CGFloat.random(in: 0...255) / 255,
                                blue: CGFloat.random(in: 0...255) / 255,
                                alpha: CGFloat.random(in: 0.0...1.0)).cgColor
                    ]

                    gradient.startPoint = CGPoint(x: 0.5, y: 0.5)
                    gradient.endPoint = CGPoint(x: 0.5, y: 0)
                    self.view.layer.insertSublayer(gradient, at: 0)
        
    }
        
    
    @objc func downScreenSwipe(sender:UISwipeGestureRecognizer){
        
        swipeCount += 1
        detectionResultLabel.text = "\(swipeCount)回、画面をスワイプしました"
    }
    
    @objc func leftScreenSwipe(){
        
        swipeCount += 1
        detectionResultLabel.text = "\(swipeCount)回、画面をスワイプしました"
        
    }
    
    @objc func rightScreenSwipe(){
        
        swipeCount += 1
        detectionResultLabel.text = "\(swipeCount)回、画面をスワイプしました"
    }
    
    @objc func upScreenSwipe(){
        
        swipeCount += 1
        detectionResultLabel.text = "\(swipeCount)回、画面をスワイプしました"
    }
}

