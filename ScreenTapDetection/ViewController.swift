//
//  ViewController.swift
//  ScreenTapDetection
//
//  Created by UrataHiroki on 2021/09/09.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var DetectionResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapDetection = UITapGestureRecognizer(target: self, action: #selector(screenTap))
        view.addGestureRecognizer(tapDetection)
        
    }

    @objc func screenTap(){
        
        
    }

}

