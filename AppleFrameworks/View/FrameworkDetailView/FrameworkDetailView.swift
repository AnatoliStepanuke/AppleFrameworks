import SwiftUI

struct FrameworkDetailView: View {
    
    // MARK: - Properties
   @State var viewModel: FrameworkDetailViewModel
    
    // MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            
            FrameworkTitleView(framework: viewModel.framework)
            
            Spacer()
            
            FrameworkText(framework: viewModel.framework)
            
            Spacer()
            
            Button {
                viewModel.isShowingSafariView = true
            } label: {
                FrameworkButton(text: "Learn More")
            }
            .sheet(isPresented: $viewModel.isShowingSafariView, content: {
                SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!)
            })
            
            Spacer()
        }
    }
}

#Preview {
    FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework))
}
