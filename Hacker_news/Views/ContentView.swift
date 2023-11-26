//
//  ContentView.swift
//  Hacker_news
//
//  Created by surya sai on 26/11/23.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.posts,id:\.objectID) { post in
                NavigationLink(destination: DetailView(url: post.url), label: {
                    Label(post.title, systemImage: "bolt.fill")
                        .labelStyle(.titleOnly)
                })
                
            
        }
       .navigationBarTitle("Hacker News")
    }
        .onAppear {networkManager.fetchData()}
        
    }
}

#Preview {
    ContentView()
}

