//
//  ListTopicsByCategoryResponse.swift
//  Eh-Ho
//
//  Created by Jacobo Morales Diaz on 20/07/2019.
//  Copyright © 2019 KeepCoding. All rights reserved.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct ListTopicsByCategoryResponse: Codable {
    let users: [User]
 //   let primaryGroups: [JSONAny]
    let topicList: TopicList
    
    enum CodingKeys: String, CodingKey {
        case users
   //     case primaryGroups = "primary_groups"
        case topicList = "topic_list"
    }
}

// MARK: - TopicList
struct TopicList: Codable {
    let canCreateTopic: Bool
//    let draft: JSONNull?
    let draftKey: String
//    let draftSequence: JSONNull?
    let perPage: Int
    let topics: [Topic]
    
    enum CodingKeys: String, CodingKey {
        case canCreateTopic = "can_create_topic"
 //       case draft
        case draftKey = "draft_key"
//        case draftSequence = "draft_sequence"
        case perPage = "per_page"
        case topics
    }
}

// MARK: - Topic
struct Topic: Codable {
    let id: Int
    let title, fancyTitle, slug: String
    let postsCount, replyCount, highestPostNumber: Int
    let imageURL: String?
    let createdAt: String?
    let lastPostedAt: String?
    let bumped: Bool
    let bumpedAt: String?
    let unseen, pinned: Bool
 //   let unpinned: JSONNull?
    let excerpt: String?
    let visible, closed, archived: Bool
//    let bookmarked, liked: JSONNull?
    let views, likeCount: Int
    let hasSummary: Bool
    let archetype, lastPosterUsername: String?
    let categoryID: Int
    let pinnedGlobally: Bool
//    let featuredLink: JSONNull?
    let posters: [Poster]
    
    enum CodingKeys: String, CodingKey {
        case id, title
        case fancyTitle = "fancy_title"
        case slug
        case postsCount = "posts_count"
        case replyCount = "reply_count"
        case highestPostNumber = "highest_post_number"
        case imageURL = "image_url"
        case createdAt = "created_at"
        case lastPostedAt = "last_posted_at"
        case bumped
        case bumpedAt = "bumped_at"
 //       case unseen, pinned, unpinned, excerpt, visible, closed, archived, bookmarked, liked, views
        case unseen, pinned, excerpt, visible, closed, archived, views
        case likeCount = "like_count"
        case hasSummary = "has_summary"
        case archetype
        case lastPosterUsername = "last_poster_username"
        case categoryID = "category_id"
        case pinnedGlobally = "pinned_globally"
  //      case featuredLink = "featured_link"
        case posters
    }
}

// MARK: - Poster
struct Poster: Codable {
    let extras, posterDescription: String
    let userID: Int
  //  let primaryGroupID: JSONNull?
    
    enum CodingKeys: String, CodingKey {
        case extras
        case posterDescription = "description"
        case userID = "user_id"
 //       case primaryGroupID = "primary_group_id"
    }
}

// MARK: - User
struct User: Codable {
    let id: Int
    let username, name, avatarTemplate: String
    
    enum CodingKeys: String, CodingKey {
        case id, username, name
        case avatarTemplate = "avatar_template"
    }
}



