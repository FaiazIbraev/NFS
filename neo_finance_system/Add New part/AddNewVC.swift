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
        
        let labelTapped = UITapGestureRecognizer(target: self, action: #selector(rejectTapped))
        label.isUserInteractionEnabled = true
        label.addGestureRecognizer(labelTapped)
        
        return label
    }()
    
    private lazy var newRecLabel: CustomLabel = {
        let label = CustomLabel(type: .newRecordLabel)
        label.text = "Новая запись"
        return label
    }()

    private lazy var segmentController: UISegmentedControl = {
        let sg = UISegmentedControl()
        sg.replaceSegments(segments: ["Доход", "Расход", "Перевод"])
        sg.isUserInteractionEnabled = true
        sg.addTarget(self, action: #selector(segmentTapped), for: .valueChanged)
        sg.selectedSegmentIndex = 0
        
        return sg
    }()
    
    private lazy var dataTF: CustomTF = {
        let tf = CustomTF(type: .date)
        
        return tf
    }()
    
    private lazy var amountTF: CustomTF = {
        let tf = CustomTF(type: .amount)
        
        return tf
    }()
    
    private lazy var directionTF: CustomTF = {
        let tf = CustomTF(type: .direction)
        
        return tf
    }()
    
    private lazy var categoryTF: CustomTF = {
        let tf = CustomTF(type: .category)
        
        return tf
    }()
    
    private lazy var organizationTF: CustomTF = {
        let tf = CustomTF(type: .organization)
        
        return tf
    }()
    
    private lazy var projectTF: CustomTF = {
        let tf = CustomTF(type: .poject)
        
        return tf
    }()
    
    private lazy var walletTF: CustomTF = {
        let tf = CustomTF(type: .wallet)
        
        return tf
    }()
    
    private lazy var commentsTF: CustomTF = {
        let tf = CustomTF(type: .comments)
        
        return tf
    }()
    
    private lazy var fromWalletTF: CustomTF = {
        let tf = CustomTF(type: .fromBank)
        
        return tf
    }()
    
    private lazy var toWalletTF: CustomTF = {
        let tf = CustomTF(type: .toBank)
        
        return tf
    }()
    
    private lazy var mainStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.backgroundColor = .white
        stack.alignment = .leading
        stack.layoutMargins = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        stack.isLayoutMarginsRelativeArrangement = true
        stack.distribution = .fillEqually
        return stack
    }()
    
    private lazy var saveButton: CustomButton = {
        let bt = CustomButton(type: .saveButton)
        bt.setTitle("Сохранить", for: .normal)
        return bt
    }()
    
    
    override func setupViews() {
        super.setupViews()
        view.backgroundColor = UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1)
        
        view.addSubview(rejectLabel)
        view.addSubview(newRecLabel)
        view.addSubview(segmentController)
        view.addSubview(mainStack)
        
        [dataTF, amountTF, directionTF, categoryTF, organizationTF, projectTF, walletTF, commentsTF].forEach {mainStack.addArrangedSubview($0)}

        
        view.addSubview(saveButton)

        
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
            make.height.equalTo(23)
        }
        
        segmentController.snp.makeConstraints { make in
            make.top.equalTo(newRecLabel.snp.bottom).offset(17.5)
            make.leading.trailing.equalToSuperview().inset(16.5)
            make.height.equalTo(32)
        }
        
        mainStack.snp.makeConstraints { make in
            make.top.equalTo(segmentController.snp.bottom).offset(9)
            make.leading.trailing.equalToSuperview().inset(0)
            make.bottom.equalToSuperview().inset(400)
        }
        
        saveButton.snp.makeConstraints { make in
            make.top.equalTo(mainStack.snp.bottom).offset(16)
            make.leading.trailing.equalToSuperview().inset(16.5)
            make.height.equalTo(50)
        }
        
    }
    
    override func setupValues() {
        super.setupValues()
    }
    
    
    
}


extension AddNewVC{
    @objc func rejectTapped(){
        self.dismiss(animated: true)
    }
    
    @objc func segmentTapped(){
        switch segmentController.selectedSegmentIndex{
        case 0:
            print("0")
            incomeButton()
        case 1:
            print("1")
            incomeButton()
        case 2:
            print("2")
            transferButton()
        default: print("Default")
        }
    }
    
    private func transferButton(){
        directionTF.removeFromSuperview()
        categoryTF.removeFromSuperview()
        organizationTF.removeFromSuperview()
        projectTF.removeFromSuperview()
        walletTF.removeFromSuperview()
        
        mainStack.insertArrangedSubview(fromWalletTF, at: 2)
        mainStack.insertArrangedSubview(toWalletTF, at: 3)

    }
    
    private func incomeButton(){
        fromWalletTF.removeFromSuperview()
        toWalletTF.removeFromSuperview()
        
        mainStack.insertArrangedSubview(directionTF, at: 2)
        mainStack.insertArrangedSubview(categoryTF, at: 3)
        mainStack.insertArrangedSubview(organizationTF, at: 4)
        mainStack.insertArrangedSubview(projectTF, at: 5)
        mainStack.insertArrangedSubview(walletTF, at: 6)

    }
}

