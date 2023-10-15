//
//  LandmarkList.swift
//  Landmarks
//
//  Created by nabetama on 2023/10/15.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks, id: \.id) {landmark in
                LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
