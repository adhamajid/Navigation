//
//  ContentView.swift
//  Navigation
//
//  Created by Adha Syah Majid on 03/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Text("Ini halaman Utama")
            NavigationLink(destination: SecondView()) {
                Text("Ojo diklik mbott")
                Image(systemName: "tornado")
            }
        }
    }
}

struct SecondView: View{
    var body: some View{
        VStack{
            Text("Walah-walah jebol mung ngene")
        }
    }
}

#Preview {
    ContentView()
}
