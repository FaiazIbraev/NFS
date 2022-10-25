//
//  Task.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 25/10/22.
//

import Foundation
import Alamofire

enum Task{
    case requestPlain
    case requestParameters(parameters: [String: Any], encoding: ParameterEncoding)
    case compositeParameters(bodyParameters: [String: Any], bodyEncoding: ParameterEncoding, queryParameters: [String: Any])
}
