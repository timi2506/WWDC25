//
//  Multiplatform.swift
//  WWDC 25
//
//  Created by Tim on 09.06.25.
//

import SwiftUI

struct MultiplatformView: View {
    @Binding var selection: String
    var body: some View {
        VStack {
            Text("Still waiting for WWDC :(")
            HStack {
                Button("Watch Live") {
                    selection = "livestream"
                }
                Button("More Info") {
                    selection = "website"
                }
            }
        }
    }
}
