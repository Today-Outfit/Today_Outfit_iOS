//
//  SurveyPlaceViewController.swift
//  ai_closet
//
//  Created by 강석호 on 2023/09/18.
//

import Foundation
import UIKit

class SurveyPlaceViewController: UIViewController {
    
    var sex : String?
    var color : String?
    var place : String?
    var age : Int?
    
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
        imageView.image = UIImage(named: "checked_button")
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
        imageView.image = UIImage(named: "selected_3")
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
        label.text = "가시는 장소를 선택해주세요"
        label.numberOfLines = 1
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        label.textColor = UIColor(r: 113, g: 114, b: 122)
        label.textAlignment = .left
        label.text = "대학교에 경우, 캐주얼한 복장이 추천해주는 점 알려드립니다."
        label.numberOfLines = 1
        return label
    }()
    
    private let formalityButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("격식있는 자리", for: .normal)
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
    
    private let dateButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("데이트", for: .normal)
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
    
    private let comfyButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("편한 모임", for: .normal)
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
    
    private let universityButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("대학교", for: .normal)
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
        self.view.addSubview(formalityButton)
        self.view.addSubview(dateButton)
        self.view.addSubview(comfyButton)
        self.view.addSubview(universityButton)
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
        formalityButton.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(34)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).inset(34)
            make.top.equalTo(self.descriptionLabel.snp.bottom).offset(63)
            make.height.equalTo(50)
        }
        dateButton.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(34)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).inset(34)
            make.top.equalTo(self.formalityButton.snp.bottom).offset(26)
            make.height.equalTo(50)
        }
        comfyButton.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(34)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).inset(34)
            make.top.equalTo(self.dateButton.snp.bottom).offset(26)
            make.height.equalTo(50)
        }
        universityButton.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(34)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).inset(34)
            make.top.equalTo(self.comfyButton.snp.bottom).offset(26)
            make.height.equalTo(50)
        }
        self.nextButton.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(24)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).inset(24)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).inset(24)
            make.height.equalTo(48)
        }
        
        formalityButton.addTarget(self, action: #selector(formalityButtonTapped), for: .touchUpInside)
        dateButton.addTarget(self, action: #selector(dateButtonTapped), for: .touchUpInside)
        comfyButton.addTarget(self, action: #selector(comfyButtonTapped), for: .touchUpInside)
        universityButton.addTarget(self, action: #selector(universityButtonTapped), for: .touchUpInside)
        self.nextButton.addTarget(self, action: #selector(onPressNextButton), for: .touchUpInside)
        
    }
    
    @objc private func formalityButtonTapped() {
        formalityButton.backgroundColor = UIColor(r: 234, g: 243, b: 255)
        // 다른 버튼의 배경색을 원래대로 되돌리고 싶다면 아래와 같이 처리할 수 있습니다.
        dateButton.backgroundColor = UIColor.white
        comfyButton.backgroundColor = UIColor.white
        universityButton.backgroundColor = UIColor.white
        place = "격식있는 자리"
    }
    @objc private func dateButtonTapped() {
        dateButton.backgroundColor = UIColor(r: 234, g: 243, b: 255)
        // 다른 버튼의 배경색을 원래대로 되돌리고 싶다면 아래와 같이 처리할 수 있습니다.
        formalityButton.backgroundColor = UIColor.white
        comfyButton.backgroundColor = UIColor.white
        universityButton.backgroundColor = UIColor.white
        place = "데이트"
    }
    @objc private func comfyButtonTapped() {
        comfyButton.backgroundColor = UIColor(r: 234, g: 243, b: 255)
        // 다른 버튼의 배경색을 원래대로 되돌리고 싶다면 아래와 같이 처리할 수 있습니다.
        formalityButton.backgroundColor = UIColor.white
        dateButton.backgroundColor = UIColor.white
        universityButton.backgroundColor = UIColor.white
        place = "편한 모임"
    }
    @objc private func universityButtonTapped() {
        universityButton.backgroundColor = UIColor(r: 234, g: 243, b: 255)
        // 다른 버튼의 배경색을 원래대로 되돌리고 싶다면 아래와 같이 처리할 수 있습니다.
        formalityButton.backgroundColor = UIColor.white
        dateButton.backgroundColor = UIColor.white
        comfyButton.backgroundColor = UIColor.white
        place = "대학교"
    }
    @objc func onPressNextButton(sender: UIButton) {
        let learningView = LearningViewController()
        print(sex)
        print(color)
        print(place)
//        surveyResult()
        
        learningView.sex = self.sex
        learningView.color = self.color
        learningView.place = self.place
        
        
        self.navigationController?.pushViewController(learningView, animated: true)
    }
    func surveyResult() {
        age = 5
        surveyResultService.shared.surveyResult(gender: sex!, age: age!, atmosphere: place!, karlo_img: "dd", up: color!, bottom: color!) { response in
            switch response {
            case .success(let data):
                guard let data = data as? SurveyResultResponse else { return }
                print(data)
            case .requestErr(let err):
                print(err)
            case .pathErr:
                print("pathErr")
            case .serverErr:
                print("serverErr")
            default:
                print("networkFail")
            }
        }
    }
}
