//
//  ContentView.swift
//  sliderSomethineOne
//
//  Created by Peter Clarke on 20.01.2023.
//

import SwiftUI

struct ContentView: View {
    @State var width  : Double = 130
    @State var height : Double = 130
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Rectangle()
                .frame(width: width, height: height)
                .foregroundColor(Color.orange)
            Spacer()
            Spacer()
            Text("Width:")
            Slider(value: $width, in: 20...200)
                .accentColor(Color.green)
                .tint(Color.pink)
            Text("Height:")
        Slider(value: $height, in: 20...200)
            .accentColor(Color.yellow)
       
            
            Button("Reset"){
                self.width = 130
                self.height = 130
            }
        }.padding()
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
