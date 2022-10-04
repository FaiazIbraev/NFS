//
//  LoginVC.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 4/10/22.
//

import UIKit
import SnapKit

class LoginVC: BaseVC{
    
    private lazy var mainImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    private lazy var mainLabel: UILabel = {
       let label = UILabel()
        label.text = "Neo Finance System"
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.textColor = UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 1)
        
        return label
    }()
    
    private lazy var subLabel: UILabel = {
       let label = UILabel()
        label.text = "Войдите, чтобы продолжить"
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor = UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 1)
        
        return label
    }()
    
    private lazy var mainStack: UIStackView = {
       let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 16

        
        return stack
    }()
    
    private lazy var mailTextField: UITextField = {
       let tf = UITextField()
        tf.delegate = self
        tf.placeholder = "Введите свою почту"
        tf.textColor = UIColor(red: 0.773, green: 0.773, blue: 0.78, alpha: 1)
        tf.font = .systemFont(ofSize: 17, weight: .semibold)
        tf.borderStyle = .line
        
        tf.snp.makeConstraints { make in
            make.height.equalTo(50)
        } // dobavili vysotu odnomu text fieldu tak kak v stack dali fill equal
        
        return tf
    }()
    
    private lazy var passTextField: UITextField = {
       let tf = UITextField()
        tf.delegate = self
        tf.placeholder = "Введите свой пароль"
        tf.textColor = UIColor(red: 0.773, green: 0.773, blue: 0.78, alpha: 1)
        tf.font = .systemFont(ofSize: 17, weight: .semibold)
        tf.isSecureTextEntry = true
        tf.isUserInteractionEnabled = true
        tf.borderStyle = .line
        
        return tf
    }()
    
    private lazy var secureIcon: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "secure")
        image.contentMode = .scaleAspectFit
        
        let iconTapped = UITapGestureRecognizer(target: self, action: #selector(secureIconTapped))
        image.isUserInteractionEnabled = true
        image.addGestureRecognizer(iconTapped)
        
        return image
    }()
    
    private lazy var forgotPassLabel: UILabel = {
        let label = UILabel()
        label.text = "Забыли пароль?"
        label.textColor = UIColor(red: 0.627, green: 0.627, blue: 0.627, alpha: 1)
        label.font = .systemFont(ofSize: 13, weight: .semibold)
        
        return label
    }()
    
    private lazy var loginButton: UIButton = {
        let bt = UIButton()
        bt.setTitle("Войти", for: .normal)
        bt.backgroundColor = UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 1)
        bt.titleLabel?.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        bt.layer.cornerRadius = 8
        bt.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
        
        return bt
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    override func setupViews() {
        super.setupViews()
        
        view.addSubview(mainImage)
        view.addSubview(mainLabel)
        view.addSubview(subLabel)
        view.addSubview(mainStack)
        view.addSubview(forgotPassLabel)
        view.addSubview(secureIcon)
        view.addSubview(loginButton)
        
        [mailTextField, passTextField].forEach{mainStack.addArrangedSubview($0)} // dobavlenie v stack text fieldov. $0 kajdyi ob`ekt v massive
        
    }
    
    override func setupConstraints() {
        super.setupConstraints()
        
        mainImage.snp.makeConstraints { make in
            make.size.equalTo(64)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(152)
            make.leading.equalToSuperview().offset(16)
        }
        
        mainLabel.snp.makeConstraints { make in
            make.top.equalTo(mainImage.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        subLabel.snp.makeConstraints { make in
            make.top.equalTo(mainLabel.snp.bottom).offset(8)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        mainStack.snp.makeConstraints { make in
            make.top.equalTo(subLabel.snp.bottom).offset(45)
            make.leading.trailing.equalToSuperview().inset(16)
           
        }
        
        forgotPassLabel.snp.makeConstraints { make in
            make.top.equalTo(mainStack.snp.bottom).offset(8)
            make.trailing.equalToSuperview().inset(16)
        }
        
        secureIcon.snp.makeConstraints { make in
            make.centerY.equalTo(passTextField.snp.centerY)
            make.trailing.equalTo(passTextField).inset(5)
            make.size.equalTo(16)
        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(forgotPassLabel.snp.bottom).offset(24)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(46)
        }
        
    }
    
    override func setupValues() {
        super.setupValues()
    }
    
}

extension LoginVC{
    @objc func secureIconTapped(){
        self.passTextField.isSecureTextEntry = !self.passTextField.isSecureTextEntry
    }
    
    @objc func loginTapped(){
        
    }
    
}

extension LoginVC: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
