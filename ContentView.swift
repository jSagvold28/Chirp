//
//  ContentView.swift
//  Chirp
//
//  Created by Jayce Sagvold on 12/21/22.
//

import SwiftUI

struct ContentView: View {
    
    // Signup/Login varibles
    
    @State private var username: String = ""
    
    @State private var DigitPasscode: String = ""
    
    @State private var EmailAdress: String = ""
    
    @State private var SkipLogin: Bool = false // Set to false by default, user can choose to go into Chirp without an account.
    
    
    var body: some View {
        
        
        NavigationView {
            
            
            
            
            List {
                
                
                TextField("Username*", text: $username)
                
                TextField("Digit passcode*", text: $DigitPasscode)
                    .keyboardType(.numberPad)
                
                TextField("Email (optinal)", text: $EmailAdress)
                    .keyboardType(.emailAddress)
                
                
                NavigationLink {
                    
                    HomeView()
                } label: {
                    Text("Sign in with your account.")
                }
                
                
                
                NavigationLink {
                    
                    HomeView()
                } label: {
                    Text("Skip login (you will be unable to use like and comment")
                }
            }
            
            
        }.navigationTitle("")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
