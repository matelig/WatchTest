//
//  IntentHandler.swift
//  WatchShortcutTest (iOS)
//
//  Created by Mateusz Ligus on 04/11/2021.
//

import Foundation
import Intents

final class IntentIntentHandler: NSObject, IntentIntentHandling {
    private let testParameters: [String] = ["one,", "two", "three"]
    func handle(intent: IntentIntent, completion: @escaping (IntentIntentResponse) -> Void) {
        completion(IntentIntentResponse(code: .success, userActivity: nil))
    }
    
    func resolveParameter(for intent: IntentIntent, with completion: @escaping (INStringResolutionResult) -> Void) {
        guard let parameter = intent.parameter else {
            completion(INStringResolutionResult.needsValue())
            return
        }
        completion(INStringResolutionResult.success(with: parameter))
    }
    
    func provideParameterOptionsCollection(for intent: IntentIntent, with completion: @escaping (INObjectCollection<NSString>?, Error?) -> Void) {
        let parameters = testParameters.map { param -> NSString in
            return param as NSString
        }
        let collection: INObjectCollection<NSString> = INObjectCollection(items: parameters)
        completion(collection, nil)
    }
}
