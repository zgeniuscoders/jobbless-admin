//
//  MessageView.swift
//  jobbless admin
//
//  Created by ZGenius on 10/06/2024.
//

import SwiftUI

struct UserMessageListView: View {
    var body: some View {
        
        NavigationStack{
            ScrollView{
                ForEach(1...12, id:\.self){message in
                    NavigationLink(value: message){
                        UserMessageItemView()
                    }
                }
            }
            .navigationTitle("Messages")
            .toolbarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem{
                    Image(systemName: "magnifyingglass")
                }
            }.navigationDestination(for: Int.self) { message in
                MessageView(username: "ssjsj", image: "1")
                    .navigationBarBackButtonHidden()
            }
        }
        
    }
}

#Preview {
    UserMessageListView()
}

