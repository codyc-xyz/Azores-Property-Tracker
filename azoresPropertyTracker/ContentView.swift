//
//  ContentView.swift
//  azoresPropertyTracker
//
//  Created by Cody Clifton on 3/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView() // Add your MapView here
                .edgesIgnoringSafeArea(.all)
                .frame(height: 300)
        }
    }
}
