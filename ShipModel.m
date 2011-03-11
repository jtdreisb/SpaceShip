//
//  ShipModel.m
//  SpaceShip
//
//  Created by Jason Dreisbach on 3/7/11.
//  Copyright 2011 Cal Poly. All rights reserved.
//

#import "ShipModel.h"


@implementation ShipModel
@synthesize moving;
// use glVertex2fv to draw triangle strip
/*GLfloat verts[] = {
	0.0,0.0,
	0.0, 3.0,
	1.0, 0.0,
	0.0,0.0
		//2.0, -2.0,
		//0.0,0.0,
		//2.0,-2.0,
};*/


- (id)init {
	if ((self = [super init])) {
		y = x = 0;
		theta = 0;
		color = malloc(sizeof(GLfloat) * 3);
		color[0] =  .9; //red
		color[1] =  .9; //green
		color[2] =  .9; //blue
		moving = NO;
	}
	return self;
}

- (void)render {
	glPushMatrix();
	glColor3fv(color);
	//theta += .1;
	
	if (moving) {
		NSLog(@"%f",y);
		y += 1;
	}
	
	glRotatef(-theta, 0, 0, 1);
	glTranslatef(10, y, 0);
	
	/*
	glBegin(GL_QUADS);
	glVertex3f (0.0, 0.0, 0.0);
	glColor3f(.5, 1, 1);
	glVertex3f (100.0, 0.0, 0.0);
	
	glColor3f(.5, .2, 1);
	glVertex3f (100.0, 100.0, 0.0);
	glColor3f(.5, .3, .1);
	glVertex3f (0.0, 100.0, 0.0);
	glEnd();
	*/
    
	glBegin(GL_TRIANGLE_STRIP);
	
	glVertex3f(0.0, 20.0, 0.0);
	glVertex3f(10.0, -10.0, 0.0);
	glVertex3f(0.0, 0.0, 0.0);
	glVertex3f(0.0, 20.0, 0.0);
	glVertex3f(-10.0, -10.0, 0.0);
	
	glEnd();
	
	glPopMatrix();
	
}


- (void)dealloc {
	[super dealloc];
	free(color);
}

@end
