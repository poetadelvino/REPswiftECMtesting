// Fig. 9.x: Time.swift
// Time struct with default and memberwise initializers, and extensions
public struct Time {
    // an hour value in the range 0-23
    public var hour: Int = 0 {
        didSet {
            if hour < 0 || hour > 23 {
                hour = oldValue
            }
        }
    }
    
    // a minute value in the range 0-59
    public var minute: Int = 0 {
        didSet {
            if minute < 0 || minute > 59 {
                minute = oldValue
            }
        }
    }
    
    // a second value in the range 0-59
    public var second: Int = 0 {
        didSet {
            if second < 0 || second > 59 {
                second = oldValue
            }
        }
    }
}

// extension to struct Time containing additional initializers
extension Time {
    // initializer: hour supplied, minute and second set to 0
    public init(hour: Int) {
        self.init(hour: hour, minute: 0, second: 0)
    }
    
    // initializer: hour and minute supplied, second set to 0
    public init(hour: Int, minute: Int) {
        self.init(hour: hour, minute: minute, second: 0)
    }
}

// extension to struct Time for String representations
extension Time {
    // convert to String in universal-time format (HH:MM:SS)
    public var universalDescription: String {
        return String(format: "%02d:%02d:%02d", hour, minute, second)
    }
    
    // convert to String in standard-time format (H:MM:SS AM or PM)
    public var description: String {
        return String(format: "%d:%02d:%02d %@",
            ((hour == 0 || hour == 12) ? 12 : hour % 12),
            minute, second, (hour < 12 ? "AM" : "PM"))
    }
}

// extension to struct Time for adding hours, minutes or seconds to a Time
extension Time {
    // add an Int to the hour
    public mutating func addHours(increment: Int) {
        hour = (hour + increment) % 24
    }
    
    // add an Int to the minute
    public mutating func addMinutes(increment: Int) {
        // possibly increment the hour
        if minute + increment > 59 {
            addHours((minute + increment) / 60)
        }
        
        minute = (minute + increment) % 60
    }
    
    // add an Int to the second
    public mutating func addSeconds(increment: Int) {
        // possibly increment the minute
        if second + increment > 59 {
            addMinutes((second + increment) / 60)
        }
        
        second = (second + increment) % 60
    }
}

/*************************************************************************
* (C) Copyright 1992-2015 by Deitel & Associates, Inc. and               *
* Pearson Education, Inc. All Rights Reserved.                           *
*                                                                        *
* DISCLAIMER: The authors and publisher of this book have used their     *
* best efforts in preparing the book. These efforts include the          *
* development, research, and testing of the theories and programs        *
* to determine their effectiveness. The authors and publisher make       *
* no warranty of any kind, expressed or implied, with regard to these    *
* programs or to the documentation contained in these books. The authors *
* and publisher shall not be liable in any event for incidental or       *
* consequential damages in connection with, or arising out of, the       *
* furnishing, performance, or use of these programs.                     *
*************************************************************************/