//
//  Multiplatform.swift
//  WWDC 25
//
//  Created by Tim on 09.06.25.
//

import SwiftUI

struct MultiplatformView: View {
    var body: some View {
        VStack {
            Text("Still waiting for WWDC :(")
            WebView(url: URL(string: "https://developer.apple.com/wwdc25/")!)
                .cornerRadius(15)
                .padding(7.5)
        }
    }
}

import WebKit

#if os(iOS)
struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

#elseif os(macOS)
struct WebView: NSViewRepresentable {
    let url: URL

    func makeNSView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }

    func updateNSView(_ nsView: WKWebView, context: Context) {}
}
#endif
