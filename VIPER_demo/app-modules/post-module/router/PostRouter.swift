//
//  PostRouter.swift
//  VIPER_demo
//
//  Created by looiwenghoong on 18/02/2022.
//

import Foundation


class PostRouter: PresentorToRouterPostProtocol {
    var controller: PostViewController?
    
    func createPostModule(controller: PostViewController) {
        self.controller = controller
        
        var presentor: ViewToPresentorPostProtocol & InteractorToPresentorPostProtocol = PostPresentor()
        let router: PresentorToRouterPostProtocol = PostRouter()
        var interactor: PresentorToInteractorPostProtocol = PostInteractor()
        
        controller.presenter = presentor
        presentor.view = controller
        presentor.router = router
        presentor.interactor = interactor
        interactor.presentor = presentor
    }
}
