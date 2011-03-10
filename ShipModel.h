//
//  ShipModel.h
//  SpaceShip
//
//  Created by Jason Dreisbach on 3/7/11.
//  Copyright 2011 Cal Poly. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface ShipModel : NSObject {
	GLfloat x,y;
	GLfloat theta;
	BOOL moving;
	GLfloat *color;
}


- (void)render;

- (void)setMoving:(BOOL)yesno;
@end
