//
//  NetworkHelper.swift
//  Testing
//
//  Created by C4Q on 4/25/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import Foundation
struct NetworkHelper {
    private init() {}
    static let manager = NetworkHelper()
    private let session = URLSession(configuration: .default)
    func performDataTask(with request: URLRequest,
                         completionHandler: @escaping (Data) -> Void,
                         errorHandler: @escaping (Error) -> Void) {
        session.dataTask(with: request){(data, response, error) in
            DispatchQueue.main.async {
                guard let data = data else { return}
                if let error = error {
                    errorHandler(error)
                }
                completionHandler(data)
            }
            }.resume()
    }
}
