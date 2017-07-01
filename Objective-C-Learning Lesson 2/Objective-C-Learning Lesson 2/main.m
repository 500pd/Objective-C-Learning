//
//  main.m
//  Objective-C-Learning Lesson 2
//
//  Created by Peter Dyhr on 01/07/2017.
//  Copyright © 2017 Peter Dyhr. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
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
	return 0;
}
