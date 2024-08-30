//
//  TextSettingHostingView.swift
//  exposeSwiftToRNapp
//
//  Created by Pawandeep Singh Sekhon on 30/8/24.
//

import Foundation

// to host our swiftUI View in a Swift View. To do that, we use “UIHostingController”

// UIHostingController is a class provided by Apple’s SwiftUI framework that enables you to incorporate SwiftUI views into UIKit-based applications. It acts as a bridge between the SwiftUI views and UIKit’s view controller hierarchy.

import SwiftUI

final class TextSettingsHostingView: UIView {
  var view: UIView?
  
  // our view model
  var viewModel = TextSettingsSwiftUIViewModel()

  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }

  required init?(coder: NSCoder) {
    super.init(coder: coder)
    setupView()
  }

  private func setupView() {
    // swiftui -> UIKit
    let view = TextSettingsSwiftUIView(viewModel: viewModel)
    let vc = UIHostingController(rootView: view)
    vc.view.frame = bounds
    self.addSubview(vc.view)
    self.view = vc.view
  }

  override func layoutSubviews() {
    super.layoutSubviews()
    view?.frame = bounds
  }
  
//  define properties for events
//  references: https://arc.net/l/quote/zfknfrfi
  // “@objc” keyword at the beginning of each property. If we don’t want to use this for every property and function, then we can use “@objcMembers”, which is a class-level keyword.
  
  // Use “@objc” to expose individual methods, properties, classes, protocols, enums, or structs to Objective-C. It enables interoperability by making Swift code accessible from Objective-C. For example:
  
  // Apply “@objcMembers” at the class level to implicitly mark all members of the class as “@objc”. This is useful when you have a class with multiple members that need to be exposed to Objective-C, simplifying the process. For example:
  
  @objc
    var onChangeBoldToggle: RCTBubblingEventBlock = { _ in } {
      didSet {
        viewModel.onChangeBoldToggle = onChangeBoldToggle
      }
    }

    @objc
    var onChangeItalicToggle: RCTBubblingEventBlock = { _ in } {
      didSet {
        viewModel.onChangeItalicToggle = onChangeItalicToggle
      }
    }

    @objc
    var onChangeUnderlineToggle: RCTBubblingEventBlock = { _ in } {
      didSet {
        viewModel.onChangeUnderlineToggle = onChangeUnderlineToggle
      }
    }
}
