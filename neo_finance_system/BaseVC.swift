//
//  BaseVC.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 4/10/22.
//

import UIKit
import SnapKit

class BaseVC: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
        setupValues()
        
    }
    
    func setupViews(){
        view.backgroundColor = .white
    }
    
    func setupConstraints(){
        
    }
    
    func setupValues(){
        
    }
}

