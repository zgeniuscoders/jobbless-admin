//
//  MessageItem.swift
//  jobbless admin
//
//  Created by ZGenius on 10/06/2024.
//

import SwiftUI

struct MessageItem: View {

    let message: String
    let isSender: Bool
    
    @State private var isShowTime = false
    
    var body: some View {
        VStack(alignment: isSender ? .trailing : .leading){
            HStack{
                Text(message)
                    .foregroundStyle(.gray)
                    .padding()
                    .background(isSender ? .green : .primary)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                
            }.frame(maxWidth: 360, alignment: isSender ? .trailing : .leading).onTapGesture {
                isShowTime.toggle()
            }
            
            if isShowTime {
                Text("10:00").foregroundStyle(.gray).font(.caption).padding(.horizontal)
            }
            
        }.frame(maxWidth: .infinity, alignment: isSender ? .trailing : .leading)
    }
    
}

#Preview {
    MessageItem(message: "hello", isSender: false)
}
