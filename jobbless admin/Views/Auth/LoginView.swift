//
//  LoginView.swift
//  jobbless admin
//
//  Created by ZGenius on 10/06/2024.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var loginViewViewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationStack{
            
            VStack(alignment:.leading){
                
                Text("Login")
                    .font(.title)
                    .bold()
                    
                Text("Welcom back to your account")
                    .font(.title2)
                    .padding(.bottom)
                
                TextField("email", text: $loginViewViewModel.email)
                    .textInputAutocapitalization(.none)
                    .modifier(TextFieldModifier())
                
                SecureField("password", text: $loginViewViewModel.password)
                    .textInputAutocapitalization(.none)
                    .modifier(TextFieldModifier())
                
                Button{
                    
                } label : {
                    Spacer()
                    Text("Login")
                    Spacer()
                }
                .padding()
                .foregroundStyle(.white)
                .background(.primary)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                
                Spacer()
                
                Divider()
                NavigationLink{
                    RegisterView()
                } label : {
                    HStack{
                        Spacer()
                        Text("you don't have an account? register")
                        Text("here")
                            .foregroundStyle(.green)
                        Spacer()
                    }.font(.footnote)
                }
                .foregroundStyle(.primary)
                .padding(.top)
                .navigationBarBackButtonHidden()
            }.padding()
        }
    }
}

#Preview {
    LoginView()
}
