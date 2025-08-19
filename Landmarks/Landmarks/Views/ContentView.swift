//
//  ContentView.swift
//  Landmarks
//
//  Created by Carlos Alonso Camiña on 5/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
