//
//  Sprite.m
//  SpaceShip
//
//  Created by Jason Dreisbach on 3/7/11.
//  Copyright 2011 Cal Poly. All rights reserved.
//

#import "Sprite.h"
#import <GLUT/GLUT.h>

@implementation Sprite


- (void)render
{
	glPushMatrix();
	glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
	glutWireTeapot(1);
	glPopMatrix();
}
@end
