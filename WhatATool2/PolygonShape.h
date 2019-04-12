//
//  PolygonShape.h
//  WhatATool2
//
//  Created by Williams, John B. on 10/4/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>

@interface PolygonShape : NSObject
{
  @public
	int numberOfSides;
	int minimumNumberOfSides;
	int maximumNumberOfSides;
	float angleInDegrees;
	float angleInRadians;
	NSString *name;
}

@property int numberOfSides;
@property int minimumNumberOfSides;
@property int maximumNumberOfSides;
@property(readonly) float angleInDegrees;
@property(readonly) float angleInRadians;
@property(readonly) NSString *name;

-(int)numberOfSides;

@end
