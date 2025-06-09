//
//  ContentView.swift
//  WWDC 25
//
//  Created by Tim on 09.06.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            TabView {
                MultiplatformView()
                    .tabItem { Label("Multiplatform", systemImage: "macbook.and.iphone") }
                #if os(macOS)
                macOSView()
                    .tabItem { Label("macOS", systemImage: "macbook") }
                #else
                Text("This Tab is macOS only, Visit this Page on a Mac to try new macOS Features")
                    .tabItem { Label("macOS", systemImage: "macbook") }
                #endif

                #if os(iOS)
                iOSView()
                    .tabItem { Label("iOS", systemImage: "iphone") }
                #else
                Text("This Tab is iOS only, Visit this Page on an iOS Device to try new iOS Features")
                    .tabItem { Label("iOS", systemImage: "iphone") }
                #endif
            }
            .tabViewStyle(.sidebarAdaptable)
        }
    }
}

#Preview {
    ContentView()
}
