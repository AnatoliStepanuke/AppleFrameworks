import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    // MARK: - Constants
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
