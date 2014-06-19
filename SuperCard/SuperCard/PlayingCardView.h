//
//  PlayingCardView.h
//  SuperCard
//
//  Created by 梁栋 on 14-6-9.
//  Copyright (c) 2014年 ildsea. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) NSUInteger rank;
@property (nonatomic,strong) NSString *suit;
@property (nonatomic) BOOL faceUp;

@end
