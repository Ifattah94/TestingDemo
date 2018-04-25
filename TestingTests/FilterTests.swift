//
//  FilterTests.swift
//  TestingTests
//
//  Created by C4Q on 4/25/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import XCTest
@testable import Testing

class FilterTests: XCTestCase {
    func testMoviesRating() {
        var movies: [Movie]!
        
        let exp = expectation(description: "Movie results are all Unrated")
        MovieAPIClient.manager.getMovies(completionHandler: { (onlineMovies) in
            movies = onlineMovies
            
            exp.fulfill()
        }, errorHandler: {(error) in
            XCTFail("error \(error)")
            })
        wait(for: [exp], timeout: 10)
       XCTAssertEqual(movies[0].contentAdvisoryRating, "Unrated")
        
    }

    
}
