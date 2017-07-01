//
//  main.m
//  Objective-C-Learning Lesson 2
//
//  Created by Peter Dyhr on 01/07/2017.
//  Copyright © 2017 Peter Dyhr. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
// Program 2.1
	@autoreleasepool {
//	Create an integer: i
		int i;
//	Set int i to 1
		i = 1;
//	Print the text "The variable 'i' has a value of i"
		NSLog(@"The variable 'i' has a value of %d", i);
// Change int i to 2
		i = 2;
// Print the change
		NSLog(@"The variable 'i' now has a value of %d", i);
	}
// Return 0
//	return 0;
	
	
// Program 2.2
	@autoreleasepool {
//	Create integer: result
		int result;
		result = 10 + 20;
		NSLog(@"The sum of 10 and 20 is %i", result);
		
		result = 25 - 30;
		NSLog(@"The difference between 25 and 30 is %i", result);
		
		result = 8 * 9;
		NSLog(@"The product of 8 and 9 is %i", result);
		
		NSLog(@"The quotient of 8 and 5 is %i", (8 / 5));
//	The same as the line above, just with one decimal
		NSLog(@"The quotient of 8.0 and 5.0 is %.1f", (8.0 / 5.0));
	}
	return 0;
}
