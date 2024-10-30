//
//  ContentView.swift
//  ONBOARD_MSD_App
//
//  Created by Михаил Дядченко on 30.10.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var isSubmitted: Bool = false
    @State private var errorMessage: String?
    
    var body: some View {
        VStack {
            
            
            Text("Подпишитесь, чтобы не пропустить запуск проекта!")
                .font(.largeTitle)
                .padding()
            
            TextField("Введите ваш email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                submitEmail(email: email)
            }) {
                Text("Подписаться")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
            
            if isSubmitted {
                Text("Ура! Вы подписаны")
                    .foregroundColor(.green)
                    .padding()
            } else if let errorMessage = errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .padding()
            }
        }
        .padding()
    }
    
    func submitEmail(email: String) {
            guard isValidEmail(email) else {
                errorMessage = "Please enter a valid email address."
                return
            }

            // Here you would typically send the email to your server or API.
            // For this example, we'll just simulate a successful submission.
            isSubmitted = true
            errorMessage = nil
            
            // Reset the email field after submission
            self.email = ""
        }

        func isValidEmail(_ email: String) -> Bool {
            let predicate = NSPredicate(format:"@")
            return predicate.evaluate(with: email)
        }
    }

    
    
#Preview {
    ContentView()
}


