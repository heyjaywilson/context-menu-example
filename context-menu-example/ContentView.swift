//
//  ContentView.swift
//  context-menu-example
//
//  Created by Maegan Wilson on 3/27/20.
//  Copyright © 2020 Maegan Wilson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @State private var fontColor = Color.black
  
  var body: some View {
    Text("Long press here to show a context menu")
      .foregroundColor(fontColor)
      .contextMenu {
        Button(action:{
          self.fontColor = Color.blue
        }){
          HStack {
            Image(systemName: "pencil.tip.crop.circle")
            Text("Set color to blue")
          }
        }
        Button(action:{
          self.fontColor = Color.red
        }){
          HStack {
            Image(systemName: "pencil.tip.crop.circle")
            Text("Set color to red")
          }
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
