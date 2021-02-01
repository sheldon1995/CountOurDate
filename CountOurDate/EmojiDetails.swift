//
//  EmojiDetails.swift
//  CountOurDate
//
//  Created by Sheldon on 1/31/21.
//

import Foundation

public struct EmojiDetails{
    public let emoji : String
    public let name : String
    public let description : String
}

/*
 The Identifiable extension is necessary to be able to identify each EmojiDetails element when we add them to our list with the ForEach struct. Since we will display different emoji, the emoji string itself can be used as the id.
 */
extension EmojiDetails: Identifiable {
  public var id: String {
    emoji
  }
}
