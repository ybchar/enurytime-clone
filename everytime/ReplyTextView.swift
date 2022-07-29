//
//  ReplyTextView.swift
//  everytime
//
//  Created by 차윤범 on 2022/07/29.
//

import Foundation
import UIKit

final class ReplyTextView: UIView {
    
    // 익명 체크 버튼
    private let nicknameButton: UIButton = {
        let button = UIButton()
        button.setTitle("익명", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        button.setTitleColor(UIColor(r: 198, g: 41, b: 23), for: .normal)
        button.setImage(UIImage(named: "reply_text_nickname_icon"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -4, bottom: 0, right: 0)
        return button
    }()
    
    // 댓글 텍스트 뷰
    private let textView: UITextView = {
        let textView = UITextView()
        textView.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        textView.textContainerInset = .zero
        textView.textContainer.lineFragmentPadding = 0
        textView.tintColor = UIColor(r: 198, g: 41, b: 23)
        textView.backgroundColor = .clear
        return textView
    }()
    
    // 전송 버튼
    private let sendButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "reply_send_icon"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        return button
    }()
    
    // 댓글을 입력하세요.
    private let placeholderLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.textColor = UIColor(w: 168)
        label.text = "댓글을 입력하세요."
        // 고유 크기보다 커지는 것을 방지하는 우선 순위를 설정
        label.setContentHuggingPriority(.defaultLow, for: .horizontal)
        return label
    }()
    
    private let backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(w: 242)
        view.layer.cornerRadius = 12
        view.clipsToBounds = true
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(self.backgroundView)
        self.addSubview(self.nicknameButton)
        self.addSubview(self.placeholderLabel)
        self.addSubview(self.textView)
        self.addSubview(self.sendButton)
        
        
        self.backgroundView.translatesAutoresizingMaskIntoConstraints = false
       
        self.textView.translatesAutoresizingMaskIntoConstraints = false
        
        self.nicknameButton.translatesAutoresizingMaskIntoConstraints = false
        self.sendButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.textView.setContentHuggingPriority(UILayoutPriority(rawValue: 0), for: .horizontal)
        
        self.placeholderLabel.setContentHuggingPriority(UILayoutPriority(rawValue: 0), for: .horizontal)
        self.placeholderLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.backgroundView.topAnchor.constraint(equalTo: self.topAnchor),
            self.backgroundView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.backgroundView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.backgroundView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            self.nicknameButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            self.nicknameButton.heightAnchor.constraint(equalToConstant: 24),
            self.nicknameButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -12),
            
            self.sendButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            self.sendButton.heightAnchor.constraint(equalToConstant: 24),
            self.sendButton.widthAnchor.constraint(equalToConstant: 24),
            self.sendButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -12),
            
            self.textView.leadingAnchor.constraint(equalTo: self.nicknameButton.trailingAnchor, constant: 12),
            self.textView.trailingAnchor.constraint(equalTo: self.sendButton.leadingAnchor, constant: -12),
            self.textView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            self.placeholderLabel.topAnchor.constraint(equalTo: self.textView.topAnchor),
            self.placeholderLabel.leadingAnchor.constraint(equalTo: self.textView.leadingAnchor),
            self.placeholderLabel.trailingAnchor.constraint(equalTo: self.textView.trailingAnchor),
            self.placeholderLabel.bottomAnchor.constraint(equalTo: self.textView.bottomAnchor),
            
            self.heightAnchor.constraint(equalToConstant: 48),
            // 한 줄의 높이를 알 수 없다, 폰트의 높이를 가져와 중앙에 놓을 수 있도록 한다.
            self.textView.heightAnchor.constraint(equalToConstant: self.textView.font!.lineHeight)
        ])
        
        // text를 작성하면 placeHolder 텍스트가 없어짐
        self.textView.delegate = self
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


// TextViewDelegate 확장
extension ReplyTextView: UITextViewDelegate {
    
    func textViewDidChange(_ textView: UITextView) {
        // textView 값을 가져와서
        let text = textView.text as NSString
        // 길이가 0이 아니면 없어진다.
        self.placeholderLabel.isHidden = text.length > 0
    }
}
