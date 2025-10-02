//
//  FrameworkDetailViewModel.swift
//  AppleFrameworks
//
//  Created by Anatoli Stepanuke on 10/1/25.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    
    // MARK: Constants
    let framework: Framework
    
    // MARK: Properties
    @Published var isShowingSafariView: Bool = false
    
    // MARK: Init
    init(framework: Framework) {
        self.framework = framework
    }
}
