//
//  SubscriptionEndpoint.swift
//  Social Setting
//
//  Created by Mettaworldj on 1/10/21.
//

import Foundation
import Combine

extension SocialSettingAPI {
    static func getSubscribedSubsettingList(page: Int) -> AnyPublisher<[SubSettingResponse], Error> {
        let queryItems = [URLQueryItem(name: "page", value: "\(page)"), URLQueryItem(name: "amount", value: "\(20)")]
        var urlComponent = base
        urlComponent.queryItems = queryItems
        guard let url = urlComponent.url else { return Fail(error: NetworkError.badURL).eraseToAnyPublisher() }
        let request = URLRequest(url: url.appendingPathComponent("subSetting/subscribed"))
        return agent.authenticatedRun(request)
            .map(\.value)
            .eraseToAnyPublisher()
    }
}
