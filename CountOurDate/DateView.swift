//
//  ContentView.swift
//  CountOurDate
//
//  Created by Sheldon on 1/31/21.
//

import SwiftUI

struct DateView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(0..<10, content:{ i in
                    Text("\(i): 🥳")
                        .font(.largeTitle)
                        .padding([.top,.bottom])
                })
            }
            .foregroundColor(.black)
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("GG_TT_Book")
        }
    }
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        DateView()
    }
}
