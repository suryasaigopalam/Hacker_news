//
//  NetworkManager.swift
//  Hacker_news
//
//  Created by surya sai on 26/11/23.
//

import Foundation
class NetworkManager:ObservableObject {
   @Published var posts:[Post] = []
    func fetchData(){
        let url = URL(string:"http://hn.algolia.com/api/v1/search?tags=front_page")!
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) {[unowned self] data, response, error in
            let decoder = JSONDecoder()
       let results = try! decoder.decode(Results.self, from:data!)
            DispatchQueue.main.async {
                self.posts = results.hits
            }
        }
        task.resume()
        
    }
}
