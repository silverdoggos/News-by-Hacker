//
//  NetworkManager.swift
//  News by Hacker
//
//  Created by Артём Шишкин on 18.10.2019.
//  Copyright © 2019 Артём Шишкин. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let selfdata = data {
                        do {
                             let result = try decoder.decode(Result.self, from: selfdata)
                            DispatchQueue.main.async {
                                self.posts = result.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
