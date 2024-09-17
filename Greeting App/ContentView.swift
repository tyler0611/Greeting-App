//
//  ContentView.swift
//  Greeting App
//
//  Created by Tyler Berlin on 9/6/24.
//

import SwiftUI
struct ContentView: View {
    @State private var name = ""
    @State private var greeting = ""
    var body: some View {
        VStack {
            Text("Greeting App")
                .font(.title).bold()
            TextField("Enter Name", text: $name)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30)
                .font(.body)
                .padding()
            HStack{
                Button("Hello"){
                    greeting = "Hello, \(name)!"
                }
                .font(.system(size: 24))
                Button("Goodbye"){
                    greeting = "Goodbye, \(name)!"
                }
                .font(.system(size: 24))
                Button("Aloha"){
                    greeting = "Aloha, \(name)!"
                }
                .font(.system(size: 24))
            }
            .padding()
            Text(greeting)
                .font(.title).bold()
        }
        .padding()
        Spacer()
    }
}

#Preview {
    ContentView()
}
