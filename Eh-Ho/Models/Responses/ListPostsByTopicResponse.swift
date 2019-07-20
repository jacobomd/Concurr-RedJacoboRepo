//
//  ListPostsByTopicResponse.swift
//  Eh-Ho
//
//  Created by Jacobo Morales Diaz on 20/07/2019.
//  Copyright © 2019 KeepCoding. All rights reserved.
//

import Foundation

// MARK: - Welcome
struct ListPostsByTopicResponse: Codable {
    let postStream: PostStream2
    let id: Int
    
    enum CodingKeys: String, CodingKey {
        case postStream = "post_stream"
        case id
    }
}

// MARK: - PostStream
struct PostStream2: Codable {
    let posts: [Post2]
}

// MARK: - Post
struct Post2: Codable {
    let id: Int
    let name, username, avatarTemplate, createdAt: String
    let cooked: String
    let postNumber, postType: Int
    let updatedAt: String
    let replyCount: Int
    //let replyToPostNumber: JSONNull?
    let quoteCount, incomingLinkCount, reads: Int
    let score: Double
    let yours: Bool
    let topicID: Int
    let topicSlug, displayUsername: String
    //let primaryGroupName, primaryGroupFlairURL, primaryGroupFlairBgColor, primaryGroupFlairColor: JSONNull?
    let version: Int
    let canEdit, canDelete, canRecover, canWiki: Bool
    let read: Bool
    //let userTitle: JSONNull?
    //let actionsSummary: [JSONAny]
    let moderator, admin, staff: Bool
    let userID: Int
    let hidden: Bool
    let trustLevel: Int
    //let deletedAt: JSONNull?
    let userDeleted: Bool
    //let editReason: JSONNull?
    let canViewEditHistory, wiki: Bool
    
    enum CodingKeys: String, CodingKey {
        case id, name, username
        case avatarTemplate = "avatar_template"
        case createdAt = "created_at"
        case cooked
        case postNumber = "post_number"
        case postType = "post_type"
        case updatedAt = "updated_at"
        case replyCount = "reply_count"
      //  case replyToPostNumber = "reply_to_post_number"
        case quoteCount = "quote_count"
        case incomingLinkCount = "incoming_link_count"
        case reads, score, yours
        case topicID = "topic_id"
        case topicSlug = "topic_slug"
        case displayUsername = "display_username"
//        case primaryGroupName = "primary_group_name"
//        case primaryGroupFlairURL = "primary_group_flair_url"
//        case primaryGroupFlairBgColor = "primary_group_flair_bg_color"
//        case primaryGroupFlairColor = "primary_group_flair_color"
        case version
        case canEdit = "can_edit"
        case canDelete = "can_delete"
        case canRecover = "can_recover"
        case canWiki = "can_wiki"
        case read
      //  case userTitle = "user_title"
       // case actionsSummary = "actions_summary"
        case moderator, admin, staff
        case userID = "user_id"
        case hidden
        case trustLevel = "trust_level"
      //  case deletedAt = "deleted_at"
        case userDeleted = "user_deleted"
      // case editReason = "edit_reason"
        case canViewEditHistory = "can_view_edit_history"
        case wiki
    }
}


