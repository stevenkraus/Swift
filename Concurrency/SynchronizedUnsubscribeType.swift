//
//  SynchronizedUnsubscribeType.swift
//  RxSwift
//
//  Created by Steven Kraus on 10/25/15.
//  Copyright © 2015 Steven Kraus. All rights reserved.
//

protocol SynchronizedUnsubscribeType : class {
    associatedtype DisposeKey

    func synchronizedUnsubscribe(_ disposeKey: DisposeKey)
}
