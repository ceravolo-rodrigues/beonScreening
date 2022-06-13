//
//  File.swift
//  BeOnScreening
//
//  Created by Paulo Antonio Ceravolo on 13/06/22.
//

import Foundation
import Alamofire

class NetworkManager {
    
    static let numberApiEndpoint = "http://numbersapi.com/"
    static let defaultError = "There was a problem"
    
    static func get(numberOfChoice: String, completion: @escaping (String) -> Void) {
        AF.request(self.numberApiEndpoint + numberOfChoice).responseString{ response in

            if let resp = response.value {
                completion(resp)
            } else {
                completion(defaultError)
            }
        }
    }
}
