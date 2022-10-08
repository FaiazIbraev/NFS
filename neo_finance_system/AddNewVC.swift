//
//  AddNewVC.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 4/10/22.
//

import Foundation
import SnapKit

class AddNewVC: BaseVC{
    
    private lazy var rejectLabel: CustomLabel = {
        let label = CustomLabel(type: .rejectLabel)
        label.text = "Отмена"
        return label
    }()
    
    private lazy var newRecLabel: CustomLabel = {
        let label = CustomLabel(type: .newRecordLabel)
        label.text = "Новая запись"
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
        let label = CustomLabel(type: .recordNameLabel)
        label.text = "Доход"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var costLabel: CustomLabel = {
        let label = CustomLabel(type: .recordNameLabel)
        label.text = "Расход"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var balanceLabel: CustomLabel = {
        let label = CustomLabel(type: .recordNameLabel)
        label.text = "Перевод"
        label.textAlignment = .center
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        view.backgroundColor = UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1)
        
        view.addSubview(rejectLabel)
        view.addSubview(newRecLabel)
        view.addSubview(mainStack)
        [incomeLabel, costLabel, balanceLabel].forEach{mainStack.addArrangedSubview($0)}
        
    }
    
    override func setupConstraints() {
        super.setupConstraints()
        
        rejectLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(9.5)
            make.leading.equalToSuperview().offset(17)
        }
        
        newRecLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(9.5)
            make.centerX.equalToSuperview()
        }
        
        mainStack.snp.makeConstraints { make in
            make.top.equalTo(newRecLabel.snp.bottom).offset(17.5)
            make.centerX.equalToSuperview()
            make.height.equalTo(32)
        }
        
    }
    
    override func setupValues() {
        super.setupValues()
    }
    
    
    
}
