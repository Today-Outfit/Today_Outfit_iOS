//
//  UIColor+Extension.swift
//  ai_closet
//
//  Created by 강석호 on 2023/09/15.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(r: Int, g: Int, b: Int, a: Int) {
        self.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: CGFloat(a)/255)
    }
    
    convenience init(r: Int, g: Int, b: Int) {
        self.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: 1)
    }
    
    convenience init(w : Int) {
        self.init(white: CGFloat(w)/255, alpha: 1)
    }
}
