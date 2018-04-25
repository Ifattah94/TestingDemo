//
//  ImageAPIClient.swift
//  Testing
//
//  Created by C4Q on 4/25/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import Foundation
import UIKit
class ImageAPIClient {
    private init() {}
    static let manager = ImageAPIClient()
    func getImage(from urlStr: String,
                  completionHandler: @escaping (UIImage) -> Void,
                  errorHandler: @escaping (Error) -> Void) {
        guard let url = URL(string: urlStr) else {
            return
        }
        
        let urlRequest = URLRequest(url: url)
        let completion: (Data) -> Void = {(data: Data) in
            guard let onlineImage = UIImage(data: data) else {
                return
            }
            completionHandler(onlineImage)
        }
        NetworkHelper.manager.performDataTask(with: urlRequest, completionHandler: completion, errorHandler: errorHandler)
    }
}
