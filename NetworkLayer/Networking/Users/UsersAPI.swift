//
//  UsersAPI.swift
//  NetworkLayer
//
//  Created by Mohamed on 02/04/2022.
//

import Foundation

/*
protocol UsersAPIProtocol {
    func getUsers(completion: @escaping (Result<UsersResponse?, NSError>) -> Void)
}

class UsersAPI: BaseAPI<UsersNetworking>, UsersAPIProtocol {
    
    //MARK: - Requests
    
    func getUsers(completion: @escaping (Result<UsersResponse?, NSError>) -> Void) {
        
        self.fetchData(target: .getUsers, responseClass: UsersResponse.self) { (result) in
            completion(result)
        }
        
    }
}
*/

protocol UsersAPIProtocol {
    func getUsers(completion: @escaping (Result<BaseResponse<[UserModel]>?, NSError>) -> Void)
}

class UsersAPI: BaseAPI<UsersNetworking>, UsersAPIProtocol {
    
    //MARK: - Requests
    
    func getUsers(completion: @escaping (Result<BaseResponse<[UserModel]>?, NSError>) -> Void) {
        
        self.fetchData(target: .getUsers, responseClass: BaseResponse<[UserModel]>.self) { (result) in
            completion(result)
        }
        
    }
}
