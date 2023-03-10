//
//  ContentView.swift
//  HackerNews
//
//  Created by Роман Замолотов on 28.02.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text("\(post.title)")
            }
            .navigationTitle("Hacker News")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Hola"),
    Post(id: "3", title: "You")
    
]
