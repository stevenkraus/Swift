//
//  SynchronizedOnType.swift
//  RxSwift
//
//  Created by Steven Kraus on 10/25/15.
//  Copyright © 2015 Steven Kraus. All rights reserved.
//

protocol SynchronizedOnType : class, ObserverType, Lock {
    func _synchronized_on(_ event: Event<Element>)
}

extension SynchronizedOnType {
    func synchronizedOn(_ event: Event<Element>) {
        self.lock(); defer { self.unlock() }
        self._synchronized_on(event)
    }
}
