//
//  DropitBehavior.h
//  DropIt
//
//  Created by 梁栋 on 14-6-18.
//  Copyright (c) 2014年 ildsea. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropitBehavior : UIDynamicBehavior <UIDynamicAnimatorDelegate>

- (void)addItem:(id<UIDynamicItem>)item;
- (void)removeItem:(id<UIDynamicItem>)item;

@end
