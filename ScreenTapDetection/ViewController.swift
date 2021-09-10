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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradient.frame = CGRect(x: self.view.frame.minX, y: self.view.frame.minY, width: self.view.frame.size.width, height: self.view.frame.size.height)
        
        let tapDetection = UITapGestureRecognizer(target: self, action: #selector(screenTap))
        view.addGestureRecognizer(tapDetection)
        
        let longtapDetection = UILongPressGestureRecognizer(target: self, action: #selector(screenLongTap))
        view.addGestureRecognizer(longtapDetection)
        
    }

    @objc func screenTap(){
        
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

