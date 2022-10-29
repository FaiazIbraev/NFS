//
//  GetLastTransactionsModel.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 27/10/22.
//

import Foundation

struct GetLastTransactionsModel: Codable{
    var count: Int
    var results: [detailedData]?
    var next: String?
    var previous: String?
}

struct detailedData: Codable{
    var id: Int
    var type: String?
    var section: String?
    var category: String?
    var project: String?
    var sum: Int
    var wallet: String?
    var wallet_to: String?
    var contractor: String?
    var comment: String?
    var user: String?
    var date_join: String?
}
