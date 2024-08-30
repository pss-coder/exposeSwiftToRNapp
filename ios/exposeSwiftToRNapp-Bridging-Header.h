//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//


// Need this file to create a bridge between Swift and React Native!!!
// file acts as an Objective-C header, defining the Swift interfaces. Think of it as a central header for your Swift codebase. Importing it is straightforward; no special actions are needed to create the generated header. Simply import it to seamlessly access its contents in your Objective-C code.

//To enable the iOS side to recognize React Native

//protocol (RCTBridgeModule) that native modules in iOS must conform to
#import "React/RCTBridgeModule.h"

//defines the RCTViewManager class, which is used for creating custom view components in React Native for iOS. We use this module to expose our SwiftUIView using ViewManager.
#import "React/RCTViewManager.h"

// used for creating native modules in React Native that emit events to JavaScript. We use this to handle toggle behavior in React Native.
#import "React/RCTEventEmitter.h"
