//
//  CategoryHome.swift
//  Landmarks
//
//  Created by nabetama on 2023/10/21.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationSplitView {
            Text("Hello, World!")
                .navigationTitle("Featured")
        } detail: {
            Text("Select a Lnadmark")
        }
    }
}

#Preview {
    CategoryHome()
}
