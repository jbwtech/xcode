#import <Foundation/Foundation.h>

void PrintLogHeader(NSString *theFunctionName) {
	NSLog(@"----------------------------------------");
	NSLog(@"--- %@ Output", theFunctionName );
	NSLog(@"----------------------------------------");
	return;
}

void PrintPathInfo(void) {
	
	PrintLogHeader(@"PrintPathInfo");
	
	NSString *theString = @"~";
	theString = [theString stringByExpandingTildeInPath];
	NSLog(@"My home folder is at '%@'", theString);
	
	NSArray *thePathComponents = [theString pathComponents];
	for( theString in thePathComponents ) {
		NSLog( @"%@", theString );
	}
	return;
}

void PrintProcessInfo(void) {
	
	PrintLogHeader(@"PrintProcessInfo");
	
	NSProcessInfo *theProcess = [NSProcessInfo processInfo];
	NSString *theName = [theProcess processName];
	int thePID = [theProcess processIdentifier];
	NSLog(@"Process Name: %@   Process ID: %i", theName, thePID);
	return;
}

void AddURLToDict(NSString *theName, NSString *theURLString, NSMutableDictionary *theDict) {
	
	NSURL *theURL = [NSURL URLWithString:theURLString];
	[theDict setObject:theURL forKey:theName];
	return;
}

void PrintBookmarkInfo(void) {
	
	PrintLogHeader(@"PrintBookmarkInfo");
	
	NSMutableDictionary *theDict = [NSMutableDictionary dictionary];
	
	AddURLToDict(@"Stanford University", @"http://www.stanford.edu", theDict);
	AddURLToDict(@"Apple", @"http://www.apple.com", theDict);
	AddURLToDict(@"CS193P", @"http://cs193p.stanford.edu", theDict);
	AddURLToDict(@"Stanford on iTunes U", @"http://itunes.stanford.edu", theDict);
	AddURLToDict(@"Stanford Mall", @"http://stanfordshop.com", theDict);
	
	for( NSString *theKey in theDict ) {
		if( [theKey hasPrefix:@"Stanford"] )
			NSLog(@"Key: '%@'  URL: '%@'", theKey, [theDict valueForKey:theKey]);
	}
	return;
}

void PrintIntrospectionInfo(void) {
	
	PrintLogHeader(@"PrintIntrospectionInfo");
	
	NSMutableDictionary *theDict = [NSMutableDictionary dictionary];
	NSString *firstString = @"It's Alive!";
	NSString *secondString = @"NOW IS THE TIME";
	NSProcessInfo *theProcess = [NSProcessInfo processInfo];
	NSURL *theURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.google.com"]];
	NSMutableString *theString1 = [NSMutableString stringWithFormat:@"this"];
	NSMutableString *theString2 = [NSMutableString stringWithFormat:@"That Fat"];
	NSMutableString *theString3 = [NSMutableString stringWithFormat:@"The Other TING"];
	
	NSMutableArray *theArray = [NSMutableArray array];
	[theArray addObject:theDict];
	[theArray addObject:firstString];
	[theArray addObject:secondString];
	[theArray addObject:theProcess];
	[theArray addObject:theURL];
	[theArray addObject:theString1];
	[theArray addObject:theString2];
	[theArray addObject:theString3];
	
	NSEnumerator *theEnum = [theArray objectEnumerator];
	id anObject;
	while(anObject = [theEnum nextObject] ) {
		NSLog(@"Object Class: %@", [anObject className]);
		NSLog(@"Member of Class NSString: %@", ([anObject isMemberOfClass:[NSString class]] ? @"YES" : @"NO"));
		NSLog(@"Kind of Class NSString: %@", ([anObject isKindOfClass:[NSString class]] ? @"YES" : @"NO"));
		
		SEL lowercaseString = @selector(lowercaseString);
		NSLog(@"Responds to lowercaseString: %@", ([anObject respondsToSelector:lowercaseString] ? @"YES" : @"NO"));
		if([anObject respondsToSelector:lowercaseString]) {
			NSLog(@"Original : %@", [anObject description]);
			NSLog(@"Lowercase: %@", [anObject lowercaseString]);
		}
		NSLog(@"--------" );
	}
	
	return;
}

void PrintPolygonInfo() {
	return;
}

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	PrintPathInfo();			// Section 1 
	PrintProcessInfo();			// Section 2 
	PrintBookmarkInfo();		// Section 3 
	PrintIntrospectionInfo();	// Section 4
	PrintPolygonInfo();			// Section 6
	
    [pool drain];
    return 0;
}
