//
//  ProfileHost.swift
//  Landmarks
//
//  Created by nabetama on 2023/10/26.
//

import SwiftUI

struct ProfileHost: View {
    /**
     * https://developer.apple.com/documentation/swiftui/editmode
     * ユーザーが View のコンテンツを編集する際に使う環境変数
     */
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
            }

        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}
