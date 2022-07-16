//
//  SecondViewController.swift
//  UnwindTestProject
//
//  Created by 방선우 on 2022/07/16.
//

import UIKit

class SecondViewController: UIViewController {
 
    override func loadView() {
        super.loadView()
        print(#function, "2. 뷰 컨트롤러의 뷰를 만듦")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function, "2. 첫화면 뷰가 로드됐습니다.")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function, "2. 뷰 컨트롤러가 화면에 나타나기 바로 직전")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function, "2. 화면에서 사라진 직후 호출")
    }
    
    deinit {
        print(#function, "2. 메모리에서 해지되기 직전에 호출")
    }
}
