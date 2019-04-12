//
//  SliderTestAppDelegate.m
//  SliderTest
//
//  Created by Williams, John B. on 9/30/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "SliderTestAppDelegate.h"

@implementation SliderTestAppDelegate

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
