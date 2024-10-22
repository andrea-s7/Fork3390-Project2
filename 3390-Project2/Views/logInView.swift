//
//  logInView.swift
//  3390-Project2
//
//  Created by Andrea Serrano  on 10/22/24.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var errorMessage: String?

    var body: some View {
        VStack {
            Text("GEODASH")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text("Login")
                .font(.largeTitle)
                .padding()

            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            if let errorMessage = errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .padding()
            }

            Button(action: {
                // Validate and authenticate user
            }) {
                Text("Login")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            NavigationLink(destination: SignUpView()) {
                Text("Don't have an account? Sign Up")
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
