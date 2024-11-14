//
//  ContentView.swift
//  RepresentableTestStarter
//
//  Created by 羅壽之 on 2024/11/14.
//

import SwiftUI

struct ContentView: View {
    
    @State var restaurants = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery"]
    
    @State var showPicker: Bool = false
    
    var body: some View {
        // Demo on SearchBar
        VStack {
            // add searchBar here
            NavigationView {
                List {
                    ForEach(restaurants, id:\.self) { restaurant in
                        Text(restaurant)
                    }
                }
                
                .listStyle(PlainListStyle())
            }
        }
        
        // Demo on ImagePicker
        VStack {
            Button("Select one photo") {
                showPicker.toggle()
            }
            .padding(.bottom, 20)
            .sheet(isPresented: $showPicker) {
                // add ImagePicker here
            }
            
            // display image here
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
