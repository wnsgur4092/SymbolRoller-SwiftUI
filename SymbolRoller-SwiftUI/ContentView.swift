//
//  ContentView.swift
//  SymbolRoller-SwiftUI
//
//  Created by JunHyuk Lim on 31/8/2022.
//

import SwiftUI

struct ContentView: View {
    
    let symbols : [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @State var imageName : String = "sun.min"
    
    
    var body: some View {
        VStack{
            
            Spacer()
            
            Image(systemName: imageName)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Spacer()
            
            Text(imageName)
                .font(.system(size: 40, weight: .bold, design: .default))
            
            Button{
                imageName = symbols.randomElement()!
            } label : {
                HStack{
                    Image(systemName: "arrow.3.trianglepath")
                    VStack{
                        Text("Reload")
                            .font(.system(size: 30, weight: .bold, design: .default))
                        Text("Click me to reload")
                    }
                }
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(.pink)
            .cornerRadius(40)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
