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
        label.text = "에브리타임"
        // 라벨 최대 길이 수
        label.numberOfLines = 1
        return label
    }()
    
    // UI text field (아이디, 패스워드)
    private let idTextField: InsertTextField = {
        let idText = InsertTextField()
        idText.insertX = 16
        idText.translatesAutoresizingMaskIntoConstraints = false
        idText.placeholder = "아이디"
        idText.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        idText.backgroundColor = UIColor(r: 227, g: 227, b: 229)
        idText.layer.cornerRadius = 20
        // true로 해야 radius가 정상적으로 작동
        idText.clipsToBounds = true
        return idText
    }()
    
    private let passwordTextField: InsertTextField = {
        let passwordText = InsertTextField()
        passwordText.insertX = 16
        passwordText.translatesAutoresizingMaskIntoConstraints = false
        passwordText.placeholder = "비밀번호"
        passwordText.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        passwordText.backgroundColor = UIColor(r: 227, g: 227, b: 229)
        passwordText.layer.cornerRadius = 20
        // 패스워드는 안보이도록
        passwordText.isSecureTextEntry = true
        // true로 해야 radius가 정상적으로 작동
        passwordText.clipsToBounds = true
        return passwordText
    }()
    
    // UIButtion (로그인, 회원가입)
    private let loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("에브리타임 로그인", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(r: 198, g:41, b: 23)
        button.layer.cornerRadius = 20
        button.clipsToBounds = true
        return button
    }()
    
    private let signUpButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("회원가입", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.setTitleColor(UIColor(w: 41), for: .normal)
        return button
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
        
        self.container.addArrangedSubview(self.idTextField)
        self.container.addArrangedSubview(self.passwordTextField)
        
        // button
        self.container.addArrangedSubview(self.loginButton)
        self.container.addArrangedSubview(self.signUpButton)
        
        // custom spacinfg
        self.container.setCustomSpacing(7, after: self.titleImageView)
        self.container.setCustomSpacing(50, after: self.titleLabelView)
        self.container.setCustomSpacing(9, after: self.idTextField)
        self.container.setCustomSpacing(9, after: self.passwordTextField)
        self.container.setCustomSpacing(30, after: self.loginButton)
        
        NSLayoutConstraint.activate([
            self.container.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            self.container.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50),
            self.container.centerYAnchor.constraint(equalTo:  self.view.centerYAnchor, constant: -25),
             
            self.titleImageView.heightAnchor.constraint(equalToConstant: 60),
            self.titleImageView.widthAnchor.constraint(equalToConstant: 60),
            
            // text field sizing
            self.idTextField.leadingAnchor.constraint(equalTo: self.container.leadingAnchor),
            self.idTextField.trailingAnchor.constraint(equalTo: self.container.trailingAnchor),
            self.idTextField.heightAnchor.constraint(equalToConstant: 43),
            
            self.passwordTextField.leadingAnchor.constraint(equalTo: self.container.leadingAnchor),
            self.passwordTextField.trailingAnchor.constraint(equalTo: self.container.trailingAnchor),
            self.passwordTextField.heightAnchor.constraint(equalToConstant: 43),
            
            self.loginButton.leadingAnchor.constraint(equalTo: self.container.leadingAnchor),
            self.loginButton.trailingAnchor.constraint(equalTo: self.container.trailingAnchor),
            self.loginButton.heightAnchor.constraint(equalToConstant: 43),
            
            
        ])
        
    }
    
   
    
    
}
