//
//  SpaceShipAppDelegate.h
//  SpaceShip
//
//  Created by Jason Dreisbach on 2/28/11.
//  Copyright 2011 Cal Poly. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SpaceShipAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
