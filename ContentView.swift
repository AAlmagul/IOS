//
//  ContentView.swift
//  i am rich
//
//  Created by Алмагуль Абдыгали on 21.09.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showSplash = true
    var body: some View {
        VStack {
                Image("diamond")
                    .resizable()
                    .frame(width: 300.0, height: 300.0);
                Text("I AM RICH")
                    .bold()
                    .padding()
            }
            
        }
}

#Preview {
    ContentView()
}
