//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Carlos Alonso Camiña on 8/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
