//
//  Application.swift
//  LowonganKerjaMuslim
//
//  Created by PondokiOS on 11/2/18.
//  Copyright © 2018 PondokiOS. All rights reserved.
//

import Foundation
import SubApplication

public final class Application: SubApplication {
    public var thumbnail: UIImage? = UIImage(
        named: "thumbnail_home",
        in: Bundle.bundle,
        compatibleWith: nil
    )
    
    public func prepareController() -> UIViewController {
        fatalError()
    }
    
    public let title = "Loker Muslim"
    
    public init() {
    }
}

extension Application {
    struct Bundle {
        private init() {}
        static let bundle = MODULE_BUNDLE
    }
}
