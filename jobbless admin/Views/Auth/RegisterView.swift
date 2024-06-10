//
//  RegisterView.swift
//  jobbless admin
//
//  Created by ZGenius on 10/06/2024.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var registrViewViewModel = RegisterViewViewModel()
    
    var body: some View {
        NavigationStack{
            
            VStack(alignment:.leading){
                
                Text("Register")
                    .font(.title)
                    .bold()
                
                
                    
                Text("Welcom back to your account")
                    .font(.title2)
                    .padding(.bottom)
                
  
                Text("error")
                        .font(.caption)
                        .padding(.bottom)
                        .foregroundStyle(.red)
                
                

                
                TextField("email", text: $registrViewViewModel.email)
                    .textInputAutocapitalization(.none)
                    .modifier(TextFieldModifier())
                
                TextField("username", text: $registrViewViewModel.username)
                    .textInputAutocapitalization(.none)
                    .modifier(TextFieldModifier())
                
                SecureField("password", text: $registrViewViewModel.password)
                    .textInputAutocapitalization(.none)
                    .modifier(TextFieldModifier())
                
                Button{
                    registrViewViewModel.register()
                } label : {
                    Spacer()
                    Text("Register")
                    Spacer()
                }
                .padding()
                .foregroundStyle(.white)
                .background(.primary)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                
                Spacer()
                
                Divider()
                NavigationLink{
                    LoginView()
                } label : {
                    HStack{
                        Spacer()
                        Text("already have an account? login")
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
    RegisterView()
}
