//
//  Card.h
//  Machismo
//
//  Created by 梁栋 on 14-5-24.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong,nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;

@property (nonatomic, getter = isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end
