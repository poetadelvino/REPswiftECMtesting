// Fig. 8.1: Time.swift
// Time class with default initializer and property observers
public class Time {
    // an hour value in the range 0-23
    public var hour: Int = 0 {
        willSet {
            println("hour is \(hour); setting it to \(newValue)")
        }
        didSet {
            if hour < 0 || hour > 23 {
                println("hour invalid, resetting to \(oldValue)")
                hour = oldValue
            }
        }
    }

    // a minute value in the range 0-59
    public var minute: Int = 0 {
        willSet {
            println("minute is \(minute); setting it to \(newValue)")
        }
        didSet {
            if minute < 0 || minute > 59 {
                println("minute invalid, resetting to \(oldValue)")
                minute = oldValue
            }
        }
    }
    
    // a second value in the range 0-59
    public var second: Int = 0 { 
        willSet {
            println("second is \(second); setting it to \(newValue)")
        }
        didSet {
            if second < 0 || second > 59 {
                println("second invalid, resetting to \(oldValue)")
                second = oldValue
            }
        }
    }
    
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