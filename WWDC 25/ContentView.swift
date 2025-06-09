//
//  ContentView.swift
//  WWDC 25
//
//  Created by Tim on 09.06.25.
//

import SwiftUI

struct ContentView: View {
    @State var selection = "website"
    var body: some View {
        NavigationStack {
            TabView(selection: $selection) {
                WebView(url: URL(string: "https://developer.apple.com/wwdc25/")!)
                    .tabItem { Label("WWDC 25", systemImage: "text.rectangle.page") }
                    .tag("website")
                LiveStreamView()
                    .tabItem { Label("Watch Live", systemImage: "play.rectangle") }
                    .tag("livestream")
                MultiplatformView(selection: $selection)
                    .tabItem { Label("Multiplatform", systemImage: "macbook.and.iphone") }
                    .tag("multiplatform")
                #if os(macOS)
                macOSView()
                    .tabItem { Label("macOS", systemImage: "macbook") }
                    .tag("macOS")
                #else
                Text("This Tab is macOS only, Visit this Page on a Mac to try new macOS Features")
                    .tabItem { Label("macOS", systemImage: "macbook") }
                #endif

                #if os(iOS)
                iOSView()
                    .tabItem { Label("iOS", systemImage: "iphone") }
                    .tag("iOS")
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
