//
// @BundleId SocialNet iOS App
// @copyright  Copyright 2017-2022 Stars Developer
// @license     https://starsdeveloper.com/license/
// @version     2.0 2017-11-10
// @author      Stars Developer, Lahore, Pakistan
//

import UIKit

class GenericListingsModel: NSObject {
    
    var lostfound_id : Int?
    var community_id : Int?
    var document_id : Int?
    var group_id : Int?
    var user_id : Int?
    var event_id : Int?
    var classified_id : Int?
    var video_id : Int?
    var blog_id : Int?
    var album_id : Int?
    var job_id : Int?
    var playlist_id : Int?
    var funded_ratio = ""
    var funded_ratio1 = ""
    var funded_amount:Int?
    var funded_amount1 = ""
    var state = ""
    var featured:Int?
    var sponsored:Int?
    //for forum
    var forum_id : Int?
    var topic_id : Int?
    var slug = ""
    var category_name = ""
    var owner_id: Int?
    var project_id: Int?
    //For Poll
    var poll_id : Int?
    var allow_to_view : Int?
    var  onwer_title = ""
    
    //For albums
    var photo_count : Int?
    
    //For events
    var member_count : Int?
    
    
    var owner_title = ""
    
    //for user in photos
    var user_title = ""
    var category_title = ""
    
    var displayName = ""
     var displayName1 = ""
    var owner_image = ""
    var title = ""
    var descr = ""
    var image_profile = ""
    var image = ""
    var bodyforOppertunities = ""
    var type = ""
    var amount = ""
    var post_count : Int?
//    For Documents
    var document_title = ""
    var document_description = ""
    
//    For Classifieds
    var creation_date = ""
    var Location = ""
    var Price : Int?
    
//    For Classifieds
    var body = ""
    var item_type = ""
//    For Jobs
    var jobLocation = ""
    var company = ""
    
//    For polls
        var vote_count : Int?
//    For Videos
        var view_count : Int?
    //    For Music
    var play_count : Int?
    var playlist_songs = [Dictionary<String,AnyObject>]()
    
    convenience init(_ dictionary: Dictionary<String, AnyObject>) {
        self.init()
        if !(dictionary["group_id"] is NSNull)  && (dictionary["group_id"] != nil) {
            group_id = dictionary["group_id"] as? Int
        }
        if !(dictionary["playlist_id"] is NSNull)  && (dictionary["playlist_id"] != nil) {
            playlist_id = dictionary["playlist_id"] as? Int
        }
        if !(dictionary["document_id"] is NSNull)  && (dictionary["document_id"] != nil) {
            document_id = dictionary["document_id"] as? Int
        }
        if !(dictionary["featured"] is NSNull)  && (dictionary["featured"] != nil) {
            featured = dictionary["featured"] as? Int
        }
        if !(dictionary["sponsored"] is NSNull)  && (dictionary["sponsored"] != nil) {
                   sponsored = dictionary["sponsored"] as? Int
               }
        if !(dictionary["post_count"] is NSNull)  && (dictionary["post_count"] != nil) {
            post_count = dictionary["post_count"] as? Int
        }
        if !(dictionary["vote_count"] is NSNull)  && (dictionary["vote_count"] != nil) {
            if let v = dictionary["vote_count"] as? Int{
                    vote_count = v
            }else{
                vote_count = 0
            }
            
        }
        if !(dictionary["view_count"] is NSNull)  && (dictionary["view_count"] != nil) {
            if let v = dictionary["view_count"] as? Int{
                view_count = v
            }else{
                view_count = 0
            }
        }
        if !(dictionary["play_count"] is NSNull)  && (dictionary["play_count"] != nil) {
            if let v = dictionary["play_count"] as? Int{
                play_count = v
            }else{
                play_count = 0
            }
        }
        if !(dictionary["member_count"] is NSNull)  && (dictionary["member_count"] != nil) {
            if let v = dictionary["member_count"] as? Int{
                member_count = v
            }else{
                member_count = 0
            }
        }
        if !(dictionary["photo_count"] is NSNull)  && (dictionary["photo_count"] != nil) {
            if let v = dictionary["photo_count"] as? Int{
                photo_count = v
            }else{
                photo_count = 0
            }
        }
        if !(dictionary["job_id"] is NSNull)  && (dictionary["job_id"] != nil) {
            
            job_id = dictionary["job_id"] as? Int
        }
        if !(dictionary["amount"] is NSNull)  && (dictionary["amount"] != nil) {
                   
                   amount = dictionary["amount"] as! String
               }
        if !(dictionary["owner_id"] is NSNull)  && (dictionary["owner_id"] != nil) {
                  
            owner_id = dictionary["owner_id"]  as? Int
              }
        if !(dictionary["project_id"] is NSNull)  && (dictionary["project_id"] != nil) {
            
            project_id = dictionary["project_id"] as? Int
        }
        if !(dictionary["state"] is NSNull)  && (dictionary["state"] != nil) {
                   
                   state = dictionary["state"] as! String
               }
        
        if !(dictionary["lostfound_id"] is NSNull)  && (dictionary["lostfound_id"] != nil) {
            
            lostfound_id = dictionary["lostfound_id"] as? Int
        }
        if !(dictionary["video_id"] is NSNull)  && (dictionary["video_id"] != nil) {
            
            video_id = dictionary["video_id"] as? Int
        }
        if !(dictionary["album_id"] is NSNull)  && (dictionary["album_id"] != nil) {
            
            album_id = dictionary["album_id"] as? Int
        }
        if !(dictionary["blog_id"] is NSNull)  && (dictionary["blog_id"] != nil) {
            
            blog_id = dictionary["blog_id"] as? Int
        }
        if !(dictionary["community_id"] is NSNull)  && (dictionary["community_id"] != nil) {
            
            community_id = dictionary["community_id"] as? Int
        }
        if !(dictionary["poll_id"] is NSNull)  && (dictionary["poll_id"] != nil) {
            
            poll_id = dictionary["poll_id"] as? Int
        }
        if !(dictionary["allow_to_view"] is NSNull)  && (dictionary["allow_to_view"] != nil) {
            
            allow_to_view = dictionary["allow_to_view"] as? Int
        }
        if !(dictionary["user_id"] is NSNull)  && (dictionary["user_id"] != nil) {
            
            user_id = dictionary["user_id"] as? Int
        }
        if !(dictionary["forum_id"] is NSNull)  && (dictionary["forum_id"] != nil) {
            
            forum_id = dictionary["forum_id"] as? Int
        }
        if !(dictionary["topic_id"] is NSNull)  && (dictionary["topic_id"] != nil) {
            
            topic_id = dictionary["topic_id"] as? Int
        }
        if !(dictionary["event_id"] is NSNull)  && (dictionary["event_id"] != nil) {
            
            event_id = dictionary["event_id"] as? Int
        }
        if !(dictionary["classified_id"] is NSNull)  && (dictionary["classified_id"] != nil) {
            
            classified_id = dictionary["classified_id"] as? Int
        }
        
        if !(dictionary["owner_title"] is NSNull) && (dictionary["owner_title"] != nil) {
            
            owner_title = dictionary["owner_title"] as! String
        }
        if !(dictionary["onwer_title"] is NSNull) && (dictionary["onwer_title"] != nil) {
                   
                   onwer_title = dictionary["onwer_title"] as! String
               }
        if !(dictionary["displayname"] is NSNull) && (dictionary["displayname"] != nil) {
            
            displayName = dictionary["displayname"] as! String
        }
        if !(dictionary["name"] is NSNull) && (dictionary["name"] != nil) {
                   
                   displayName1 = dictionary["name"] as! String
               }
        if !(dictionary["title"] is NSNull) && (dictionary["title"] != nil) {
            
            title = String(describing: dictionary["title"]!)
        }
        if !(dictionary["item_type"] is NSNull) && (dictionary["item_type"] != nil) {
            
            item_type = String(describing: dictionary["item_type"]!)
        }
        
        if !(dictionary["description"] is NSNull) && (dictionary["description"] != nil) {
            
            descr = String(describing: dictionary["description"]!)
        }
        if !(dictionary["description"] is NSNull) && (dictionary["description"] != nil) {
                   
                   descr = String(describing: dictionary["description"]!)
               }
        
        
//        if !(dictionary["funded_amount"] is NSNull) && (dictionary["funded_amount"] != nil) {
//
//            funded_amount = dictionary["funded_amount"] as? Int
//        }
        if !(dictionary["funded_amount"] is NSNull) && (dictionary["funded_amount"] != nil) {
                   
            funded_amount1 =   String(describing: dictionary["funded_amount"]!)
               }
        if !(dictionary["funded_ratio_title"] is NSNull) && (dictionary["funded_ratio_title"] != nil) {
                   
                   funded_ratio =   dictionary["funded_ratio_title"] as! String
               }
        if !(dictionary["category_name"] is NSNull) && (dictionary["category_name"] != nil) {
            
            category_name = dictionary["category_name"] as! String
        }
        if !(dictionary["image"] is NSNull) && (dictionary["image"] != nil) {
            
            image = dictionary["image"] as! String
        }
        if !(dictionary["owner_image"] is NSNull) && (dictionary["owner_image"] != nil) {
            
            owner_image = dictionary["owner_image"] as! String
        }
        if !(dictionary["user_title"] is NSNull) && (dictionary["user_title"] != nil) {
            
            user_title = dictionary["user_title"] as! String
        }
        if !(dictionary["body"] is NSNull)  && (dictionary["body"] != nil){
            
            bodyforOppertunities = dictionary["body"] as! String
        }
        if !(dictionary["category_title"] is NSNull)  && (dictionary["category_title"] != nil){
            
            category_title = dictionary["category_title"] as! String
        }
        if !(dictionary["document_title"] is NSNull)  && (dictionary["document_title"] != nil){
            
            document_title = dictionary["document_title"] as! String
        }
        if !(dictionary["document_description"] is NSNull)  && (dictionary["document_description"] != nil){
            
            document_description = dictionary["document_description"] as! String
        }
        
        if !(dictionary["body"] is NSNull)  && (dictionary["body"] != nil){
            
            body = dictionary["body"] as! String
        }
        
        if !(dictionary["creation_date"] is NSNull)  && (dictionary["creation_date"] != nil){
            
            creation_date = dictionary["creation_date"] as! String
        }
        if !(dictionary["funded_ratio"] is NSNull)  && (dictionary["funded_ratio"] != nil){
            
            funded_ratio1 =  String(describing: dictionary["funded_ratio"]!)
        }
        if !(dictionary["location"] is NSNull)  && (dictionary["location"] != nil){
            
            jobLocation = dictionary["location"] as! String
        }
        if !(dictionary["company"] is NSNull)  && (dictionary["company"] != nil){
            
            company = dictionary["company"] as! String
        }
        if !(dictionary["slug"] is NSNull)  && (dictionary["slug"] != nil){
            
            slug = dictionary["slug"] as! String
        }
        
        if !(dictionary["type"] is NSNull)  && (dictionary["type"] != nil){
            
//            type = dictionary["type"] as! String
            if let v = dictionary["type"] as? Int{
                type = "\(v)"
            }else{
                type = dictionary["type"] as! String
            }
        }
        
        if let menu = dictionary["profile_fields"] as? Dictionary<String,AnyObject>{
            
            
            if !(menu["Price"] is NSNull)  && (menu["Price"] != nil) {
                
                Price = menu["Price"] as? Int
            }
            if !(menu["Location"] is NSNull)  && (menu["Location"] != nil) {
                
                Location = menu["Location"] as! String
            }
            

        }
        
        
        
        
        
        if let menu = dictionary["playlist_songs"] as? [Dictionary<String,AnyObject>]{
            
            
           playlist_songs = menu
            
        }
        
        

    }
}
