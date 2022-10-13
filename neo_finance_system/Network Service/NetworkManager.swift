//
//  NetworkManager.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 13/10/22.
//

import Foundation

protocol NetworkManagerProtocol{
    func getTotalBalance(completion: ((TotalBalance)->Void)?)
}

class NetworkManager: NetworkManagerProtocol{
    
    let urlSession = URLSession.shared
    
    func getTotalBalance(completion: ((TotalBalance)->Void)?){
        let url = URL(string: URLStrings.getTotalBalance.urlString)
        if let url = url {
            urlSession.dataTask(with: url) { data, respons, error in
                if let data = data {
                    if let balance = self.parseJSON(data: data){
                        completion!(balance)
                    }
                }
            }.resume()
        }
    }
    
}


extension NetworkManager{
    private func parseJSON(data: Data) -> TotalBalance?{
        let decoder = JSONDecoder()
        
        do{
            let decodedData = try
            decoder.decode(TotalBalance.self, from: data)
            return decodedData
        }catch{
            print(error)
            return nil
        }
        
    }
}
