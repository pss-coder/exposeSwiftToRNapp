//
//  TextSettingsSwiftUIView.swift
//  exposeSwiftToRNapp
//
//  Created by Pawandeep Singh Sekhon on 30/8/24.
//

import SwiftUI

struct TextSettingsSwiftUIView: View {

//@State private var isBold: Bool = false
//@State private var isItalic: Bool = false
//@State private var isUnderline: Bool = false
  
  @ObservedObject var viewModel: TextSettingsSwiftUIViewModel

  var body: some View {
    Form {
      Section {
//        Toggle("Bold", isOn: $isBold)
//        Toggle("Italic", isOn: $isItalic)
//        Toggle("Underline", isOn: $isUnderline)
        Toggle("Bold", isOn: $viewModel.isBold)
                Toggle("Italic", isOn: $viewModel.isItalic)
                Toggle("Underline", isOn: $viewModel.isUnderline)
      }
    }
  }
}

#Preview {
  TextSettingsSwiftUIView(viewModel: TextSettingsSwiftUIViewModel())
    
}
