//
//  CustomButton.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 8/10/22.
//

import UIKit

class CustomButton: UIButton{
    var type: CustomButtonType
    
    init(type: CustomButtonType){
        self.type = type
        super.init(frame: .zero)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        self.backgroundColor = type.backgroundColor
        self.titleLabel?.textColor = type.textColor
        self.titleLabel?.font = type.textFont
    }
    
}
