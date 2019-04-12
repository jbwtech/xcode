//
//  PolygonShape.m
//  WhatATool2
//
//  Created by Williams, John B. on 10/4/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PolygonShape.h"


@implementation PolygonShape

int numSides;
int minNumSides = 3;
int maxNumSides = 20;

-(int)numberOfSides{
	return numSides;
}
-(void)setNumberOfSides:(int)x{
	numSides = x;
}
@end
