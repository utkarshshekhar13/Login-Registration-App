//
//  Registration.swift
//  Login Registration App
//
//  Created by Utkarsh Shekhar on 24/11/19.
//  Copyright © 2019 Utkarsh Shekhar. All rights reserved.
//

import SwiftUI

struct Registration: View {
    
    @State var firstname: String = ""
    @State var lastname: String = ""
    @State var username: String = ""
    @State var password: String = ""
    @State var mobileNumber: String = ""
    @State var dateOfBirth: String = ""
    @State var permanentAddress: String = ""
    @State var temporaryAddress: String = ""
    var body: some View {
        NavigationView{
            
            ZStack{
                Color(red:252.0/255.0, green:92.0/255.0, blue:101.0/255.0)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("firebase")
                        .scaledToFit()
                    
                    TextFieldLayout(placeholder: "Enter your Firstname", textValue: firstname)
                    TextFieldLayout(placeholder: "Enter your Lastname", textValue: lastname)
                    TextFieldLayout(placeholder: "Enter your Email Id", textValue: username)
                    TextFieldLayout(placeholder: "Enter your Password", textValue: password)
                    TextFieldLayout(placeholder: "Enter your Mobile Number", textValue: mobileNumber)
                    TextFieldLayout(placeholder: "Enter your DOB dd/mm/yyyy", textValue: dateOfBirth)
                    TextFieldLayout(placeholder: "Enter your Permanent Address", textValue: permanentAddress)
                    TextFieldLayout(placeholder: "Enter your Temporary Address", textValue: temporaryAddress)
                    
                    
                    NavigationLink(destination: Dashboard()) {
                        EmptyView()
                        Text("Sign Up")
                            .foregroundColor(Color.white)
                            .fontWeight(Font.Weight.semibold)
                            .padding()
                            .frame(width: 200.0, height:50.0)
                            .border(Color.white,width:1)
                            .cornerRadius(10.0)
                    }
                }.padding(.bottom,150)
            }
        }
    }
}


struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
    }
}

struct TextFieldLayout: View {
    
    @State var placeholder : String = ""
    @State var textValue : String = ""
    
    var body: some View {
        VStack {
            Spacer()
            TextField(placeholder, text: $textValue)
                .padding(.all)
                .border(Color.white,width: 1)
                .cornerRadius(10.0)
                .foregroundColor(Color.white)
                .accentColor(Color.white)
            //                                .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
            
            
        }
        .padding(.horizontal,15)
        
    }
}
