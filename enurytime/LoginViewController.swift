//
//  LoginViewController.swift
//  enurytime
//
//  Created by 차윤범 on 2022/07/17.
//

import Foundation
import UIKit

final class LoginViewController: UIViewController{
    
    // title icon
    private let titleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "login_title_icon")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    // description label
    private let descriptionLabelView: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = UIColor(w: 166)
        label.textAlignment = .center
        label.text = "대학 생활을 더 편하고 재밌게"
        // 라벨 최대 길이 수
        label.numberOfLines = 1
        return label
    }()
    
    // title label
    private let titleLabelView: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        label.textColor = UIColor(r: 198, g: 41, b: 23)
        label.textAlignment = .center
        label.text = "에누리타임"
        // 라벨 최대 길이 수
        label.numberOfLines = 1
        return label
    }()
    
    // create stackview
    private let container: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        // 분배 fill
        stackView.distribution = .fill
        // 여백 4
        stackView.spacing = 4
        // 축 수직
        stackView.axis = .vertical
        // 정렬은 중앙
        stackView.alignment = .center
        return stackView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.view.addSubview(self.container)
        // container가 stackView 이기 때문에
        self.container.addArrangedSubview(self.titleImageView)
        self.container.addArrangedSubview(self.descriptionLabelView)
        self.container.addArrangedSubview(self.titleLabelView)
        //self.container.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.container.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            self.container.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50),
            self.container.centerYAnchor.constraint(equalTo:  self.view.centerYAnchor),
             
            self.titleImageView.heightAnchor.constraint(equalToConstant: 60),
            self.titleImageView.widthAnchor.constraint(equalToConstant: 60)
        ])
        
    }
    
   
    
    
}
