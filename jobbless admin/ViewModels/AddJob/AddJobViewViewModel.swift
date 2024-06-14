//
//  AddJobViewViewModel.swift
//  jobbless admin
//
//  Created by ZGenius on 14/06/2024.
//

import Foundation

class AddJobViewViewModel : ObservableObject{
    
    @Published var title = ""
    @Published var content = ""
    @Published var category = ""
    
    func add(){
        
    }
    
    func validate() -> Bool{
        guard !title.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ||
                !content.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        return true
    }
    
    
}
