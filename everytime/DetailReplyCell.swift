//
//  DetailReplyCell.swift
//  everytime
//
//  Created by 차윤범 on 2022/07/24.
//

import Foundation
import UIKit

final class DetailReplyCell : UITableViewCell {
    
    
    private let profileImageView : UIImageView = {
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "detail_reply_profile")
        imageView.contentMode = .scaleAspectFit
        return imageView
        
    }()
    
    private let nicknameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .bold)
        label.textColor = UIColor(w: 41)
        label.textAlignment = .left
        label.text = "익명"
        label.numberOfLines = 1
        return label
    }()
    
    private let titleLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor = .init(w: 68)
        label.textAlignment = .left
        label.text = "아 월급 마렵다 ㅋㅋ루삥빵뽕"
        label.numberOfLines = 0
        
        return label
    }()
    
    private let timeLabel: UILabel = {
        let label = UILabel()
        var formatter = DateFormatter()
        formatter.dateFormat = "MM/dd HH:mm"
        var current_date_string : String = formatter.string(from: Date())
        
        label.font = .systemFont(ofSize: 13, weight: .medium)
        label.textColor = .init(w: 166)
        label.textAlignment = .left
        label.text = current_date_string
        label.numberOfLines = 1
        
        return label
    }()
    
    private let nicknameContainer : UIStackView = {
        
         let stackView = UIStackView()
        
        stackView.axis = .horizontal
        stackView.spacing = 3
        return stackView
        
    }()
    
    private let replyReactionView = ReplyReactionView()
    
    
    private let container : UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.spacing = 3
        return stackView
        
    }()
    
    
    override init(style : UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = .none
        self.contentView.addSubview(self.container)
        self.container.translatesAutoresizingMaskIntoConstraints = false
        self.container.addArrangedSubview(self.nicknameContainer)
        self.container.addArrangedSubview(self.titleLabel)
        self.container.addArrangedSubview(self.timeLabel)
        
        self.nicknameContainer.addArrangedSubview(self.profileImageView)
        self.nicknameContainer.addArrangedSubview(self.nicknameLabel)
        self.nicknameContainer.addArrangedSubview(self.replyReactionView)
        
        NSLayoutConstraint.activate([
            self.container.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8),
            self.container.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 24),
            self.container.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -24),
            self.container.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -6),
            
            self.nicknameContainer.heightAnchor.constraint(equalToConstant: 24),
            self.profileImageView.widthAnchor.constraint(equalToConstant: 24),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupData(text: String) {
        self.titleLabel.text = text
    }
}
