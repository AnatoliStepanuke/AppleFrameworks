import SwiftUI

struct FrameworkText: View {
    
    // MARK: - Constants
    let framework: Framework

    // MARK: - Body
    var body: some View {
        Text(framework.description)
            .font(.body)
            .padding()
    }
}

#Preview {
    FrameworkText(framework: MockData.sampleFramework)
}
