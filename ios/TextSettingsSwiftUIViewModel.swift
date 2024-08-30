//
//  TextSettingsSwiftUIViewModel.swift
//  exposeSwiftToRNapp
//
//  Created by Pawandeep Singh Sekhon on 30/8/24.
//

import Foundation

final class TextSettingsSwiftUIViewModel: ObservableObject {
  
  var onChangeBoldToggle: RCTDirectEventBlock = { _ in }
    var onChangeItalicToggle: RCTDirectEventBlock = { _ in }
    var onChangeUnderlineToggle: RCTDirectEventBlock = { _ in }
    
  
//  to communicate to React Native, must send as return a dictionary with key-value pairs, cannot as Int or String directly
  // e.g: onSomething([“key”: value])
  
  // Every time a toggle is changed, we want to send data to our React Native side. To achieve this, we use the “didSet” keyword for our “Published” values.
    @Published var isBold: Bool = false {
      didSet {
        onChangeBoldToggle(["isBold": isBold])
      }
    }
    @Published var isItalic: Bool = false {
      didSet {
        onChangeItalicToggle(["isItalic": isItalic])
      }
    }
    @Published var isUnderline: Bool = false {
      didSet {
        onChangeUnderlineToggle(["isUnderline": isUnderline])
      }
    }

    init() { }
    
//  when initialsing with this data -> meant for React Native
    init(
      onChangeBoldToggle: @escaping RCTDirectEventBlock,
      onChangeItalicToggle: @escaping RCTDirectEventBlock,
      onChangeUnderlineToggle: @escaping RCTDirectEventBlock
    ) {
      self.onChangeBoldToggle = onChangeBoldToggle
      self.onChangeItalicToggle = onChangeItalicToggle
      self.onChangeUnderlineToggle = onChangeUnderlineToggle
    }
  
}
