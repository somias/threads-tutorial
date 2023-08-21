//
//  RegistrationView.swift
//  ThreadsTutorial
//
//  Created by Milos on 19. 8. 2023..
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("threads-app-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                Group {
                    TextField("Enter your email", text: $email)
                        .autocapitalization(.none)
                    
                    SecureField("Enter your password", text: $password)
                    
                    TextField("Enter your full name", text: $fullname)
                    
                    TextField("Enter your username", text: $username)
                }.modifier(ThreadsTextFieldModifier())
            }
            
            Button {
                print("Login")
            } label: {
                Text("Sign up")
                    .modifier(ThreadsButtonModifier())
            }
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                    Text("Sign in")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .foregroundColor(.black)
            }.padding(.vertical, 16)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
