//
//  TimerDisplay.swift
//  Swiftris
//
//  Created by King Kittenhead on 4/18/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

class TimerDisplay {
    var timeInSeconds: Int
    var endlessGame: Bool
    
    init (timeInSeconds: Int, endlessGame: Bool) {
        self.timeInSeconds = timeInSeconds
        self.endlessGame = endlessGame
    }
    
    convenience init(timeInSeconds: Int) {
        self.init(timeInSeconds: timeInSeconds, endlessGame: false)
    }
    
    convenience init(endlessGame: Bool) {
        self.init(timeInSeconds: 0, endlessGame: endlessGame)
    }
    
    func timeAsString() -> String {
        if !endlessGame {
            switch timeInSeconds {
            case 0..<10:
                return "0:0\(timeInSeconds)"
            case 10..<60:
                return "0:\(timeInSeconds)"
            default:
                let minutesLeft:Int = timeInSeconds / 60
                let secondsLeft:Int = timeInSeconds - ( minutesLeft * 60 )
                
                switch secondsLeft {
                case 0..<10:
                    return "\(minutesLeft):0\(secondsLeft)"
                default:
                    return "\(minutesLeft):\(secondsLeft)"
                }
            }
        } else {
            return "Classic Mode"
        }
    }
    
}