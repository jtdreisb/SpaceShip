//
//  Scene.h
//  SpaceShip
//
//  Created by Jason Dreisbach on 3/7/11.
//  Copyright 2011 Cal Poly. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Sprite;
@interface Scene : NSObject {
	NSArray	*sprites;
}

@property (retain) NSArray *sprites;

- (void)render;

- (void)addSprites;
@end
