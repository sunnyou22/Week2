//
//  ViewController.swift
//  Week2
//
//  Created by 방선우 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cyanView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cyanView.layer.cornerRadius = 20
//        cyanView.clipsToBounds = true
        
        cyanView.layer.maskedCorners = [.layerMaxXMinYCorner]
    }

    @IBAction func slidertest(_ sender: UISlider) {
        print("이렇게 프린트로 이벤트가 발생했는지 확인하는 것도 좋음")
    }
    
    @IBAction func Byekeyboard(_ sender: UITextField) {
    }
}

