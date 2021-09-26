//
//  ContentView.swift
//  Shared
//
//  Created by Zitti Andrei on 25.09.2021.
//

import SwiftUI

struct MainView: View {
    let a = Services()
    var body: some View {
        TabView{
            View1().tabItem {
                Label ("Seen", systemImage: "film.fill")
            }
            View2().tabItem {
                Label ("Watchlist", systemImage : "folder.circle")
            }
            SuggestionsView().tabItem {
                Label ("Similar Movies", systemImage: "lasso.and.sparkles")
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
 
