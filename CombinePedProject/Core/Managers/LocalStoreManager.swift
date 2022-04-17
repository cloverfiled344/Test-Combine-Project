//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import Foundation
import KeychainSwift

class LocalStoreManager: NSObject {
    
    private let defaults: UserDefaults = UserDefaults.standard
    private let encoder = PropertyListEncoder()
    private let decoder = PropertyListDecoder()
    private let keychain = KeychainSwift()
    
    enum LocalStoreType {
        case userDefaults
        case keychain
    }
    
    enum Keys: String {
        case token = "Token"
        case accessToken = "accessToken"
        case settings = "settings"
    }
    
    public func set(_ value: String, forKey key: Keys, saveTo localStore: LocalStoreType) {
        switch localStore {
        case .userDefaults:
            defaults.set(value, forKey: key.rawValue)
        case .keychain:
            keychain.set(value, forKey: key.rawValue)
        }
    }
    
    public func value(forKey key: Keys, from localStore: LocalStoreType) -> String? {
        switch localStore {
        case .userDefaults:
            return defaults.string(forKey: key.rawValue)
        case .keychain:
            return keychain.get(key.rawValue)
        }
    }
    
    public func set(_ value: Bool, forKey key: Keys, saveTo localStore: LocalStoreType) {
        switch localStore {
        case .userDefaults:
            defaults.set(value, forKey: key.rawValue)
        case .keychain:
            keychain.set(value, forKey: key.rawValue)
        }
    }
    
    public func value(forKey key: Keys, from localStore: LocalStoreType) -> Bool {
        switch localStore {
        case .userDefaults:
            return defaults.bool(forKey: key.rawValue)
        case .keychain:
            return keychain.getBool(key.rawValue) ?? false
        }
    }
    
    public func set<C: Codable>(_ value: C, forKey key: Keys) throws {
        // TODO: Check user for isAuthorized
        let data = try encoder.encode(value)
        defaults.set(data, forKey: key.rawValue)
    }
    
    public func value<C: Codable>(forKey key: Keys) throws -> C? {
        return try defaults.data(forKey: key.rawValue).flatMap { try decoder.decode(C.self, from: $0) }
    }
    
    private func remove(forKey key: Keys, from localStore: LocalStoreType) {
        switch localStore {
        case .userDefaults:
            defaults.removeObject(forKey: key.rawValue)
        case .keychain:
            keychain.delete(key.rawValue)
        }
    }
    
//    public var jwtToken: String{
//        return value(forKey: .jwtToken, from: .keychain) ?? ""
//    }
//    
//    public var accessToken: String{
//        return value(forKey: .accessToken, from: .keychain) ?? ""
//    }
//    
//    public var cookie: String{
//        return value(forKey: .cookie, from: .keychain) ?? ""
//    }
//    
//    public func removeLocalDataOnLogout(){
//        remove(forKey: .pinCode, from: .keychain)
//        remove(forKey: .accessToken, from: .keychain)
//        remove(forKey: .userProfile, from: .userDefaults)
//        remove(forKey: .userAccounts, from: .userDefaults)
//        remove(forKey: .cookie, from: .keychain)
//    }
//    
//    public func removeKeychainData(){
//        remove(forKey: .pinCode, from: .keychain)
//        remove(forKey: .accessToken, from: .keychain)
//        remove(forKey: .cookie, from: .keychain)
//        remove(forKey: .jwtToken, from: .keychain)
//        debugPrint("KEYCHAIN CLEARED")
//    }
}
