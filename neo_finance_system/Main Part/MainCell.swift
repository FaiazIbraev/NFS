//
//  MainCell.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 11/10/22.
//

import UIKit

class MainCell: UITableViewCell{
    
    private lazy var recordImage: UIImageView = {
        let im = UIImageView()
        im.image = UIImage(named: "income")
        
        return im
    }()
    
    private lazy var organizationLabel: CustomLabel = {
        let label = CustomLabel(type: .organizationLabel)
        label.text = "Breez Pro"
        
        return label
    }()
    
    private lazy var walletLabel: CustomLabel = {
        let label = CustomLabel(type: .walletLabel)
        label.text = "Demir Bank"
        
        return label
    }()
    
    private lazy var dateLabel: CustomLabel = {
        let label = CustomLabel(type: .dateLabel)
        label.text = "12.01.2021"
        
        return label
    }()
    
    private lazy var amountLabel: CustomLabel = {
        let label = CustomLabel(type: .recordAmount)
        label.text = "+1000"
        
        return label
    }()
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(recordImage)
        addSubview(organizationLabel)
        addSubview(walletLabel)
        addSubview(dateLabel)
        addSubview(amountLabel)
        
        recordImage.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(16)
            make.size.equalTo(45)
        }
        
        organizationLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.leading.equalTo(recordImage.snp.trailing).offset(18)
            make.bottom.equalToSuperview().offset(-46)
        }
        
        walletLabel.snp.makeConstraints { make in
            make.top.equalTo(organizationLabel.snp.bottom).offset(0)
            make.leading.equalTo(recordImage.snp.trailing).offset(18)
            make.bottom.equalToSuperview().offset(-27)
        }
        
        dateLabel.snp.makeConstraints { make in
            make.top.equalTo(walletLabel.snp.bottom).offset(3)
            make.leading.equalTo(recordImage.snp.trailing).offset(18)
            make.bottom.equalToSuperview().offset(-8)
        }
        
        amountLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.trailing.equalToSuperview().inset(16)
            make.bottom.equalToSuperview().offset(-46)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
