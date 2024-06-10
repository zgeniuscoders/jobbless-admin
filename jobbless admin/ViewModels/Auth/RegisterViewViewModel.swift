//
//  RegisterViewViewModel.swift
//  jobbless admin
//
//  Created by ZGenius on 10/06/2024.
//

import Foundation

class RegisterViewViewModel: ObservableObject{
    
    @Published var email = ""
    @Published var password = ""
    @Published var username = ""
    
    @Published var errorMessage = ""
    
    
    func register(){
        guard validate() else {
            return 
        }
    }

    
    
    private func validate() -> Bool{
        
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
                && !username.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
                && !username.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            
            errorMessage = "Please fill all fields"
            
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid email."
            return false
        }
        
        
        guard password.count < 6 else {
            
            errorMessage = "Password must have more than 6 characters"
            return false
        }
        
        
        return true
    }
}
