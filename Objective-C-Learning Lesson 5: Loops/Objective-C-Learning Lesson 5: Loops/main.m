//
//  main.m
//  Objective-C-Learning Lesson 5: Loops
//
//  Created by Peter Dyhr on 03/07/2017.
//  Copyright © 2017 Peter Dyhr. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	
	@autoreleasepool {
		int sum = 0;	//	Make ssure we start at zero, to avoid issues later
		
		//	Allow user input
		NSLog(@"Please enter a value.");
		int times;	//	We could add it at the same time as 'sum' by writing 'int sum = 0, times;'
		scanf("%d", &times);	//	The ambersand is used to initialize the integer
		
		//	for() loop construct:
		for (int n = 1; n <= times; n = n + 1) {
			sum = sum + n;
		}
		NSLog(@"Sum of all values from 1 to %d is %d", times, sum);
	    NSLog(@"Have a great day 😀");
	}
	return 0;
}
