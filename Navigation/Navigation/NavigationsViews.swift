//
//  NavigationView.swift
//  Navigation
//
//  Created by Adha Syah Majid on 12/12/23.
//

import SwiftUI

struct NavigationsViews: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink(
                    "Halaman Baru"
                    
                    ,
                    destination:
                                /*Text("Haloo ini halaman kedua")*/
                OtherScreen())
                .padding()
                
                Text("Hello Putri Andini Ekaptiningrum")
                    .padding()
                    
                HStack {
                    Text("Hello My World")
                    Image(systemName: "camera.macro")
                        .foregroundColor(.red)
                }
                .padding()
                Text("Hello My Wife")
                    .padding()
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
            
            .navigationBarItems(
                leading:
                    
                    Image(systemName: "person.fill")
                
                ,
                trailing:
                    NavigationLink(
                        destination: OtherScreen(),
                        label: {
                            Image(systemName: "gear")
                        })
                    .accentColor(.green)
                    )
        }
    }
}

struct OtherScreen: View {
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
                .navigationTitle("Blue Screen")
            
            NavigationLink("Halaman baru ke-3", destination: Text("3rd screen").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/))
                .foregroundColor(.white)
                .border(Color.white)
        }
    }
}

#Preview {
    NavigationsViews()
}
