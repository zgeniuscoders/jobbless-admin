//
//  ContentView.swift
//  jobbless admin
//
//  Created by ZGenius on 26/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            
            TabView{
                HomeView()
                    .tabItem {
                    Image(systemName: "house")
                }
                
                UserMessageListView()
                    .tabItem {
                    Image(systemName: "envelope.fill")
                }
                
                Text("plus")
                    .tabItem {
                        Image(systemName: "plus")
                    }
                
                SettingView()
                    .tabItem {
                    Image(systemName: "person")
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
