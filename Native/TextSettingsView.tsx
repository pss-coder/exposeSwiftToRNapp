/**
 “requireNativeComponent” is a method provided by React Native for using native UI components in your React Native application.
  It serves as a bridge between JavaScript code and native iOS code,
  enabling you to develop custom native UI components and integrate them into your React Native app.
 */

import { ViewStyle, requireNativeComponent } from "react-native";

// similar to struct in Swift
export interface TextSettingsViewProps {
    style: ViewStyle

    // attach events
    onChangeBoldToggle: (event: any) => void;
    onChangeItalicToggle: (event: any) => void;
    onChangeUnderlineToggle: (event: any) => void;
}


/**
 “as unknown” is a type casting technique in React.
  It’s often employed as a means to circumvent TypeScript’s type checking when the precise type isn’t known at compile-time.

“React.FC” is a generic type representing a ‘Function Component’. 
It’s a type definition included in the React TypeScript typings. When you encounter

“React.FC<TextSettingsViewProps>”, 
it indicates the definition of a functional component that accepts props of type TextSettingsViewProps.
 */

export const TextSettingsView = requireNativeComponent('TextSettingsView') as unknown as React.FC<TextSettingsViewProps>