//
//  ProfileVC.swift
//  Timeline
//
//  Created by Adam Aldous on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit
import SafariServices

class ProfileVC: UIViewController, UICollectionViewDataSource, ProfileHeaderCollectionReusableViewDelegate {
    
    var user: User?
    
    var userPosts: [Post] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        print(user)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateBasedOnUser() {
        
        guard let user = user else {return}
        
        title = user.username
        
        PostController.postsForUser(user) { (posts) -> Void in
            if let posts = posts {
                self.userPosts = posts
            } else {
                self.userPosts = []
            }
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                self.collectionView.reloadData()
            })
        }
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return userPosts.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let headerView = collectionView.dequeueReusableSupplementaryViewOfKind(UICollectionElementKindSectionHeader, withReuseIdentifier: "headerView", forIndexPath: indexPath) as! ProfileHeaderCollectionReusableView
        
        headerView.updateWithUser(user!)
        headerView.delegate = self
        
        return headerView
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
