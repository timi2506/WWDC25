//
//  LiveStream.swift
//  WWDC 25
//
//  Created by Tim on 09.06.25.
//

import SwiftUI
import WebKit

struct LiveStreamView: View {
    @State var selection = "youtube"
    var body: some View {
        VStack {
            Picker("Streaming Platform", selection: $selection) {
                Text("YouTube").tag("youtube")
                Text(" TV").tag("tv")
                Text("Apple.com").tag("website")
            }
            #if os(iOS)
            .pickerStyle(.segmented)
            .padding(.horizontal)
            #elseif os(macOS)
            .pickerStyle(.menu)
            .padding(7.5)
            #endif
            if selection == "youtube" {
                WebView(url: URL(string: "https://youtu.be/0_DjDdfqtUE")!)
            } else if selection == "tv" {
                WebView(url: URL(string: "https://tv.apple.com/us/room/apple-events/edt.item.5ed55c8d-d2bd-4727-9ade-5005cb51969f")!)
            } else {
                WebView(url: URL(string: "https://www.apple.com/apple-events/")!)
            }
        }
    }
}
