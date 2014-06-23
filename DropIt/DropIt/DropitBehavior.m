//
//  DropitBehavior.m
//  DropIt
//
//  Created by 梁栋 on 14-6-18.
//  Copyright (c) 2014年 ildsea. All rights reserved.
//

#import "DropitBehavior.h"

@interface DropitBehavior()

@property (strong,nonatomic) UIGravityBehavior *gravity;
@property (strong,nonatomic) UICollisionBehavior *collision;

@end

@implementation DropitBehavior

- (UIGravityBehavior *)gravity
{
    if(!_gravity){
        _gravity = [[UIGravityBehavior alloc]init];
        _gravity.magnitude = 0.9;
    }
    
    return _gravity;
}

- (UICollisionBehavior *)collision
{
    if(!_collision){
        _collision = [[UICollisionBehavior alloc]init];
        _collision.translatesReferenceBoundsIntoBoundary = YES;
    }
    return _collision;
}


- (void)addItem:(id<UIDynamicItem>)item
{
    [self.gravity addItem:item];
    [self.collision addItem:item];
}


- (void)removeItem:(id<UIDynamicItem>)item
{
    [self.gravity removeItem:item];
    [self.collision removeItem:item];
}

- (instancetype)init
{
    self = [super init];
    [self addChildBehavior:self.gravity];
    [self addChildBehavior:self.collision];
    
    return self;
    
}


@end
