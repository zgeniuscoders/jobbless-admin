//
//  HomeView.swift
//  jobbless admin
//
//  Created by ZGenius on 10/06/2024.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeViewViewModel = HomeViewViewModel()
    
    var body: some View {
        ScrollView{
            LazyVStack(alignment: .leading){
                Text("Recent jobs")
                    .fontWeight(.medium)
                
                ForEach(0...6, id: \.self){ job in
                    JobItemView(title: "Designer")
                }
                
                
            }.padding()
        }.refreshable {
            homeViewViewModel.getJobs()
        }
    }
}

#Preview {
    HomeView()
}

struct JobItemView: View {
    
    var title: String
    var body: some View {
        HStack{
            
            Text(title)
                .foregroundStyle(.white)
            
            Spacer()
            
            Button{
                
            } label : {
                Image(systemName: "trash")
                    .foregroundStyle(.red)
            }
        }
        .padding()
        .background(.gray)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
    }
}
