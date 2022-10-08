//
//  CustomLabel.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 8/10/22.
//

import UIKit
import SnapKit

class CustomLabel: UILabel{
    var type: LabelType
    
    init(type: LabelType){
        self.type = type
        super.init(frame: .zero)
        setup()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        self.textColor = type.textColor
        self.font = type.textFont
        self.numberOfLines = type.numberOfLines
    }
    
}

