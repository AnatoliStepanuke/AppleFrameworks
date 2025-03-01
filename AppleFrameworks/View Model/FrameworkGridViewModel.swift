import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    // MARK: - Constants
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    // MARK: - Variables
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    // MARK: - Properties
    @Published var isShowingDetailView = false
}
