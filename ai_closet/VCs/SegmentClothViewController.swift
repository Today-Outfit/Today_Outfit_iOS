//
//  SegmentClothViewController.swift
//  ai_closet
//
//  Created by 강석호 on 2023/09/18.
//

import Foundation
import UIKit
import SnapKit


class SegmentClothViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    private let segmentClothCollecionView: UICollectionView = {
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
        segmentClothCollecionView.dataSource = self
        segmentClothCollecionView.delegate = self
        segmentClothCollecionView.register(SegmentClothCollectionViewCell.self, forCellWithReuseIdentifier: "SegmentClothCollectionViewCell") // 셀 등록
        
        view.addSubview(segmentClothCollecionView)
        segmentClothCollecionView.frame = view.bounds
    }
    
    // MARK: UICollectionViewDataSource
    
    // 섹션당 아이템 개수 설정
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    // 셀 생성 및 구성
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SegmentClothCollectionViewCell", for: indexPath) as! SegmentClothCollectionViewCell

        // 이미지 설정
        cell.imageView.image = UIImage(named: "Avatar_test") // 이미지 파일 이름으로 변경

        // 텍스트 설정
        cell.textLabel.text = "파란 반바지"

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailViewController = SimilarClothViewController() // 새로운 뷰컨트롤러 생성
        
        // 여기서 필요한 데이터를 detailViewController에 전달할 수 있다.
        // 예를 들어, 선택된 셀의 정보를 전달하는 경우:
        // detailViewController.selectedItem = items[indexPath.item]
        
        navigationController?.pushViewController(detailViewController, animated: true) // push
    }
    
    // 셀 크기 설정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = collectionView.bounds.width - 30 // 셀의 폭은 콜렉션 뷰 폭에서 좌우 여백(15 + 15)을 뺀 값
        let cellHeight: CGFloat = 120 // 셀의 높이
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    
}


