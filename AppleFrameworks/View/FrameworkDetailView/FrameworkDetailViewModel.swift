//
//  FrameworkDetailViewModel.swift
//  AppleFrameworks
//
//  Created by Anatoli Stepanuke on 10/1/25.
//

import SwiftUI
import Observation

@Observable final class FrameworkDetailViewModel {
    
    // MARK: Constants
    let framework: Framework
    
    // MARK: Variables
    var isShowingSafariView: Bool = false
    
    // MARK: Init
    init(framework: Framework) {
        self.framework = framework
    }
}
