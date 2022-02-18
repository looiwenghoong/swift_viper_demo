//
//  PostInteractor.swift
//  VIPER_demo
//
//  Created by looiwenghoong on 18/02/2022.
//

import Foundation
import Alamofire


class PostInteractor: PresentorToInteractorPostProtocol {
    var presentor: InteractorToPresentorPostProtocol?
    
    func fetchPost() {
        // Fetch post with Alamofire
        AF.request("https://gorest.co.in/public/v2/posts", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil, interceptor: nil, requestModifier: nil).responseJSON { (responseData) -> Void in
            if (responseData.response!.statusCode >= 200 && responseData.response!.statusCode < 300) {
                if let _ = responseData.value {
                    let data = try? JSONDecoder().decode([PostModel].self, from: responseData.data!)
                    self.presentor?.onSuccess(postList: data)
                }
            }
        }
    }
}
