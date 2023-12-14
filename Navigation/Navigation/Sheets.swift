//
//  Sheets.swift
//  Navigation
//
//  Created by Adha Syah Majid on 12/12/23.
//
// Belajar lagi tentang: (https://youtu.be/5QDvfNQF304?feature=shared)
//1) Present a new View using .sheet()
//2) Present a new View using .transition()
//3) Present a new View using .offset() and .animation()

import SwiftUI

struct Sheets: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background (Color.white.cornerRadius(10))
                })
//                .sheet(isPresented: $showSheet, content: { SecondScreen()
//                  DO NOT ADD CONDITIONAL LOGIC IN .sheet (if-else)
//                })
            .fullScreenCover(isPresented: $showSheet, content: { SecondScreen()
            })
            }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                })
            }
    }
}

#Preview {
    Sheets()
}
