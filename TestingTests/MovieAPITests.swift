//
//  MovieAPITests.swift
//  TestingTests
//
//  Created by C4Q on 4/24/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import XCTest
@testable import Testing

class MovieAPITests: XCTestCase {
    //func testMovieAPI() {
//        let exp = expectation(description: "movie results recieved")
//        var movieCount = 0
//        MovieAPI.searchMovies() { (error, data) in
//            if let error = error {
//                XCTFail("movie search failed")
//            } else if let data = data {
//                do {
//                    let decoder = JSONDecoder()
//                    let search = try decoder.decode(MovieSearch.self, from: data)
//                    movieCount = search.results.count
//                    exp.fulfill()
//                } catch {
//                    XCTFail("decoding error \(error)")
//                }
//            }
//
//        }
//        //async call needs a timeout
//        wait(for: [exp], timeout: 12.0)
//        XCTAssertGreaterThan(movieCount, 0, "Movie count should be greater than 0")
//
//
//    }
//
//    func testMovieExists() {
//        let exp = expectation(description: "movie results recieved")
//        var movieCount = 0
//        var movieSearch: MovieSearch!
//        MovieAPI.searchMovies { (error, data) in
//            if let error = error {
//                XCTFail("movie search failed")
//            } else if let data = data {
//                do {
//                    let decoder = JSONDecoder()
//                    var search = try decoder.decode(MovieSearch.self, from: data)
//                    movieSearch = search
//                    movieCount = search.results.count
//                    exp.fulfill()
//                } catch {
//                    XCTFail("decoding error \(error)")
//                }
//            }
//
//        }
//        //async call needs a timeout
//        wait(for: [exp], timeout: 12.0)
//        XCTAssertEqual(movieSearch.results[0].trackName, "Blue Collar Comedy Tour: One for the Road", "First movie is not the same")
//
//
//    }
}
