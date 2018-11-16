//
//  NotificationCoordinator.swift
//  MuslimApp
//
//  Created by PondokiOS on 11/3/18.
//  Copyright © 2018 PondokiOS. All rights reserved.
//

import UIKit

protocol NotificationNavigator: Navigator {
    
}

class NotificationCoordinator: Coordinator {
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        guard let presentedViewController: NotificationController = .loadInstance() else {
            fatalError("Instance not found!")
        }
        presentedViewController.navigator = self
        let nav = UINavigationController(rootViewController: presentedViewController)
        navigationController
            .topViewController?
            .present(nav, animated: true, completion: nil)
    }
}

extension NotificationCoordinator: NotificationNavigator {
    func back() {
        navigationController
            .topViewController?
            .presentedViewController?
            .dismiss(animated: true, completion: nil)
    }
}