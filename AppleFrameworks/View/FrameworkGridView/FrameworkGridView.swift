import SwiftUI

struct FrameworkGridView: View {
    
    // MARK: - Properties
    @State var viewModel = FrameworkGridViewModel()
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(value: framework) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: framework))
            }
        }
        .tint(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}
