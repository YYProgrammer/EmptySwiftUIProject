//
//  ContentView.swift
//  EmptySwiftUIProject
//
//  Created by HT-YuYou on 2024/11/20.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            WebImage(url: URL(string: "https://fastly.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI"))
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
