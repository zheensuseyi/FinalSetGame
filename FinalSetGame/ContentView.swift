//
//  ContentView.swift
//  FinalSetGame
//
//  Created by Zheen Suseyi on 2/14/25.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm: SetCardGame
    var body: some View {
        VStack {
            Text("Find All The sets!")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Score: \(vm.score)")
            ScrollView {
                AspectVGrid(vm: vm)
            }
            Button("Add 3 Cards!" ) {
                vm.addThreeCards()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView(vm: SetCardGame())
}

/*Button(action: {
    // Action to perform when button is tapped
    print("Custom button tapped!")
}) {
    HStack {
        Image(systemName: "star.fill")
        Text("Favorite")
    }
    .padding()
    .background(Color.blue)
    .foregroundColor(.white)
    .cornerRadius(8)
}
*/
