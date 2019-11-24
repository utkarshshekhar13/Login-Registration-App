//
//  ContentView.swift
//  Login Registration App
//
//  Created by Utkarsh Shekhar on 24/11/19.
//  Copyright © 2019 Utkarsh Shekhar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username : String = ""
    @State private var password : String = ""
  
    var body: some View {
        NavigationView {
            ZStack{
                Color(red:0.09, green:0.63, blue:0.52)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("firebase")
                        .scaledToFit()
                    
                    
                    Spacer()
                    TextField("Username", text: $username)
                        .foregroundColor(Color.white)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .padding(.all)
                        .border(Color.white,width:1)
                        .cornerRadius(10.0)
                    
                    
                    SecureField("Password", text: $password)
                        .foregroundColor(Color.white)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .padding(.all)
                        .border(Color.white,width:1)
                        .cornerRadius(10.0)
                    
                    HStack {
                        NavigationLink(destination: Dashboard(username:username) ) {
                            
                            Text("Sign In")
                                .foregroundColor(Color.white)
                                .fontWeight(Font.Weight.semibold)
                                .padding()
                                .frame(width: 200.0, height:50.0)
                                .border(Color.white,width:1)
                                .cornerRadius(10.0)

                        }
                    
                        
                        Text("Forgot Password?").foregroundColor(Color.white)
                    }.padding()
                    Spacer()
                    NavigationLink(destination: Registration()) {
                        Text("Not a User? Sign Up Here").foregroundColor(Color.white)
                    }
                    Spacer()
                }.padding(.horizontal,15)
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
