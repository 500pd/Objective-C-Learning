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
	//	for() loop
		int sum = 0;	//	Make sure we start at zero, to avoid issues later
		
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
	@autoreleasepool {
	//	while() loop
		NSLog(@"Input a list of integers. Hit Return after each one. End the list with a negative value.");
		int sum = 0;
		int input = 0;
		scanf("%d", &input);
		
		while (input >= 0) {	//	"Greater-than or equal to zero" is the same as "not negative"
			sum = sum + input;
			scanf("%d", &input);
		}
		
		NSLog(@"The sum of all those values is %d", sum);
	}
	@autoreleasepool {
	//	do-while loop
		int sum = 0;
		int input = 0;
		do {
			sum = sum + input;
			NSLog(@"Sum is %d", sum);
			scanf("%d", &input);
		} while (input != -1);
	}
	return 0;
}
