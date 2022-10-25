//
//  TargerType.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 25/10/22.
//

import Foundation
import Alamofire


protocol TargerType{
    var baseUrl: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var task: Task { get }
    var headers: [String : String]? { get }
}

