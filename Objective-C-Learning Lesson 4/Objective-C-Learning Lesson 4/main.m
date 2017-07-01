//
//  main.m
//  Objective-C-Learning Lesson 4
//
//  Created by Peter Dyhr on 01/07/2017.
//  Copyright © 2017 Peter Dyhr. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		BOOL trueOrFalse = YES;
		if (trueOrFalse)
			NSLog(@"trueOrFalse is true");
		if (1)
			NSLog(@"1 is considered to be true");
	}
	NSLog(@"Begin second part including a false statement\n.");
	@autoreleasepool {
		BOOL trueOrFalse = YES;
		if (trueOrFalse) {
			NSLog(@"trueOrFalse is true.");
			NSLog(@"This second line must be within the braces");
		}
		if (1)
			NSLog(@"1 is considered to be true.");	//	If false, statement following is not executed
		trueOrFalse = NO;
		if (trueOrFalse)
			NSLog(@"I lied. trueOrFalse is not true.");
		if (0)
			NSLog(@"This line should not appear.");
	}
	NSLog(@"Begin third part with more than one else\n.");
	@autoreleasepool {
		BOOL trueOrFalse = YES;
		if (trueOrFalse == YES)	//	The	double-equals sign is a comparison; versus a single equals, which is an assignment. More on this in the next Extension.
			NSLog(@"If true, print this");	//	This gets printed
		else
			NSLog(@"Else, print this");	// This does not get printed
		trueOrFalse = NO;
		if (trueOrFalse)
			NSLog(@"If true, print this2");	//	This does not get printed
		else
			NSLog(@"Else, print this2");	//	This gets printed
	}
	NSLog(@"Begin fourth part with else if\n.");
	@autoreleasepool {
		int value = 5;
		if (value > 0)
			NSLog(@"value is greater than zero");
		else if (value == 0)
			NSLog(@"value is equal to zero");
		else
			NSLog(@"value is less than zero");
	}
	NSLog(@"Begin part five with more than one else if\n.");
	@autoreleasepool {
		int value = 5;
		if (value == 6)
			NSLog(@"value is equal to 6");
		else if (value == 0)
			NSLog(@"value is equal to 0");
		else if (value == 2)
			NSLog(@"value is equal to 2");
		else if (value == 10)
			NSLog(@"value is equal to 10");
		else
			NSLog(@"value does not equal 6, 0, 2 or 10");	//	This line is the output
	}
	return 0;
}
