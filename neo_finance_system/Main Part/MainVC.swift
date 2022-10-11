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
    
    private lazy var logoutButton: UIButton = {
        let bt = UIButton()
        bt.setImage(UIImage.init(systemName: "return"), for: .normal)
        bt.tintColor = .black
        
        return bt
    }()
    
    private lazy var totalRecButton: UIButton = {
        let bt = UIButton()
        bt.setImage(UIImage(named: "totalRec"), for: .normal)
        return bt
    }()
    
    private lazy var mainLabel: CustomLabel = {
        let label = CustomLabel(type: .mainLabel)
        label.text = "Транзакции"
        
        return label
    }()
    
    private lazy var mainStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.backgroundColor = .white
        stack.alignment = .bottom
        
        return stack
    }()
    
    private lazy var secMainStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.backgroundColor = .white
        stack.distribution = .fillEqually
        stack.alignment = .top
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
    
    private lazy var incomeAmountLabel: CustomLabel = {
        let label = CustomLabel(type: .balanceAmountLabel)
        label.text = "+5000"
        label.textAlignment = .center
 
        return label
    }()
    
    private lazy var costAmountLabel: CustomLabel = {
        let label = CustomLabel(type: .balanceAmountLabel)
        label.text = "-1000"
        label.textAlignment = .center

        return label
    }()
    
    private lazy var balanceAmountLabel: CustomLabel = {
        let label = CustomLabel(type: .balanceAmountLabel)
        label.text = "+4000"
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
    
    private lazy var descripTableView: UITableView = {
        let tv = UITableView()
        tv.register(MainCell.self, forCellReuseIdentifier: "MainCell")
        tv.backgroundColor = UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1)
        tv.layer.masksToBounds = true
        tv.dataSource = self
        tv.delegate = self
        tv.rowHeight = 76
        
        return tv
    }()
    
    
    override func setupViews() {
        super.setupViews()
        view.backgroundColor = UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1)
        
        view.addSubview(logoutButton)
        view.addSubview(totalRecButton)
        view.addSubview(mainLabel)
        view.addSubview(mainStack)
        view.addSubview(secMainStack)
        view.addSubview(lastRecords)
        [incomeLabel, costLabel, balanceLabel].forEach{mainStack.addArrangedSubview($0)}
        [incomeAmountLabel, costAmountLabel, balanceAmountLabel].forEach{secMainStack.addArrangedSubview($0)}
        
        view.addSubview(descripTableView)
        
    }
    
    
    override func setupConstraints() {
        super.setupConstraints()
        
        logoutButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(32)
            make.trailing.equalToSuperview().offset(-19)
        }
        
        totalRecButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(32)
            make.trailing.equalTo(logoutButton.snp.leading).offset(-30)
        }
        
        mainLabel.snp.makeConstraints { make in
            make.top.equalTo(logoutButton.snp.bottom).offset(17)
            make.leading.equalToSuperview().offset(16)
        }
        
        mainStack.snp.makeConstraints { make in
            make.top.equalTo(mainLabel.snp.bottom).offset(21)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().inset(16)
            make.height.equalTo(45)
        }
        
        secMainStack.snp.makeConstraints { make in
            make.top.equalTo(mainStack.snp.bottom).offset(0)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().inset(16)
            make.height.equalTo(45)
        }
        
        lastRecords.snp.makeConstraints { make in
            make.top.equalTo(secMainStack.snp.bottom).offset(18.5)
            make.leading.equalToSuperview().offset(16)
        }
        
        descripTableView.snp.makeConstraints { make in
            make.top.equalTo(lastRecords.snp.bottom).offset(12.5)
            make.leading.trailing.equalToSuperview().inset(16)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(13)
        }
        
    }
    
    override func setupValues() {
        super.setupValues()
    }
    
}


extension MainVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! MainCell
        cell.backgroundColor = UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1)
        
        return cell
    }
    
    
}




