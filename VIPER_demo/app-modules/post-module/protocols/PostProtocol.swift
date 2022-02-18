//
//  PostProtocol.swift
//  VIPER_demo
//
//  Created by looiwenghoong on 18/02/2022.
//

import Foundation

protocol ViewToPresentorPostProtocol {
    var view: PresentorToViewPostProtocol? {get set}
    var router: PresentorToRouterPostProtocol? {get set}
    var interactor: PresentorToInteractorPostProtocol? {get set}
    func fetchPost()
}

// Protocol to be used to present data to view
protocol PresentorToViewPostProtocol {
    func onPostResponseSuccess(postList: [PostModel]?)
    func onPostResponseFailure()
}

// Protocol to be used for routing
protocol PresentorToRouterPostProtocol {
    func createPostModule(controller: PostViewController)
}

protocol InteractorToPresentorPostProtocol {
    func onSuccess(postList: [PostModel]?)
    func onFailure()
}

protocol PresentorToInteractorPostProtocol {
    var presentor: InteractorToPresentorPostProtocol? {get set}
    func fetchPost()
}
