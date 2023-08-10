//
//  Login.swift
//  ProgressPal
//
//  Created by Chloe Harvey on 10/8/2023.
//

import SwiftUI

struct Login: View {
    @State private var username: String = "";
    @State private var password: String = "";
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 20.0)
                .frame(maxHeight: 300)
            Text("Login").font(.custom("Jomhuria-Regular", size: 60.0))
                .foregroundColor(Color("Navy"));
            
            // Login form
            Form {
                TextField(text: $username, prompt: Text("Username")) {
                    Text("Username")
                }.padding(10)
                    .background(RoundedRectangle(cornerRadius: 15.0)
                        .fill(Color("Pink 3").opacity(0.5)))
                    .listRowSeparator(.hidden)
                
                SecureField(text: $password, prompt: Text("Password")) {
                    Text("Password")
                }.padding(10.0)
                    .background(RoundedRectangle(cornerRadius: 15.0)
                        .fill(Color("Pink 3")
                            .opacity(0.5)))
                    .listRowSeparator(.hidden)
                
                // Login & forgot password buttons
                VStack {
                    Button {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    } label: {
                        Text("Login").font(.custom("Jomhuria-Regular", size: 30.0))
                    }.buttonStyle(MainButton()).frame(maxWidth: .infinity)
                    
                    Button {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    } label: {
                        Text("Forgot password").font(.custom("Jomhuria-Regular", size: 30.0))
                    }.foregroundColor(Color("Navy")).padding(.top, 20).frame(alignment: .center)
                }
                
            }.scrollContentBackground(.hidden)
            
        }
        
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

