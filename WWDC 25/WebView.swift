//
//  WebView.swift
//  WWDC 25
//
//  Created by Tim on 09.06.25.

//  This will hopefully be easier after WWDC like the leaks say!

import SwiftUI
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
