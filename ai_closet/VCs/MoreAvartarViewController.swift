//
//  MoreAvartarViewController.swift
//  ai_closet
//
//  Created by 강석호 on 2023/09/18.
//

import Foundation
import UIKit
import SnapKit


class MoreAvatarViewController: UIViewController {
    
    private let avatarImage_1: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Avatar_test")
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    private let avatarImage_2: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Avatar_test")
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    private let avatarImage_3: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Avatar_test")
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    private let avatarImage_4: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Avatar_test")
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.view.addSubview(avatarImage_1)
        self.view.addSubview(avatarImage_2)
        self.view.addSubview(avatarImage_3)
        self.view.addSubview(avatarImage_4)
        
        
        avatarImage_1.snp.makeConstraints { make in
            make.leading.equalTo(self.view.snp.leading).inset(50)
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).inset(50)
            make.height.equalTo(140)
            make.width.equalTo(130)
        }
        
        avatarImage_2.snp.makeConstraints { make in
            make.leading.equalTo(self.avatarImage_1.snp.trailing).offset(30)
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).inset(50)
            make.height.equalTo(140)
            make.width.equalTo(130)
        }
        
        avatarImage_3.snp.makeConstraints { make in
            make.leading.equalTo(self.view.snp.leading).inset(50)
            make.top.equalTo(self.avatarImage_1.snp.bottom).offset(30)
            make.height.equalTo(140)
            make.width.equalTo(130)
        }
        
        avatarImage_4.snp.makeConstraints { make in
            make.leading.equalTo(self.avatarImage_3.snp.trailing).offset(30)
            make.top.equalTo(self.avatarImage_2.snp.bottom).offset(30)
            make.height.equalTo(140)
            make.width.equalTo(130)
        }
        
    }
    
}
