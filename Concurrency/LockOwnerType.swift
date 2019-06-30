//
//  LockOwnerType.swift
//  RxSwift
//
//  Created by Steven Kraus on 10/25/15.
//  Copyright © 2015 Steven Kraus. All rights reserved.
//

protocol LockOwnerType : class, Lock {
    var _lock: RecursiveLock { get }
}

extension LockOwnerType {
    func lock() {
        self._lock.lock()
    }

    func unlock() {
        self._lock.unlock()
    }
}
