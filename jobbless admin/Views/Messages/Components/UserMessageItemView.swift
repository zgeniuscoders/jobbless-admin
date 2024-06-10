//
//  UserMessageItemView.swift
//  jobbless admin
//
//  Created by ZGenius on 10/06/2024.
//

import SwiftUI

struct UserMessageItemView: View {
    var body: some View {
        HStack{
            Image("1")
                .resizable()
                .scaledToFill()
                .frame(width: 60,height: 60)
                .cornerRadius(50)
            
            VStack(alignment: .leading){
                Text("zgenius matondo").bold().foregroundStyle(.primary)
                Text("Hello dear mr zgenius").foregroundStyle(.gray)
            }
            
            Spacer()
            Text("10:30").foregroundColor(.gray).font(.caption)
        }.padding(.horizontal)
    }
}

#Preview {
    UserMessageItemView()
}
