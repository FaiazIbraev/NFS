//
//  MainVC.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 4/10/22.
//

import Foundation
import SnapKit
import UIKit

class MainVC: BaseVC{
    
    private lazy var mainLabel: CustomLabel = {
        let label = CustomLabel(type: .mainLabel)
        label.text = "Транзакции"
        
        return label
    }()
    
    private lazy var mainStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.backgroundColor = .white
        stack.distribution = .fillEqually
        stack.alignment = .center
        return stack
    }()
    
    private lazy var incomeLabel: CustomLabel = {
        let label = CustomLabel(type: .balanceNameLabel)
        label.text = "Доход"
        label.textAlignment = .center
 
        return label
    }()
    
    private lazy var costLabel: CustomLabel = {
        let label = CustomLabel(type: .balanceNameLabel)
        label.text = "Расход"
        label.textAlignment = .center

        return label
    }()
    
    private lazy var balanceLabel: CustomLabel = {
        let label = CustomLabel(type: .balanceNameLabel)
        label.text = "Баланс"
        label.textAlignment = .center

        return label
    }()
    
    private lazy var lastRecords: UILabel = {
        let label = UILabel()
        label.text = "Последние записи"
        label.textColor = UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 1)
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        
        return label
    }()
    
    private lazy var desStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.backgroundColor = .white
        stack.distribution = .fillEqually
        stack.alignment = .center
        stack.layer.borderWidth = 1
        return stack
    }()
    
    
    override func setupViews() {
        super.setupViews()
        view.backgroundColor = UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1)
        
        view.addSubview(mainLabel)
        view.addSubview(mainStack)
        view.addSubview(lastRecords)
        [incomeLabel, costLabel, balanceLabel].forEach{mainStack.addArrangedSubview($0)}
        
        view.addSubview(desStack)
        
    }
    
    
    override func setupConstraints() {
        super.setupConstraints()
        
        mainLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(67)
            make.leading.equalToSuperview().offset(16)
        }
        
        mainStack.snp.makeConstraints { make in
            make.top.equalTo(mainLabel.snp.bottom).offset(21)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().inset(16)
            make.height.equalTo(90)
        }
        
        lastRecords.snp.makeConstraints { make in
            make.top.equalTo(mainStack.snp.bottom).offset(18.5)
            make.leading.equalToSuperview().offset(16)
        }
        
        desStack.snp.makeConstraints { make in
            make.top.equalTo(lastRecords.snp.bottom).offset(12.5)
            make.leading.trailing.equalToSuperview().inset(16)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-13)
        }
        
    }
    
    override func setupValues() {
        super.setupValues()
    }
    
}
