//
//  CategoryHome.swift
//  Landmarks
//
//  Created by nabetama on 2023/10/21.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    Text(key)
                }
            }
            .navigationTitle("Featured")
        } detail: {
            Text("Select a Lnadmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
