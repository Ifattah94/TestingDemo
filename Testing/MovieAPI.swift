//
//  MovieAPI.swift
//  Testing
//
//  Created by C4Q on 4/24/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import Foundation
struct MovieAPIClient {
    private init() {}
    let urlRequest = URLRequest(url: URL(string: "https://itunes.apple.com/search?media=movie&term=comedy&limit=100")!)
    static let manager = MovieAPIClient()
    func getMovies(completionHandler: @escaping ([Movie]) -> Void, errorHandler: @escaping (Error) -> Void) {
        let parseDataIntoMovies: (Data) -> Void = {(data) in
            do {
                let allResults = try JSONDecoder().decode(MovieSearch.self, from: data)
                let movieResults = allResults.results.filter({$0.contentAdvisoryRating == "Unrated"})
                completionHandler(movieResults)
            } catch {
                errorHandler(error)
            }
        }
        NetworkHelper.manager.performDataTask(with: urlRequest, completionHandler: parseDataIntoMovies, errorHandler: errorHandler)
    }
}
