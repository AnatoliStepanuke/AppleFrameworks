import SwiftUI
import Observation

@Observable final class FrameworkGridViewModel {
    
    // MARK: - Constants
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
