//
//  ContentView.swift
//  List
//
//  Created by Taira Enon on 2026/08/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                List{
                    ForEach(Animal.allCases, id: \.self){ animal in
                        NavigationLink(destination: DetailView(animal: animal)) {
                            HStack {
                                Image(animal.iconName)
                                Text(animal.name)
                            }
                        }
                    }
                }.navigationTitle("動物")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
