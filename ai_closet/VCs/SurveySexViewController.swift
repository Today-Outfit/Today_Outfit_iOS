//
//  SurveyViewController.swift
//  ai_closet
//
//  Created by 강석호 on 2023/09/16.
//

import Foundation
import UIKit

class SurveySexViewController: UIViewController {
    
    var sex : String = ""
    
    private let step_1: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "selected_1")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let step_1_Label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        label.textColor = UIColor(r: 143, g: 144, b: 152)
        label.textAlignment = .left
        label.text = "성별"
        label.numberOfLines = 1
        return label
    }()
    
    private let step_2: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "step_2")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let step_2_Label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        label.textColor = UIColor(r: 143, g: 144, b: 152)
        label.textAlignment = .left
        label.text = "색상"
        label.numberOfLines = 1
        return label
    }()
    
    private let step_3: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "step_3")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let step_3_Label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        label.textColor = UIColor(r: 143, g: 144, b: 152)
        label.textAlignment = .left
        label.text = "장소"
        label.numberOfLines = 1
        return label
    }()
    
    private let step_4: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "step_4")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let step_4_Label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        label.textColor = UIColor(r: 143, g: 144, b: 152)
        label.textAlignment = .left
        label.text = "학습"
        label.numberOfLines = 1
        return label
    }()
    
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "성별을 선택해주세요"
        label.numberOfLines = 1
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        label.textColor = UIColor(r: 113, g: 114, b: 122)
        label.textAlignment = .left
        label.text = "성별에 경우, 모델의 성별을 학습할때 도움이 됩니다."
        label.numberOfLines = 1
        return label
    }()
    
    private let manButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("남자", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        button.setTitleColor(UIColor.black, for: .normal) // 텍스트 색상을 검은색으로 변경
        button.backgroundColor = UIColor.white // 배경색을 하얀색으로 변경
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        // 텍스트 왼쪽 정렬 설정
        button.contentHorizontalAlignment = .left
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
        // 테두리 설정
        button.layer.borderColor = UIColor(r: 197, g: 198, b: 204).cgColor
        button.layer.borderWidth = 1
        return button
    }()
    
    private let womanButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("여자", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        button.setTitleColor(UIColor.black, for: .normal) // 텍스트 색상을 검은색으로 변경
        button.backgroundColor = UIColor.white // 배경색을 하얀색으로 변경
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        // 텍스트 왼쪽 정렬 설정
        button.contentHorizontalAlignment = .left
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
        // 테두리 설정
        button.layer.borderColor = UIColor(r: 197, g: 198, b: 204).cgColor
        button.layer.borderWidth = 1
        return button
    }()
    
    private let nextButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("다음", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(r: 0, g: 111, b: 253)
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // 뒤로가기 버튼에 있는 텍스트를 지우려면
        let backButton = UIBarButtonItem()
        backButton.title = "Back"
        navigationItem.backBarButtonItem = backButton
        
        // 현재 뷰 컨트롤러의 뒤로가기 버튼을 숨깁니다.
        self.navigationItem.hidesBackButton = true
        
        self.navigationItem.title = "오늘 뭐입지"
        // 탐색 표시줄의 제목 텍스트 속성 설정
        if let navigationBar = self.navigationController?.navigationBar {
            let textAttributes: [NSAttributedString.Key: Any] = [
                .foregroundColor: UIColor.black,
                .font: UIFont.systemFont(ofSize: 17, weight: .bold)
            ]
            navigationBar.titleTextAttributes = textAttributes
        }
        
        self.view.addSubview(step_1)
        self.view.addSubview(step_2)
        self.view.addSubview(step_3)
        self.view.addSubview(step_4)
        self.view.addSubview(step_1_Label)
        self.view.addSubview(step_2_Label)
        self.view.addSubview(step_3_Label)
        self.view.addSubview(step_4_Label)
        self.view.addSubview(mainLabel)
        self.view.addSubview(descriptionLabel)
        self.view.addSubview(manButton)
        self.view.addSubview(womanButton)
        self.view.addSubview(nextButton)
        
        
        step_1.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(50)
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).inset(20)
            make.height.equalTo(25)
            make.width.equalTo(25)
        }
        
        step_2.snp.makeConstraints { make in
            make.leading.equalTo(self.step_1.snp.trailing).offset(60)
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).inset(20)
            make.height.equalTo(30)
            make.width.equalTo(25)
        }
        
        step_3.snp.makeConstraints { make in
            make.leading.equalTo(self.step_2.snp.trailing).offset(60)
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).inset(20)
            make.height.equalTo(25)
            make.width.equalTo(25)
        }
        
        step_4.snp.makeConstraints { make in
            make.leading.equalTo(self.step_3.snp.trailing).offset(60)
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).inset(20)
            make.height.equalTo(25)
            make.width.equalTo(25)
        }
        
        step_1_Label.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(51)
            make.top.equalTo(self.step_1.snp.bottom).offset(9)
        }
        
        step_2_Label.snp.makeConstraints { make in
            make.leading.equalTo(self.step_1_Label.snp.trailing).offset(62)
            make.top.equalTo(self.step_1.snp.bottom).offset(9)
        }
        
        step_3_Label.snp.makeConstraints { make in
            make.leading.equalTo(self.step_2_Label.snp.trailing).offset(62)
            make.top.equalTo(self.step_1.snp.bottom).offset(9)
        }
        step_4_Label.snp.makeConstraints { make in
            make.leading.equalTo(self.step_3_Label.snp.trailing).offset(62)
            make.top.equalTo(self.step_1.snp.bottom).offset(9)
        }
        mainLabel.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(34)
            make.top.equalTo(self.step_1_Label.snp.bottom).offset(40)
        }
        descriptionLabel.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(34)
            make.top.equalTo(self.mainLabel.snp.bottom).offset(10)
        }
        manButton.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(34)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).inset(34)
            make.top.equalTo(self.descriptionLabel.snp.bottom).offset(63)
            make.height.equalTo(50)
        }
        womanButton.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(34)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).inset(34)
            make.top.equalTo(self.manButton.snp.bottom).offset(26)
            make.height.equalTo(50)
        }
        self.nextButton.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(24)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).inset(24)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).inset(24)
            make.height.equalTo(48)
        }
        
        manButton.addTarget(self, action: #selector(manButtonTapped), for: .touchUpInside)
        womanButton.addTarget(self, action: #selector(womanButtonTapped), for: .touchUpInside)
        // 로그인하기 버튼 클릭시 다음화면으로 이동
        self.nextButton.addTarget(self, action: #selector(onPressNextButton), for: .touchUpInside)
    }
    
    // manButton을 클릭했을 때 호출될 메서드
    @objc private func manButtonTapped() {
        // 버튼의 배경색을 파란색으로 변경
        manButton.backgroundColor = UIColor(r: 234, g: 243, b: 255)
        // 다른 버튼의 배경색을 원래대로 되돌리고 싶다면 아래와 같이 처리할 수 있습니다.
        womanButton.backgroundColor = UIColor.white
        sex = "남자"
    }
    // manButton을 클릭했을 때 호출될 메서드
    @objc private func womanButtonTapped() {
        // 버튼의 배경색을 파란색으로 변경
        womanButton.backgroundColor = UIColor(r: 234, g: 243, b: 255)
        // 다른 버튼의 배경색을 원래대로 되돌리고 싶다면 아래와 같이 처리할 수 있습니다.
        manButton.backgroundColor = UIColor.white
        sex = "여자"
    }
    @objc func onPressNextButton(sender: UIButton) {
        let surveyView_2 = SurveyColorViewController()
        surveyView_2.sex = self.sex
        self.navigationController?.pushViewController(surveyView_2, animated: true)
    }
}
