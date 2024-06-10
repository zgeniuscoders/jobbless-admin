//
//  HomeViewViewModel.swift
//  jobbless admin
//
//  Created by ZGenius on 10/06/2024.
//

import Foundation

class HomeViewViewModel: ObservableObject{
    
    @Published var jobs: [Job] = []
    
    
    init() {
        getJobs()
    }
    
    
    func getJobs(){
        
    }
    
    
    
}
