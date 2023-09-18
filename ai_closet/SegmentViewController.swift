//
//  SegmentViewController.swift
//  ai_closet
//
//  Created by 강석호 on 2023/09/18.
//

import Foundation
import UIKit

import UIKit
import SnapKit

class SegmentViewController: UIViewController {

    // Segmented Control
    let segmentedControl: UISegmentedControl = {
        let items = ["아바타 코디", "분리된 옷", "그 외 코디"]
        let control = UISegmentedControl(items: items)
        control.selectedSegmentIndex = 0
        control.backgroundColor = .white
        control.tintColor = .white // 배경색과 동일한 색상으로 설정
        return control
    }()

    // Container View
    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()

    // Child View Controllers
    let viewControllers: [UIViewController] = [
        FirstViewController(),
        SecondViewController(),
        ThirdViewController()
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    func setupUI() {
        view.backgroundColor = .white

        // Add Segmented Control
        view.addSubview(segmentedControl)
        segmentedControl.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(16)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
        }

        // Add Container View
        view.addSubview(containerView)
        containerView.snp.makeConstraints { make in
            make.top.equalTo(segmentedControl.snp.bottom).offset(16)
            make.leading.trailing.bottom.equalToSuperview()
        }

        // Add Child View Controllers
        addChild(viewControllers[0])
        containerView.addSubview(viewControllers[0].view)
        viewControllers[0].view.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        viewControllers[0].didMove(toParent: self)

        // Segmented Control Action
        segmentedControl.addTarget(self, action: #selector(segmentedControlValueChanged(_:)), for: .valueChanged)
    }

    @objc func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex

        for viewController in viewControllers {
            viewController.willMove(toParent: nil)
            viewController.view.removeFromSuperview()
            viewController.removeFromParent()
        }

        let selectedViewController = viewControllers[selectedIndex]
        addChild(selectedViewController)
        containerView.addSubview(selectedViewController.view)
        selectedViewController.view.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        selectedViewController.didMove(toParent: self)
    }
}

class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}
