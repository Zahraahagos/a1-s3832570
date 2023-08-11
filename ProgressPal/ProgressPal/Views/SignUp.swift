//
//  SignUp.swift
//  ProgressPal
//
//  Created by Chloe Harvey on 10/8/2023.
//

import SwiftUI

struct SignUp: View {
    @State private var email: String = "";
    @State private var password: String = "";
    
    var body: some View {
        VStack() {
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 20.0)
            
                .frame(maxHeight: 200)
            Text("Sign-up using your email").font(.custom("Jomhuria-Regular", size: 30.0))
                .foregroundColor(Color("Navy"));
            
            // Login
            
            TextField(text: $email, prompt: Text("Email")) {
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
            Spacer()
            
            Button {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            } label: {
                Text("Sign-up").font(.custom("Jomhuria-Regular", size: 30.0))
            }.buttonStyle(MainButton()).frame(maxWidth: 300)
            
            Spacer()
            
            Text("Or sign-up using the following").font(.subheadline).foregroundColor(Color("Navy")).bold()
        
            Spacer()
            
            signUpButtons().padding(.bottom, 20)
        }
        .padding()
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}

struct signUpButtons: View {
        var body: some View {
        VStack {
            Button {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            } label: {
                Label("Sign-up with Gmail", systemImage: "envelope.fill")
             }
            }.buttonStyle(SecondaryButton())
            Button {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            } label: {
                Label("Sign-up with Apple", systemImage: "apple.logo")
            }.buttonStyle(SecondaryButton())
            Button {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            } label: {
                Label("Sign-up with Facebook", systemImage: "f.square.fill")
            }.buttonStyle(SecondaryButton())
        }
    }
