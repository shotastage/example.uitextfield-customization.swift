//
//  CustomTextField.swift
//  textfield-example
//
//  Created by Shota Shimazu on 2018/09/01.
//  Copyright © 2018 Shota Shimazu. All rights reserved.
//

import UIKit


class LargeTextField: UITextField {

    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.frame.size.height = 50 // ここ変える
    }

}

class CustomTextField: UITextField {
    
    // 下線用のUIViewを作っておく
    let underline: UIView = UIView()

    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.frame.size.height = 50 // ここ変える
        
        composeUnderline() // 下線のスタイルセットおよび追加処理
        
        self.borderStyle = .none
        self.placeholder = "example@example.com"
    }
    
    private func composeUnderline() {
        self.underline.frame = CGRect(
            x: 0,
            y: self.frame.height,
            width: self.frame.width,
            height: 2.5)
        
        self.underline.backgroundColor = UIColor(red:0.36, green:0.61, blue:0.93, alpha:1.0)
        
        self.addSubview(self.underline)
        self.bringSubviewToFront(self.underline)
        
    }
}
