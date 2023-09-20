//
//  AvartarViewController.swift
//  ai_closet
//
//  Created by 강석호 on 2023/09/18.
//

import Foundation
import UIKit
import SnapKit

class AvatarViewController: UIViewController {
    
    
    private let avatarImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Avatar_test")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    private let sexLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        label.textAlignment = .left
        let sex = UserDefaults.standard.string(forKey: "sex")
        label.text = sex
        label.numberOfLines = 1
        return label
    }()
    
    private let color_1Label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        label.textAlignment = .left
        let color_1 = UserDefaults.standard.string(forKey: "color_1")
        label.text = color_1
        label.numberOfLines = 1
        return label
    }()
    
    private let color_2Label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        label.textAlignment = .left
        let color_2 = UserDefaults.standard.string(forKey: "color_2")
        label.text = color_2
        label.numberOfLines = 1
        return label
    }()
    
    private let placeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        label.textAlignment = .left
        let place = UserDefaults.standard.string(forKey: "place")
        label.text = place
        label.numberOfLines = 1
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
//        // 다음 세 줄을 추가하여 UserDefaults에서 값을 가져와서 colorLabel의 text로 설정합니다.
//        if let color_1 = UserDefaults.standard.string(forKey: "color_1") {
//            colorLabel.text = color_1
//            print(color_1)
//        }
//
//        // 다음 세 줄을 추가하여 UserDefaults에서 값을 가져와서 colorLabel의 text로 설정합니다.
//        if let sex = UserDefaults.standard.string(forKey: "sex") {
//            sexLabel.text = sex
//            print(sex)
//        }
//
//        // 다음 세 줄을 추가하여 UserDefaults에서 값을 가져와서 colorLabel의 text로 설정합니다.
//        if let place = UserDefaults.standard.string(forKey: "place") {
//            placeLabel.text = place
//            print(place)
//        }
        
        self.view.addSubview(avatarImage)
        self.view.addSubview(sexLabel)
        self.view.addSubview(color_1Label)
        self.view.addSubview(color_2Label)
        self.view.addSubview(placeLabel)
        
        
        
        avatarImage.snp.makeConstraints { make in
            make.leading.equalTo(self.view.snp.leading).inset(25)
            make.trailing.equalTo(self.view.snp.trailing).inset(25)
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).inset(50)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).inset(200)
        }
        sexLabel.snp.makeConstraints { make in
            make.leading.equalTo(self.view.snp.leading).inset(55)
            make.top.equalTo(self.avatarImage.snp.bottom).offset(30)
        }
        color_1Label.snp.makeConstraints { make in
            make.leading.equalTo(self.view.snp.leading).inset(55)
            make.top.equalTo(self.sexLabel.snp.bottom).offset(10)
        }
        color_2Label.snp.makeConstraints { make in
            make.leading.equalTo(self.view.snp.leading).inset(55)
            make.top.equalTo(self.color_1Label.snp.bottom).offset(10)
        }
        placeLabel.snp.makeConstraints { make in
            make.leading.equalTo(self.view.snp.leading).inset(55)
            make.top.equalTo(self.color_2Label.snp.bottom).offset(10)
        }
        
    }
}
