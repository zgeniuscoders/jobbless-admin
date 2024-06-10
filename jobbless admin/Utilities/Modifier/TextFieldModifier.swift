//
//  TextFieldModifier.swift
//  jobbless admin
//
//  Created by ZGenius on 10/06/2024.
//

import SwiftUI


struct TextFieldModifier : ViewModifier{
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.gray)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
}
