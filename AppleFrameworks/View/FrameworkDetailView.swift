import SwiftUI

struct FrameworkDetailView: View {
    
    // MARK: - Variables
    var framework: Framework
    
    // MARK: - Properties
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    
    // MARK: - Body
    var body: some View {
        VStack {
            
            DismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                FrameworkButton(text: "Learn More")
            }
            .fullScreenCover(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            })
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework,
                        isShowingDetailView: .constant(false))
}
