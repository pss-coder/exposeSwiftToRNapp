//
//  HelloTextViewManager.swift
//  exposeSwiftToRNapp
//
//  Created by Pawandeep Singh Sekhon on 2/9/24.
//

import Foundation

// Talk to React Native

// One more thing to be aware of is that if the exposed name ends with “Manager”, the React Native side automatically deletes the “Manager” ending.
// React will see it named: "TextSettingsView"
@objc(HelloTextViewManager)
class HelloTextViewManager: RCTViewManager {

//  indicates that a particular native module or component requires setup on the main thread
//  If you want to initialize it on a background thread, then return “false”.
  override class func requiresMainQueueSetup() -> Bool {
    return true
  }

//  we return our UIKit View
  override func view() -> UIView! {
    HelloTextHostingView()
  }
}
