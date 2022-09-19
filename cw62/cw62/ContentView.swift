//
//  ContentView.swift
//  cw62
//
//  Created by Ritaj Alhaddad on 19/09/2022.
//

import SwiftUI

struct ContentView: View {
      @State var words = ""
        
        let chooseColor = [Color.blue , Color.pink , Color.gray , Color.yellow]
    var body: some View {
        NavigationView {
            
            VStack{
                Spacer()
                Text("اختر اللون")
                    .font(.system(size: 30))
                HStack{
                    ForEach(chooseColor, id: \.self) {onecolor in
                        Circle()
                            .foregroundColor(onecolor)
                            .frame(width: 50)
                    
                    }
                }
                TextField("اكتب هنا",text: $words)
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: 20)
                    .padding()
                
                NavigationLink(destination: Text (words)){
                  Text("حغظ")
                        .font(.system(size: 17))
                        .frame(width: 80, height: 30)
                        .background(.gray)
                        .clipShape(Capsule())
                }.navigationTitle("دفتر اليوميات")
                Spacer()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}
