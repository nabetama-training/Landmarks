//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by nabetama on 2023/10/07.
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
