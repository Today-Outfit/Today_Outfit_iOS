//
//  SurveyColorViewController.swift
//  ai_closet
//
//  Created by 강석호 on 2023/09/18.
//

import Foundation
import UIKit

class SurveyColorViewController: UIViewController {
    
    var sex : String?
    var color : String?
    
    private let step_1: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "checked_button")
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
        imageView.image = UIImage(named: "selected_2")
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
        label.text = "평소에 좋아하는 색상을 선택하여주세요"
        label.numberOfLines = 1
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        label.textColor = UIColor(r: 113, g: 114, b: 122)
        label.textAlignment = .left
        label.text = "색상에 경우, 선택하신 색상을 고려하여 학습을 진행합니다."
        label.numberOfLines = 1
        return label
    }()
    
    private let blueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("파란색 계열", for: .normal)
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
    
    private let check_blue: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "check")
        imageView.contentMode = .scaleAspectFit
        imageView.isHidden = true
        return imageView
    }()
    
    private let redButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("빨간색 계열", for: .normal)
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
    
    private let check_red: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "check")
        imageView.contentMode = .scaleAspectFit
        imageView.isHidden = true
        return imageView
    }()
    
    private let blackButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("검은색 계열", for: .normal)
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
    
    private let check_black: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "check")
        imageView.contentMode = .scaleAspectFit
        imageView.isHidden = true
        return imageView
    }()
    
    private let whiteButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("흰색 계열", for: .normal)
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
    
    private let check_white: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "check")
        imageView.contentMode = .scaleAspectFit
        imageView.isHidden = true
        return imageView
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
        self.view.addSubview(blueButton)
        self.view.addSubview(check_blue)
        self.view.addSubview(redButton)
        self.view.addSubview(check_red)
        self.view.addSubview(blackButton)
        self.view.addSubview(check_black)
        self.view.addSubview(whiteButton)
        self.view.addSubview(check_white)
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
        blueButton.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(34)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).inset(34)
            make.top.equalTo(self.descriptionLabel.snp.bottom).offset(63)
            make.height.equalTo(50)
        }
        check_blue.snp.makeConstraints { make in
            make.trailing.equalTo(self.blueButton.snp.trailing).inset(34)
            make.top.equalTo(self.blueButton.snp.top).offset(16)
            make.height.equalTo(15)
            make.width.equalTo(15)
        }
        redButton.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(34)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).inset(34)
            make.top.equalTo(self.blueButton.snp.bottom).offset(26)
            make.height.equalTo(50)
        }
        check_red.snp.makeConstraints { make in
            make.trailing.equalTo(self.redButton.snp.trailing).inset(34)
            make.top.equalTo(self.redButton.snp.top).offset(16)
            make.height.equalTo(15)
            make.width.equalTo(15)
        }
        blackButton.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(34)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).inset(34)
            make.top.equalTo(self.redButton.snp.bottom).offset(26)
            make.height.equalTo(50)
        }
        check_black.snp.makeConstraints { make in
            make.trailing.equalTo(self.blackButton.snp.trailing).inset(34)
            make.top.equalTo(self.blackButton.snp.top).offset(16)
            make.height.equalTo(15)
            make.width.equalTo(15)
        }
        whiteButton.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(34)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).inset(34)
            make.top.equalTo(self.blackButton.snp.bottom).offset(26)
            make.height.equalTo(50)
        }
        check_white.snp.makeConstraints { make in
            make.trailing.equalTo(self.whiteButton.snp.trailing).inset(34)
            make.top.equalTo(self.whiteButton.snp.top).offset(16)
            make.height.equalTo(15)
            make.width.equalTo(15)
        }
        self.nextButton.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(24)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).inset(24)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).inset(24)
            make.height.equalTo(48)
        }
        
        blueButton.addTarget(self, action: #selector(blueButtonTapped), for: .touchUpInside)
        redButton.addTarget(self, action: #selector(redButtonTapped), for: .touchUpInside)
        blackButton.addTarget(self, action: #selector(blackButtonTapped), for: .touchUpInside)
        whiteButton.addTarget(self, action: #selector(whiteButtonTapped), for: .touchUpInside)
        self.nextButton.addTarget(self, action: #selector(onPressNextButton), for: .touchUpInside)
        
    }

    @objc private func blueButtonTapped() {
        blueButton.backgroundColor = UIColor(r: 234, g: 243, b: 255)
        // 다른 버튼의 배경색을 원래대로 되돌리고 싶다면 아래와 같이 처리할 수 있습니다.
        redButton.backgroundColor = UIColor.white
        blackButton.backgroundColor = UIColor.white
        whiteButton.backgroundColor = UIColor.white
        check_blue.isHidden = false
        check_red.isHidden = true
        check_black.isHidden = true
        check_white.isHidden = true
        color = "파란색 계열"
    }
    @objc private func redButtonTapped() {
        redButton.backgroundColor = UIColor(r: 234, g: 243, b: 255)
        // 다른 버튼의 배경색을 원래대로 되돌리고 싶다면 아래와 같이 처리할 수 있습니다.
        blueButton.backgroundColor = UIColor.white
        blackButton.backgroundColor = UIColor.white
        whiteButton.backgroundColor = UIColor.white
        check_blue.isHidden = true
        check_red.isHidden = false
        check_black.isHidden = true
        check_white.isHidden = true
        color = "빨간색 계열"
    }
    @objc private func blackButtonTapped() {
        blackButton.backgroundColor = UIColor(r: 234, g: 243, b: 255)
        // 다른 버튼의 배경색을 원래대로 되돌리고 싶다면 아래와 같이 처리할 수 있습니다.
        blueButton.backgroundColor = UIColor.white
        redButton.backgroundColor = UIColor.white
        whiteButton.backgroundColor = UIColor.white
        check_blue.isHidden = true
        check_red.isHidden = true
        check_black.isHidden = false
        check_white.isHidden = true
        color = "검은색 계열"
    }
    @objc private func whiteButtonTapped() {
        whiteButton.backgroundColor = UIColor(r: 234, g: 243, b: 255)
        // 다른 버튼의 배경색을 원래대로 되돌리고 싶다면 아래와 같이 처리할 수 있습니다.
        blueButton.backgroundColor = UIColor.white
        redButton.backgroundColor = UIColor.white
        blackButton.backgroundColor = UIColor.white
        check_blue.isHidden = true
        check_red.isHidden = true
        check_black.isHidden = true
        check_white.isHidden = false
        color = "흰색 계열"
    }
    @objc func onPressNextButton(sender: UIButton) {
        let surveyView_3 = SurveyPlaceViewController()
        surveyView_3.sex = self.sex
        surveyView_3.color = self.color
        self.navigationController?.pushViewController(surveyView_3, animated: true)
    }
}
