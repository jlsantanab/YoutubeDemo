//
//  TrendingCell.swift
//  youtube
//
//  Created by Juan Luis on 7/9/16.
//  Copyright © 2016 Cuba++. All rights reserved.
//

import UIKit

class TrendingCell: FeedCell {

    override func fetchVideos() {
        ApiService.sharedInstance.fetchTrendingFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }

}
