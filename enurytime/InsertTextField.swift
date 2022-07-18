//
//  InsertTextField.swift
//  enurytime
//
//  Created by 차윤범 on 2022/07/18.
//

import Foundation
import UIKit

class InsertTextField : UITextField{
    
    // re-frame
    var insertX: CGFloat = 0 {
        didSet{
            layoutIfNeeded()
        }
    }
    var insertY: CGFloat = 0 {
        didSet{
            layoutIfNeeded()
        }
    }
    
    // text 영역 지정
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insertX, dy: insertY)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insertX, dy: insertY)
    }
}
