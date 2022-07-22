//
//  ReactionView.swift
//  everytime
//
//  Created by 차윤범 on 2022/07/21.
//
// 좋아요 댓글 View
import Foundation
import UIKit

final class ReactionView: UIStackView {
    
    // 좋아요
    private let likeButton: UIButton = {
        let button = UIButton()
        button.setTitle("0", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        button.setTitleColor(UIColor(r: 198, g: 41, b: 23), for: .normal)
        button.setImage(UIImage(named: "main_like_icon"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -3, bottom: 0, right: 0)
        return button
    }()
    
    // 댓글
    private let commentButton: UIButton = {
        let button = UIButton()
        button.setTitle("3", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        button.setTitleColor(UIColor(r: 89, g: 177, b: 187), for: .normal)
        button.setImage(UIImage(named: "main_comment_icon"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -3, bottom: 0, right: 0)
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.spacing = 6
        self.axis = .horizontal
        self.addArrangedSubview(self.likeButton)
        self.addArrangedSubview(self.commentButton)
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
