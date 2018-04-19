//
//  ViewController.swift
//  UIAlertController
//
//  Created by D7703_22 on 2018. 4. 19..
//  Copyright © 2018년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func bt1(_ sender: Any) {
        //오버로딩 하나의 객체에 여러개의 인자를 가지는 걸 얘기함 = 중복정의
        //오버라이딩 = 재정의
        let myAlertController = UIAlertController(title: "알람", message: "설정된 시간이 되었습니다", preferredStyle: .alert)
        
        //AlertAction 만들기
        
        let okAction = UIAlertAction(title: "확인", style: .default, handler:{
            (myAction: UIAlertAction) -> Void in
            
            self.view.backgroundColor = UIColor.red
        })
    
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: {
            (myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.white
        })
        
        let Action = UIAlertAction(title: "삭제", style: .destructive, handler: nil)
        
        //AlertAction을 AlertController
        myAlertController.addAction(okAction)
        myAlertController.addAction(cancelAction)
        myAlertController.addAction(Action)

        
        present(myAlertController, animated: true, completion: nil)
        //화면에 출력, nil은 아무것도 안하겠다
    }
}
