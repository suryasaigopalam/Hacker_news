//
//  DetailView.swift
//  Hacker_news
//
//  Created by surya sai on 26/11/23.
//

import SwiftUI
import WebKit

struct DetailView: View,Hashable {
    let url:String?
    var body: some View {
       WebView(urlString: url)
        
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(url)
    }
}


#Preview {
    DetailView(url: "https://www.apple.com")
}
struct WebView:UIViewRepresentable {
    let urlString:String!
    func makeUIView(context: Context) -> WebView.UIViewType{
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let url = URL(string: urlString)!
        let request = URLRequest(url: url)
        uiView.load(request)
        
    }
    
}

