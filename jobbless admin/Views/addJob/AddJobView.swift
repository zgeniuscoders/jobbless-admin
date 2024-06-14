//
//  Addjobview.swift
//  jobbless admin
//
//  Created by ZGenius on 10/06/2024.
//

import SwiftUI

struct AddJobView: View {
    @StateObject var viewModel = AddJobViewViewModel()
    let tabs = ["ai", "web", "desktop","category"]
    
    var body: some View {
        VStack(alignment: .leading){
            
            Text("Add Job")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
  
            TextField("Job title",text: $viewModel.title)
                .textInputAutocapitalization(.none)
                .modifier(TextFieldModifier())
            

                Picker("Category", selection: $viewModel.category){
                    ForEach(tabs,id: \.self){ cat in
                        Text(cat)
                    }
                }
                .padding(.vertical,10)
                .pickerStyle(.menu)
                .frame(maxWidth: UIScreen.main.bounds.size.width)
                .foregroundStyle(.white)
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                
            TextField("Contenu",text: $viewModel.content,axis: .vertical)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .textInputAutocapitalization(.none)
                .lineLimit(10)
                .modifier(TextFieldModifier())
               
     
            
            Button{
                
            } label: {
                HStack{
                    Spacer()
                    Text("Ajouter")
                    Spacer()
                }
            }
            .padding()
            .background(.primary)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Spacer()
            
        }.padding()
    }
}

#Preview {
    AddJobView()
}
