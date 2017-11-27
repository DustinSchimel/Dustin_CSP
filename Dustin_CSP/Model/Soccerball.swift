//
//  Soccerball.swift
//  Dustin_CSP
//
//  Created by Schimel, Dustin on 11/20/17.
//  Copyright © 2017 Schimel, Dustin. All rights reserved.
//

import UIKit

public class Soccerball : Kickable
{
    //MARK: Kickable data member
    public var kickState: Bool
    
    public init()
    {
        self.kickState = false
    }
    
    //MARK:- Kickable methods
    public func kick() -> Void
    {
        print("I was kicked")
        kickState = true
    }
    
    public func wasKicked() -> Bool
    {
        if(kickState)
        {
            print("Kicked")
        }
        else
        {
            print("Still")
        }
        return kickState
    }
}
