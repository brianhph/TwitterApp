//
//  TweetsCell.h
//  twitter
//
//  Created by EC on 2015/6/28.
//  Copyright (c) 2015年 EC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tweet.h"

@class TweetsCell;

@protocol TweetCellDelegate <NSObject>

- (void)TweetsCell:(TweetsCell *)TweetsCell onReplyClick:(Tweet *)originlTweet;
- (void)TweetsCell:(TweetsCell *)TweetsCell onProfileTap:(Tweet *)originlTweet;
@end

@interface TweetsCell : UITableViewCell
@property (nonatomic, strong) Tweet *tweet;
@property (nonatomic, weak) id<TweetCellDelegate> delegate;
@end
