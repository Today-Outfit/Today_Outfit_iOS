//
//  LearningViewController.swift
//  ai_closet
//
//  Created by 강석호 on 2023/09/18.
//

import Foundation
import UIKit

class LearningViewController: UIViewController {
    
    var sex : String?
    var color : String?
    var place : String?
    
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
        imageView.image = UIImage(named: "checked_button")
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
        imageView.image = UIImage(named: "selected_4")
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
    
    private let loadingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "추천 중"
        label.numberOfLines = 1
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        label.textColor = UIColor(r: 113, g: 114, b: 122)
        label.textAlignment = .left
        label.text = "30초~1분정도 소요됩니다."
        label.numberOfLines = 1
        return label
    }()
    
    lazy var activityIndicator: UIActivityIndicatorView = {
        // Create an indicator.
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        activityIndicator.center = self.view.center
        activityIndicator.color = UIColor.blue
        // Also show the indicator even when the animation is stopped.
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = UIActivityIndicatorView.Style.white
        // Start animation.
        activityIndicator.startAnimating()
        activityIndicator.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        return activityIndicator
    }()
    
    private let nextButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("결과보기", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(r: 135, g: 150, b: 170)
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        button.isEnabled = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // 뒤로가기 버튼에 있는 텍스트를 지우려면
        let backButton = UIBarButtonItem()
        backButton.title = "Back"
        navigationItem.backBarButtonItem = backButton
        
        UserDefaults.standard.set(self.sex, forKey: "sex")
        UserDefaults.standard.set(self.color, forKey: "color")
        UserDefaults.standard.set(self.place, forKey: "place")
        
        self.navigationItem.title = "오늘 뭐입지"
        // 탐색 표시줄의 제목 텍스트 속성 설정
        if let navigationBar = self.navigationController?.navigationBar {
            let textAttributes: [NSAttributedString.Key: Any] = [
                .foregroundColor: UIColor.black,
                .font: UIFont.systemFont(ofSize: 17, weight: .bold)
            ]
            navigationBar.titleTextAttributes = textAttributes
        }
        
        // 10초 후에 애니메이션 중지하고 이미지 뷰 추가
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [weak self] in
            self?.activityIndicator.stopAnimating()
            self?.activityIndicator.removeFromSuperview()
            self?.loadingLabel.isHidden = true
            self?.descriptionLabel.isHidden = true
            self?.nextButton.isEnabled = true
            self?.nextButton.backgroundColor = UIColor(r: 0, g: 111, b: 253)
            
            // 이미지 뷰 추가
            let imageView = UIImageView(image: UIImage(named: "complete"))
            imageView.translatesAutoresizingMaskIntoConstraints = false
            self?.view.addSubview(imageView)
            
            let completionLabel = UILabel()
            completionLabel.translatesAutoresizingMaskIntoConstraints = false
            completionLabel.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
            completionLabel.textColor = .black
            completionLabel.textAlignment = .center
            completionLabel.text = "추천완료"
            completionLabel.numberOfLines = 1
            self?.view.addSubview(completionLabel)
            
            
            imageView.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.centerY.equalToSuperview()
                make.width.equalTo(50)
                make.height.equalTo(50)
            }
            completionLabel.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.top.equalTo(imageView.snp.bottom).offset(9)
            }
            
        }
        
        self.view.addSubview(step_1)
        self.view.addSubview(step_2)
        self.view.addSubview(step_3)
        self.view.addSubview(step_4)
        self.view.addSubview(step_1_Label)
        self.view.addSubview(step_2_Label)
        self.view.addSubview(step_3_Label)
        self.view.addSubview(step_4_Label)
        self.view.addSubview(self.activityIndicator)
        self.view.addSubview(loadingLabel)
        self.view.addSubview(descriptionLabel)
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
        loadingLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(self.activityIndicator.snp.bottom).offset(15)
        }
        descriptionLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(self.loadingLabel.snp.bottom).offset(20)
        }
        
        self.nextButton.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(24)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).inset(24)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).inset(24)
            make.height.equalTo(48)
        }
        
        self.nextButton.addTarget(self, action: #selector(onPressNextButton), for: .touchUpInside)
    }
    
    @objc func onPressNextButton(sender: UIButton) {
        let resultView = SegmentViewController()
        self.navigationController?.pushViewController(resultView, animated: true)
    }
}
