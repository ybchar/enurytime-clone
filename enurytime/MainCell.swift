//
//  MainCell.swift
//  enurytime
//
//  Created by 차윤범 on 2022/07/19.
//

import Foundation
import UIKit

final class MainCell: UITableViewCell{
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .white
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
