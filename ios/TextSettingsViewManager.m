//
//  TextSettingsViewManager.m
//  exposeSwiftToRNapp
//
//  Created by Pawandeep Singh Sekhon on 30/8/24.
//

/***
 RCT_EXTERN_MODULE(ModuleName, RCTViewManager) = Declares a native module to be used in React Native.

 RCT_EXPORT_METHOD(methodName:(NSString *)param1 param2:(NSString *)param2) = Exposes a method from the native module to JavaScript.

 RCT_EXPORT_VIEW_PROPERTY(propertyName, propertyType) = Exposes a property of a native view to JavaScript.

 RCT_EXPORT_VIEW_EVENT(eventName, body) = Exposes an event from a native view to JavaScript.

 RCT_EXPORT_MODULE() = Declares a native module and exports it with default settings.

 RCT_EXPORT_MODULE_CONSTANTS() = Exposes constants from a native module to JavaScript.

 RCT_EXPORT_MODULE_INITIALIZER(initializerName:(NSDictionary *)props) = Specifies a
 
 
 */

//#import <Foundation/Foundation.h>
#import "React/RCTViewManager.h"

@interface

// name of our view manager
RCT_EXTERN_MODULE(TextSettingsViewManager, RCTViewManager)


// Our event handlers
RCT_EXPORT_VIEW_PROPERTY(onChangeBoldToggle, RCTDirectEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onChangeItalicToggle, RCTDirectEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onChangeUnderlineToggle, RCTDirectEventBlock)

@end
