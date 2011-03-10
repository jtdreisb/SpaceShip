//
//  GLView.m
//  SpaceShip
//
//  Created by Jason Dreisbach on 2/28/11.
//  Copyright 2011 Cal Poly. All rights reserved.
//

#import "GLView.h"
#import <OpenGL/glu.h>
#import <GLUT/GLUT.h>

#import "ShipModel.h"

@implementation GLView

@synthesize ship;

- (id)initWithFrame:(NSRect)frameRect pixelFormat:(NSOpenGLPixelFormat *)format
{
	if ((self = [super initWithFrame:frameRect pixelFormat:format])) {
		self.ship = [[ShipModel alloc] init];
        

		rot	=0;
		[NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(heartbeat:) userInfo:nil repeats:YES];
			//[self becomeFirstResponder];
		
	}
	return self;
}


- (void)heartbeat:(NSTimer *) timer
{
	[self setNeedsDisplay:YES];
}

- (void)prepareOpenGL
{
	//glEnable(GL_PROJECTION);
	glLoadIdentity();
	
	glOrtho(-100, 100, -100, 100, 0.0, 1.0);
	
	//glDisable(GL_DEPTH);
	glMatrixMode(GL_MODELVIEW);
	glEnable(GL_SMOOTH);
	
	glDisable(GL_DEPTH_TEST);
	glClearColor(0,0,0,0);
}

- (void)reshape
{
    glLoadIdentity();
	glOrtho(-100, 100, -100, 100, 0.0, 1.0);
	glMatrixMode(GL_MODELVIEW);

}

- (void)drawRect:(NSRect)rect
{
	
	glClearColor (0.0, 0.0, 0.0, 0.0);
	glClear (GL_COLOR_BUFFER_BIT);
	glColor3f (1.0, 1.0, 1.0);
		
	if (ship) {
		[ship render];
	}
	
	[[self openGLContext] flushBuffer];
}

- (void)dealloc 
{
	[super dealloc];
	[ship release];
}
#pragma mark NSResponder

	// ---------------------------------

- (BOOL)acceptsFirstResponder
{
	return YES;
}

	// ---------------------------------

- (BOOL)becomeFirstResponder
{
	return  YES;
}

	// ---------------------------------

- (BOOL)resignFirstResponder
{
	return YES;
}

- (void)keyDown:(NSEvent *)theEvent {	
	if (![theEvent isARepeat]) {
		NSString *str = [theEvent characters];
		
		if ([str isEqualToString:@"w"]) {
			NSLog(@"Moving");
			[ship setMoving:YES];
		}
		
	}
	//NSLog(@"%@", theEvent);
}


- (void)keyUp:(NSEvent *)theEvent {
	if ([theEvent isARepeat]) {
		NSLog(@"Holy shit you are good");
	}
	if (![theEvent isARepeat]) {
		NSString *str = [theEvent characters];
		
		if ([str isEqualToString:@"w"]) {
			
			NSLog(@"not forward");
			[ship setMoving:NO];
		}
		
	}
}

@end
