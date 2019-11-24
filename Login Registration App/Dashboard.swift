//
//  Dashboard.swift
//  Login Registration App
//
//  Created by Utkarsh Shekhar on 24/11/19.
//  Copyright © 2019 Utkarsh Shekhar. All rights reserved.
//

import SwiftUI

struct Dashboard: View {
    
    @State var firstname: String = ""
    @State var lastname: String = ""
    @State var username: String = ""
    @State var password: String = ""
    @State var mobileNumber: Int? = nil
    @State var dateOfBirth: String = ""
    @State var address: String = ""
    
    
    var body: some View {
        ZStack{
            Color(red:252.0/255.0, green:92.0/255.0, blue:101.0/255.0)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("firebase")
                    .scaledToFit()
                VStack {
                    TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
