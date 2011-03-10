//
//  GLView.h
//  SpaceShip
//
//  Created by Jason Dreisbach on 2/28/11.
//  Copyright 2011 Cal Poly. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class ShipModel;

@interface GLView : NSOpenGLView {
	ShipModel *ship;
	double	 rot;
}

@property (retain) ShipModel *ship;

@end
