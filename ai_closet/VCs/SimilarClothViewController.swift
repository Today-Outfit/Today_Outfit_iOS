//
//  SimilarClothViewController.swift
//  ai_closet
//
//  Created by 강석호 on 2023/09/18.
//

import Foundation
import UIKit
import SnapKit


class SimilarClothViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    private let similarClothCollecionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // UICollectionView 설정
        similarClothCollecionView.dataSource = self
        similarClothCollecionView.delegate = self
        similarClothCollecionView.register(SimilarClothCollectionViewCell.self, forCellWithReuseIdentifier: "SimilarClothCollectionViewCell") // 셀 등록
        
        view.addSubview(similarClothCollecionView)
        similarClothCollecionView.frame = view.bounds
    }
    
    // MARK: UICollectionViewDataSource
    
    // 섹션당 아이템 개수 설정
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    // 셀 생성 및 구성
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SimilarClothCollectionViewCell", for: indexPath) as! SimilarClothCollectionViewCell

        // 이미지 설정
        cell.imageView.image = UIImage(named: "Avatar_test") // 이미지 파일 이름으로 변경

        // 텍스트 설정
        cell.textLabel.text = "쉐기독 울 100% 라운드 가디건 BLUE"

        return cell
    }
    
    // 셀 크기 설정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = collectionView.bounds.width - 30 // 셀의 폭은 콜렉션 뷰 폭에서 좌우 여백(15 + 15)을 뺀 값
        let cellHeight: CGFloat = 120 // 셀의 높이
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    
}


