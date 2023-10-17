//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by pranit on 21/09/23.
//

import Foundation

class NetworkManager : ObservableObject{
    @Published var posts = [Hit]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(HackerNewsResponse.self, from: safeData)
                            print(results)
                            DispatchQueue.main.async {
                                self.posts = results.hits
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
