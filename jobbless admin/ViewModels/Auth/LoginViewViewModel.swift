//
//  LoginViewViewModel.swift
//  jobbless admin
//
//  Created by ZGenius on 10/06/2024.
//

import Foundation

class LoginViewViewModel : ObservableObject{
    
    @Published var email = ""
    @Published var password = ""
        
    @Published var errorMessage = ""
    
    func login(){
        
    }
    
    func validate() -> Bool{
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty
                && !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Please fill in all fields."
            return false
        }
                        
        return true
    }
    
    private func insertUser(id: String){
        
    }
    
}
