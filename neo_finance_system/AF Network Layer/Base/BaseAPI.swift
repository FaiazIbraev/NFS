//
//  BaseAPI.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 25/10/22.
//

import Foundation
import Alamofire

class BaseAPI <T: TargerType> {
    func getData<M: Codable>(target: T, response: M.Type, onSuccess: @escaping((M)-> Void), onError: @escaping(APIError)->Void){
        let method = Alamofire.HTTPMethod(rawValue: target.method.rawValue)
        let header = Alamofire.HTTPHeaders(target.headers ?? [:])
        let parameters = buildParameters(task: target.task)
    
        
        AF.request(target.baseUrl + target.path, method: method, parameters: parameters.0, encoding: parameters.1, headers: header).responseData { (data) in
            
            print("Get Data: \(data.response?.statusCode)")
            
            if data.error != nil{
                onError(.notFound)
            }
            
            if let statusCode = data.response?.statusCode{
                self.handleStatusCode(statusCode: statusCode) { (error) in
                    onError(error)
                }
            }
            
            if let data = data.data{
                self.handleResponseData(result: data) { (data) in
                    onSuccess(data)
                } onError: { (error) in
                    onError(error)
                }
            }
        }
    }
    
    private func handleResponseData<K:Codable>(result: Data, onSuccess: @escaping(K) -> Void, onError: @escaping(APIError) -> Void){
        do{
           let decoder = JSONDecoder()
            let decodedData = try decoder.decode(K.self, from: result)
            onSuccess(decodedData)
        } catch{
            onError(.badData)
        }
    }
    
    private func handleStatusCode(statusCode: Int, onError: @escaping (APIError)-> Void){
        switch statusCode{
        case 200..<300: break
        case 300..<400: onError(.serverTroubleShooting)
        case 401: onError(.unauthorized)
        case 500..<600: onError(.serverTroubleShooting)
        default: break
        }
    }
    
    private func buildParameters(task: Task) -> ([String: Any], ParameterEncoding){
        switch task {
        case .requestPlain:
            return ([:], URLEncoding.default)
        case .requestParameters(let paremeters, let encoding):
            return (paremeters, encoding)
        case .compositeParameters(let bodyParameters, let bodyEncoding, let queryParameters):
            return ([:], URLEncoding.default)
        }
    }
    
}
