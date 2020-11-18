//
//  Net.swift
//  foursquareTest
//
//  Created by Denis Kotelnikov on 16.11.2020.
//

import Foundation

class Net {
    
    private let clientID = "U0XIGPBWS1IKRBVPASHQKJFGNDBFSR20VH0ARH4CGOCAUB0X"
    private let clientSecret = "D0IK031WYOP5PHIJ3AHJAR4L14XQQ3KBDHLBWFH5VOTZTCNR"
    private let baseURL = "https://api.foursquare.com/v2/venues/"
    private let location = "40.730610,-73.935242"
    
    //APPError enum which shows all possible errors
    enum APPError: Error {
        case networkError(Error)
        case dataNotFound
        case jsonParsingError(Error)
        case invalidStatusCode(Int)
    }
    
    //Result enum to show success or failure
    enum Result<T> {
        case success(T)
        case failure(APPError)
    }
    
    public func getVenuesList(completion: @escaping (Result<FoursquareResponse>) -> ()) {
        
        let query = [URLQueryItem(name: "ll", value: location),
                     URLQueryItem(name: "categoryId", value: "4bf58dd8d48988d1ca941735"),
                     URLQueryItem(name: "limit", value: "5")]
        
        dataRequest(method: "search", with: query, objectType: FoursquareResponse.self, completion: completion)
    }
    
    public func getVenuesDetails(id: String, completion: @escaping (Result<FoursquareDetailResponse>) -> ()) {
        let query: [URLQueryItem] = []
        dataRequest(method: id, with: query, objectType: FoursquareDetailResponse.self, completion: completion)
    }
    
    //dataRequest which sends request to given URL and convert to Decodable Object
    private func dataRequest<T: Decodable>(method: String, with Query: [URLQueryItem], objectType: T.Type, completion: @escaping (Result<T>) -> ()) {
        
        var component = URLComponents(string: baseURL+method)
        component?.queryItems = Query
        component?.queryItems?.append(contentsOf: [URLQueryItem(name: "client_id", value: clientID),
                                                   URLQueryItem(name: "client_secret", value: clientSecret),
                                                   URLQueryItem(name: "v", value: "20201117")])
        
        let session = URLSession.shared
        
        let request = URLRequest(url: component!.url!, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 60)
        
        let task = session.dataTask(with: request, completionHandler: { data, response, error in
            
            guard error == nil else {
                completion(Result.failure(Net.APPError.networkError(error!)))
                return
            }
            
            guard let data = data else {
                completion(Result.failure(APPError.dataNotFound))
                return
            }
            
            do {
                let decodedObject = try JSONDecoder().decode(objectType.self, from: data)
                completion(Result.success(decodedObject))
            } catch let error {
                completion(Result.failure(APPError.jsonParsingError(error as! DecodingError)))
            }
        })
        
        task.resume()
    }
    
}
