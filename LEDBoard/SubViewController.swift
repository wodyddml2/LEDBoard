//
//  SubViewController.swift
//  horizontal
//
//  Created by J on 2022/07/06.
//

import UIKit

class SubViewController: UIViewController,UITextFieldDelegate {
// UITextFieldDelegate: 텍스트필드 개체의 텍스트 편집, 유효성 검사, 키보드와 특정 상호 작용 프로세스 제어
    @IBOutlet weak var userTextFeild: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet var buttonList: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // delegate: 해당 객체에 할 일을 위임
        userTextFeild.delegate = self
        resultLabel.numberOfLines = 0
        // 라인 수 지정

        designButton( sendButton, buttonTitle: "입력", bgColor: .gray)
        designTextField()
       // _ 를 이용해서 내부매개변수를 여기서 보이지 않게 할 수 있다.(Wild card 식별자)
        
        
    }
    
    
    func designTextField() {
        userTextFeild.placeholder = "내용 입력해주세요"
        userTextFeild.text = "배고프다."
        userTextFeild.keyboardType = .emailAddress
    }
    
    //buttonOutletVariable: 외부 매개변수 or argument Label --> 생략 가능
    // buttonName: 내부 매개변수 or parameter Name
    // 값은 argument
    func designButton(_ buttonName: UIButton, buttonTitle: String,bgColor:UIColor) {
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle("빨리보내", for: .highlighted)
        buttonName.backgroundColor = bgColor
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.blue.cgColor
        buttonName.layer.borderWidth = 3
        buttonName.setTitleColor(.red, for: .normal)
        buttonName.setTitleColor(.blue, for: .highlighted)
    }
    
//    func studyOutletCollection() {
//        //1. 반복문
//        let btnArr: [UIButton] = [sendButton,textColorButton]
//
//        for i in btnArr{
//            i.backgroundColor = .blue
//            i.layer.cornerRadius = 2
//        }
//
//        //2. 아웃렛 컬렉션
//        for i in buttonList{
//            i.backgroundColor = .blue
//            i.layer.cornerRadius = 2
//        }
//
//    }
    // textFieldShouldReturn:UITextFieldDelegate의 안에 있는 메서드 -> 리턴 버튼에 대한 기본 동작을 구현 반환 값은 구현할거면 true, 아니면 false
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //resignFirstResponder(): 인스턴스 메서드로 첫 번째 응답자로서의 상태를 포기 요청받음을 알고 구현
        // 구현 방법은 true
        userTextFeild.resignFirstResponder()
        return true
    }
    @IBAction func sendButtonPressed(_ sender: UIButton) {
        resultLabel.text = userTextFeild.text
    }
    
//    @IBAction func keyboardReturn(_ sender: UITextField) {
//        view.endEditing(true)
//    }
//
    
    @IBAction func gestureClicked(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
        // viewcontroller 안에 View를 view라고 애플이 지어놓은 이름
        backgroundView.isHidden = !backgroundView.isHidden
    }
    
// 연결 관계 다 끊어보고 Any
}
