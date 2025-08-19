//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Carlos Alonso Camiña on 5/8/25.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
