//
//  main.m
//  Hello World
//
//  Created by Peter Dyhr on 01/07/2017.
//  Copyright © 2017 Peter Dyhr. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		NSLog(@"Hello, World!");
		NSLog(@"I'm ready to program in Objective-C!");
	}
	
	//	Ifølge guiden virker dette. Det er dog uddateret, og Xcodes egen måde ovenfor er den, der virker
	/*
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
		NSLog(@"Hello, World!");
	[pool drain];
	*/

	return 0;
}
