//
//  HelloTextHostingView.swift
//  exposeSwiftToRNapp
//
//  Created by Pawandeep Singh Sekhon on 2/9/24.
//

import Foundation

import SwiftUI

final class HelloTextHostingView: UIView {
  var view: UIView?
  
  // our view model
  var viewModel = HelloTextSwiftUIView()
  
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
    let view = HelloTextSwiftUIView()
    let vc = UIHostingController(rootView: view)
    vc.view.frame = bounds
    self.addSubview(vc.view)
    self.view = vc.view
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    view?.frame = bounds
  }
}
