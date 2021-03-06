//
//  LifeCycleViewController.swift
//  Week2
//
//  Created by 방선우 on 2022/07/13.
//

import UIKit

class LifeCycleViewController: UIViewController {

    override func loadView() {
        super.loadView()
        print("난 두번째 뷰, 뷰 컨트롤러의 뷰를 만드는 시점, 뷰에서 값을 얻어올 수 있음")
        print(#function)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("""
- 뷰가 메모리에 로드된 직후 -> 뷰에 대해 접근하여 값을 얻어오고 추가적인 작업 가능
- 생명주기 내 한번만 호출
""")
        print(#function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("뷰 컨트롤러가 화면에 나타나기 바로 직전")
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("뷰가 데이터와 함게 완전히 표현되는 시점 이때 호출되는 메서드")
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("두번째 뷰가 화면에서 사라진 직후 호출")
        print((#function))
    }
    
    deinit {
        print("메모리에서 해지되기 직전에 호출")
        print(#function)
    }

}
