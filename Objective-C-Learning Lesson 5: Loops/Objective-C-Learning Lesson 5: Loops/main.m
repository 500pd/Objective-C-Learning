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
		int times;
		scanf("%d", &times);
		
		//	for() loop construct:
		for (int n = 1; n <= times; n = n + 1) {
			sum = sum + n;
		}
		NSLog(@"Sum of all values from 1 to %d is %d", times, sum);
	    NSLog(@"Hello, World!");
	}
	return 0;
}
