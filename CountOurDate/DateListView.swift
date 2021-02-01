//
//  ContentView.swift
//  CountOurDate
//
//  Created by Sheldon on 1/31/21.
//

import SwiftUI

struct DateListView: View {
    
    let emojiData : [EmojiDetails] = EmojiProvider.all()

    var body: some View {
        NavigationView{
            List{
                ForEach(emojiData, content:{ emojiDetails in
                    EmojiItemView(emoji: emojiDetails.emoji,emojiName: emojiDetails.name)
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
        DateListView()
    }
}

struct EmojiItemView: View {
  let emoji: String
  let emojiName: String

  var body: some View {
    Text("\(emoji) \(emojiName)")
      .font(.largeTitle)
      .padding([.top, .bottom])
  }
}
