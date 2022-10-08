//
//  CustomTF.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 8/10/22.
//

import UIKit
import SnapKit

class CustomTF: UITextField{
    var type: TextFieldType
    
    init(type: TextFieldType){
        self.type = type
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        self.font = type.textFont
        self.textColor = type.textColor
    }
    
}
