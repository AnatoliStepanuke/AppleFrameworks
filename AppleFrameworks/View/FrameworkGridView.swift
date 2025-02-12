import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            FrameworkTitleView(imageName: "app-clip", name: "App Clips")
            FrameworkTitleView(imageName: "arkit", name: "ARKit")
            FrameworkTitleView(imageName: "swiftui", name: "SwiftUI")
        }
    }
}

#Preview {
    FrameworkGridView()
}

// MARK: - FramkeworkTitleView
struct FrameworkTitleView: View {
    let imageName: String
    let name: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
