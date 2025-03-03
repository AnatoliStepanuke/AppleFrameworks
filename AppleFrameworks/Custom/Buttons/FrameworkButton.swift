import SwiftUI

struct FrameworkButton: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))    }
}

#Preview {
    FrameworkButton(text: "Test Title")
}
