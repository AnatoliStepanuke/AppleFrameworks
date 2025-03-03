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
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Spacer()
            
            FrameworkText(framework: framework)
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                FrameworkButton(text: "Learn More")
            }
            .sheet(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            })
            
            Spacer()
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework,
                        isShowingDetailView: .constant(false))
}
