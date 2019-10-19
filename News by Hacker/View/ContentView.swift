//
//  ContentView.swift
//  News by Hacker
//
//  Created by Артём Шишкин on 18.10.2019.
//  Copyright © 2019 Артём Шишкин. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkmanager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkmanager.posts) { post in
                NavigationLink(destination: Detail(url: post.url)){
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                    
                }
                .navigationBarTitle("News by Haker")
            }
            .onAppear {
                self.networkmanager.fetchData()
            }
        }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//    let posts = [Post(id: "1", title: "Hello"),
//                 Post(id: "2", title: "Привет"),
//                 Post(id: "3", title: "Bonjure")
//    ]
