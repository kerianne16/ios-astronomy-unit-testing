//
//  MockDataLoader.swift
//  AstronomyTests
//
//  Created by Keri Levesque on 3/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    var request: URLRequest?
    var url: URL?
    var data: Data?
    var error: Error?
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        self.url = url
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
}
