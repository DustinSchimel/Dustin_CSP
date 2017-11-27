//
//  Kickable.swift
//  Dustin_CSP
//
//  Created by Schimel, Dustin on 11/20/17.
//  Copyright © 2017 Schimel, Dustin. All rights reserved.
//

import Foundation

public protocol Kickable
{
    var kickState : Bool {get set}
    func kick() -> Void
    func wasKicked() -> Bool
}

