//
//  ContentView.swift
//  YourProject
//
//  Created by Daniela Castilla on 09/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var petName = ""
    @State private var petNames = [String]()
    var body: some View {
            NavigationView {
                List {
                    Section(header: Text("Add a new pet name")){
                        TextField("Enter your pet's name", text: $petName)
                        Button("Submit") {
                            guard !petName.isEmpty else {return}
                            petNames.append(petName)
                            petName = ""
                        }
                    }
                    Section {
                        ForEach(petNames, id: \.self) {name in
                            NavigationLink(destination: NameDisplayView(petName: name)){
                                Text(name)
                            }
                        }

                    }
                    
                                    }
                .navigationBarTitle("Pet Names")
            }
        }
    }

#Preview {
    ContentView()
}
