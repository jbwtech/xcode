//
//  HelloGatorsAppDelegate.m
//  HelloGators
//
//  Created by Williams, John B. on 10/1/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "HelloGatorsAppDelegate.h"

@implementation HelloGatorsAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
