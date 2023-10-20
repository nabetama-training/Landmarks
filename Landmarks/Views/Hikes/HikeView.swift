/*
 See the LICENSE.txt file for this sample’s licensing information.
 
 Abstract:
 A view displaying information about a hike, including an elevation graph.
 */

import SwiftUI

// `extension` は既に存在している型に、プロパティ、メソッド、イニシャライザを追加できる拡張
/**
 1> extension String {
 2.     func sayHi() {
 3.         print(self, " Hi!")
 4.     }
 5. }
 6> let name = "nabetama"
 name: String = "nabetama"
 7> name.sayHi()
 nabetama  Hi!
 */
extension AnyTransition {
    static var moveAndFade: AnyTransition {
        .asymmetric(
            insertion: .move(edge: .trailing).combined(with: .opacity),
            removal: .scale.combined(with: .opacity)
        )
    }
}

struct HikeView: View {
    
    var hike: Hike
    @State private var showDetail = false
    
    var body: some View {
        VStack {
            HStack {
                HikeGraph(hike: hike, path: \.elevation)
                    .frame(width: 50, height: 30)
                
                VStack(alignment: .leading) {
                    Text(hike.name)
                        .font(.headline)
                    Text(hike.distanceText)
                }
                
                Spacer()
                
                Button {
                    withAnimation {
                        showDetail.toggle()
                    }
                } label: {
                    Label("Graph", systemImage: "chevron.right.circle")
                        .labelStyle(.iconOnly)
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
                        .scaleEffect(showDetail ? 1.5 : 1)
                        .padding()
                    
                }
            }
            
            if showDetail {
                HikeDetail(hike: hike)
                    .transition(.moveAndFade)
            }
        }
    }
}

#Preview {
    VStack {
        HikeView(hike: ModelData().hikes[0])
            .padding()
        Spacer()
    }
}
