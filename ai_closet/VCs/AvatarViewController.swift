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
    
    let sex: String = UserDefaults.standard.object(forKey: "sex") as! String
    let color: String = UserDefaults.standard.object(forKey: "color") as! String
    let place: String = UserDefaults.standard.object(forKey: "color") as! String
    
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
        label.numberOfLines = 1
        return label
    }()
    
    private let colorLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    private let placeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // 다음 세 줄을 추가하여 UserDefaults에서 값을 가져와서 colorLabel의 text로 설정합니다.
        if let colorValue = UserDefaults.standard.string(forKey: "color") {
            colorLabel.text = colorValue
        }
        
        // 다음 세 줄을 추가하여 UserDefaults에서 값을 가져와서 colorLabel의 text로 설정합니다.
        if let sexValue = UserDefaults.standard.string(forKey: "sex") {
            sexLabel.text = sexValue
        }
        
        // 다음 세 줄을 추가하여 UserDefaults에서 값을 가져와서 colorLabel의 text로 설정합니다.
        if let placeValue = UserDefaults.standard.string(forKey: "place") {
            placeLabel.text = placeValue
        }
        
        self.view.addSubview(avatarImage)
        self.view.addSubview(sexLabel)
        self.view.addSubview(colorLabel)
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
        colorLabel.snp.makeConstraints { make in
            make.leading.equalTo(self.view.snp.leading).inset(55)
            make.top.equalTo(self.sexLabel.snp.bottom).offset(10)
        }
        placeLabel.snp.makeConstraints { make in
            make.leading.equalTo(self.view.snp.leading).inset(55)
            make.top.equalTo(self.colorLabel.snp.bottom).offset(10)
        }
        
    }
}
