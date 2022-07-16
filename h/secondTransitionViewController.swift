//
//  secondTransitionViewController.swift
//  h
//
//  Created by 방선우 on 2022/07/15.
//

import UIKit

class secondTransitionViewController: UIViewController {
    
    @IBOutlet weak var mottoTextView: UITextView!
    /*
     1. 앱을 켜면 데이터를 가지고 와서ㅓ 텍스트 뷰에 보여줘야함
     2. 바뀐 데이터를 저장해줘야함
     -> userDefault : 딕셔너리로 저장됨
     */
    
    @IBOutlet weak var emotionButtonClicked: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    @IBAction func clickEmotionButton(_ sender: UIButton) {
        
        // 기본 데이터 값 가져오기
        let currentValue = UserDefaults.standard.integer(forKey: "happyEmotion")
        
        // 감정 + 1
        let updateValue = currentValue + 1
        
        // 새로움 값저장
        UserDefaults.standard.set(updateValue, forKey: "happyEmotion")
        
        // 새롭게 저장된 값을 레이블에 보여줘야함
        countLabel.text = "\(UserDefaults.standard.set(updateValue, forKey: "happyEmotion"))"
    
// countLabel.text = "\(currentValue)" // 그럼 클릭 횟수 더하기 전 값이 표시되는 것 같슴다.
    
}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = "\(UserDefaults.standard.integer(forKey: "happyEmotion"))"

        if UserDefaults.standard.string(forKey: "nickname") != nil {
            // 가져오기
            mottoTextView.text = UserDefaults.standard.string(forKey: "nickname")
        } else {
            // 데이터가 없는 경우 사용할 문구
            mottoTextView.text = "고래봡"
        }
        
        // 반환값엘 따라 조건문 작성이 달라짐
        // 아래 폰넘버는 nil로 판단
        print(UserDefaults.standard.string(forKey: "phoneNumber"))
        print(UserDefaults.standard.integer(forKey: "age"))
        print(UserDefaults.standard.bool(forKey: "inapp"))
    }
    

    @IBAction func saveButtonClicked(_ sender: UIButton) {
        UserDefaults.standard.set(mottoTextView.text, forKey: "nickname")
        print("저장되었습니다")
    }
}
