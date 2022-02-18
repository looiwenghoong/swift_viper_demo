//
//  PostPresentor.swift
//  VIPER_demo
//
//  Created by looiwenghoong on 18/02/2022.
//

import Foundation

class PostPresentor: ViewToPresentorPostProtocol {
    var view: PresentorToViewPostProtocol?
    
    var router: PresentorToRouterPostProtocol?
    
    var interactor: PresentorToInteractorPostProtocol?
    
    func fetchPost() {
        // Fetch Post
        interactor?.fetchPost()
    }
}

extension PostPresentor: InteractorToPresentorPostProtocol {
    func onSuccess(postList: [PostModel]?) {
        // On Success
        view?.onPostResponseSuccess(postList: postList)
    }
    
    func onFailure() {
        // On Failure
    }
}
