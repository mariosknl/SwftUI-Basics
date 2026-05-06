//
//  NavigationView.swift
//  SwiftUI Basics
//
//  Created by Marios Kanellopoulos on 6/5/26.
//

import SwiftUI



struct NavigationView: View {
    @State var name: String = ""
    @State var age: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack(alignment: .leading) {
                    Text("Enter your name")
                    TextField("Marios", text: $name)
                }
                
                VStack(alignment: .leading) {
                    Text("Enter your age")
                    TextField("18", text: $age)
                        .keyboardType(.numberPad)
                }
                
                Spacer()
                
                NavigationLink( destination: {
                    ZStack {
                        Color
                            .orange
                            .ignoresSafeArea()
                        }
                    },
                    label: {
                        Text("Go to Orange View")
                            .font(.title)
                            .padding()
                            .overlay(
                                Capsule()
                                    .stroke()
                            )
                    }
                )
                
                NavigationLink(
                    destination: {
                        DrinkingView(
                            name: name,
                            age: age,
                            drinkingAge:18
                        )
                    },
                    label: {
                        Text("Okay")
                            .font(.title)
                            .padding()
                            .overlay(
                                Capsule()
                                    .stroke()
                            )
                    }
                )
                
                
            }
            .padding()
            .navigationTitle("Example")
        }
    }
}

struct DrinkingView: View {
    let name: String
    let age: String
    
    let drinkingAge: Int
    
    var numericalAge: Int {
        Int(age) ?? -1
    }
    
    var body: some View {
        ZStack {
            Color
                .blue
                .opacity(0.2)
                .ignoresSafeArea()
            
            if numericalAge > drinkingAge {
                Text("\(name.capitalized), you can drink")
            } else if numericalAge < 0 {
                Text("\"\(age)\" is not valid.")
            } else {
                VStack {
                    Text("Sorry \(name.capitalized)")
                    Text("Can't serve you.")
                }
            }
        }
    }
}

#Preview {
    NavigationView()
}

