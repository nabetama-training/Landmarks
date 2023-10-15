//
//  ContentView.swift
//  Landmarks
//
//  Created by nabetama on 2023/10/07.

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
