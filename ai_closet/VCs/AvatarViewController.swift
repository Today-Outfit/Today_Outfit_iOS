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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.view.addSubview(avatarImage)
        
        
        avatarImage.snp.makeConstraints { make in
            make.leading.equalTo(self.view.snp.leading).inset(25)
            make.trailing.equalTo(self.view.snp.trailing).inset(25)
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).inset(50)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).inset(200)
        }
        
    }
}
