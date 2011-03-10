//
//  SpaceShipAppDelegate.m
//  SpaceShip
//
//  Created by Jason Dreisbach on 2/28/11.
//  Copyright 2011 Cal Poly. All rights reserved.
//

#import "SpaceShipAppDelegate.h"
#import "GLView.h"

@implementation SpaceShipAppDelegate


@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application
	[window setShowsResizeIndicator:NO];
		//[window setStyleMask:0];
	
	
	NSOpenGLPixelFormatAttribute attr[] =
	{
		NSOpenGLPFADoubleBuffer,
		NSOpenGLPFAAccelerated,
		NSOpenGLPFAColorSize, 32,
		NSOpenGLPFADepthSize, 16,
		0 };
	NSOpenGLPixelFormat *format = [[NSOpenGLPixelFormat alloc] initWithAttributes:attr];
	
		// make a GLVIew
	
	GLView *view = [[GLView alloc] initWithFrame: NSMakeRect(0, 0, window.frame.size.width, window.frame.size.height) 
								  pixelFormat:format];
	[window.contentView addSubview:view];
	
	
}

	 
- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication
{
	return YES;
}

@end
