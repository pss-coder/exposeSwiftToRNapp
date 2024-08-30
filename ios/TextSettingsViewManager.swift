//
//  TextSettingsViewManager.swift
//  exposeSwiftToRNapp
//
//  Created by Pawandeep Singh Sekhon on 30/8/24.
//

import Foundation


//WE actually expose the ViewManager to React, and not the view themselves
  // we communicate to React via an Objective-C file, via macros which are avail in React Native

import Foundation

//must conform to RCTViewManager <- from our 'installed' pods

//IMPORTANT:when creating a ViewManager is that we have to use the “@objc” keyword at the beginning of the class. Whenever we write after this keyword in parentheses “()”,
// it is understandable from the React Native side. If we write here like “TestManager”, even if our ViewManager name is not like that, we can reach out to our view manager by the name “TestManager” from the React Native side. We add this keyword to our code below.

// One more thing to be aware of is that if the exposed name ends with “Manager”, the React Native side automatically deletes the “Manager” ending.
// React will see it named: "TextSettingsView"
@objc(TextSettingsViewManager)
class TextSettingsViewManager: RCTViewManager {

//  indicates that a particular native module or component requires setup on the main thread
//  If you want to initialize it on a background thread, then return “false”.
  override class func requiresMainQueueSetup() -> Bool {
    return true
  }

//  we return our UIKit View
  override func view() -> UIView! {
    TextSettingsHostingView()
  }
}
