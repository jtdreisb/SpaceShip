//
//  Scene.m
//  SpaceShip
//
//  Created by Jason Dreisbach on 3/7/11.
//  Copyright 2011 Cal Poly. All rights reserved.
//

#import "Scene.h"
#import "Sprite.h"

@implementation Scene

@synthesize sprites;

- (id) init 
{
	if (self = [super init]) {
		self.sprites = [[NSArray alloc] init];
		[self addSprites];
	}
	return self;
}

- (void)addSprites
{
	Sprite *new = [Sprite init];
	self.sprites = [sprites arrayByAddingObject: new];
}
- (void)render 
{
	int i = [sprites count];
	NSLog(@"%@",sprites);
	for (; i--;) {
		[[sprites objectAtIndex:i] render];
	}

}
@end
