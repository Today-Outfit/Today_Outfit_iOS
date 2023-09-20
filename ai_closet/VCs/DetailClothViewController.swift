//
//  DetailClothViewController.swift
//  ai_closet
//
//  Created by 강석호 on 2023/09/18.
//

import Foundation

import UIKit
import SnapKit


class DetailClothViewController: UIViewController {
    
    private let outfitImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "outfit_test")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "미시간 울버린 피그먼트 반팔티 블루"
        label.numberOfLines = 1
        return label
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "29,000원"
        label.numberOfLines = 1
        return label
    }()
    
    private let purchaseButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("최저가로 구매하기", for: .normal)
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
        
        self.view.addSubview(outfitImage)
        self.view.addSubview(nameLabel)
        self.view.addSubview(priceLabel)
        self.view.addSubview(purchaseButton)
        
        outfitImage.snp.makeConstraints { make in
            make.leading.equalTo(self.view.snp.leading)
            make.trailing.equalTo(self.view.snp.trailing)
            make.top.equalTo(self.view.snp.top)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).inset(200)
        }
        nameLabel.snp.makeConstraints { make in
            make.leading.equalTo(self.view.snp.leading).inset(20)
            make.top.equalTo(self.outfitImage.snp.bottom).offset(24)
        }
        priceLabel.snp.makeConstraints { make in
            make.leading.equalTo(self.view.snp.leading).inset(20)
            make.top.equalTo(self.nameLabel.snp.bottom).offset(8)
        }
        self.purchaseButton.snp.makeConstraints { make in
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).inset(24)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).inset(24)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).inset(24)
            make.height.equalTo(48)
        }
        
        // purchaseButton에 액션 추가
        purchaseButton.addTarget(self, action: #selector(openWebsite), for: .touchUpInside)
        
    }
    
    // purchaseButton을 클릭했을 때 실행될 메서드
    @objc func openWebsite() {
        if let url = URL(string: "https://naver.com") { // 웹 사이트 주소를 여기에 입력하세요.
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
