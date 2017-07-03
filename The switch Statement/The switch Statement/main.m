//
//  main.m
//  The switch Statement
//
//  Created by Peter Dyhr on 03/07/2017.
//  Copyright © 2017 Peter Dyhr. All rights reserved.
//

// This is an example of a switch statement.
#import <Foundation/Foundation.h>

/*
This doesn't work. I really have no idea why 
*/

int main (int argc, const char * argv[]) {
	@autoreleasepool {
	 NSString *operator = [[NSString alloc] init];
		// Assume operator has been initialized to a valid value
		// Valid values for operator are @"+", @"-", @"*", and @"/"
		
		/* Note that NSString actually has a comparison method, and that
		 this method of comparison is not guaranteed to work. We are
		 overlooking that at the moment for the sake of education. */
		char f = '+';
		if (operator == f)
			NSLog(@"Operator is for addition.");
		else if (operator == @"-")
			NSLog(@"Operator is for subtraction.");
		else if (operator == @"*")
			NSLog(@"Operator is for multiplication.");
		else if (operator == @"/")
			NSLog(@"Operator is for division.");
		else
			NSLog(@"Unknown operator.");
		return 0;
		
	}
}
