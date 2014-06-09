//
//  PlayingCardView.m
//  SuperCard
//
//  Created by 梁栋 on 14-6-9.
//  Copyright (c) 2014年 ildsea. All rights reserved.
//

#import "PlayingCardView.h"

@implementation PlayingCardView

-  (void) setRank:(NSUInteger)rank
{
    _rank = rank;
    [self setNeedsDisplay];
}

- (void) setSuit:(NSString *)suit
{
    _suit = suit;
    [self setNeedsDisplay];
    
}

- (void) setFaceUp:(BOOL)faceUp
{
    _faceUp = faceUp;
    [self setNeedsDisplay];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


@end
