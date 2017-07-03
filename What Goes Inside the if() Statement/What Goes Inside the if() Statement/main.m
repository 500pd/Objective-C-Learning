//
//  main.m
//  What Goes Inside the if() Statement
//
//  Created by Peter Dyhr on 03/07/2017.
//  Copyright © 2017 Peter Dyhr. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	//	See if a number is even or odd
	@autoreleasepool {
		int x = 1244;
	    if (x % 2 == 0)
			NSLog(@"(1) x is even");
		else
			NSLog(@"(1) x is odd");
	}
	@autoreleasepool {
	//	See if a number does not equal another number
		int x = 5;
		if (x != 5)
			NSLog(@"(2) x does not equal to 5");
		else
			NSLog(@"(2) x does equal to 5");
	}
	@autoreleasepool {
	//	See if a number is smaller, larger or equal to another number
		int x = 6;
		if (x > 5)
			NSLog(@"(3) x is greater than 5");
		else if (x < 5)
			NSLog(@"(3) x is less than 5");
		else
			NSLog(@"(3) x is equal to 5");
	}
	@autoreleasepool {
	//	See if a number is smaller or equal to another number AND if another number is less than another number
		int x = 7;
		int y = 3;
		if ((x >= 5) && (y < 10)) {
			NSLog(@"(4) x is greater or equal to 5 AND y is less than 10");
		}
	}
	@autoreleasepool {
	//	See if one or two numbers equal to to other numbers
		int x = 3;
		int y = 7;
		if (x == 3 || y == 6) {
			NSLog(@"(5) x is equal to 3 OR y is equal to 6");
		}
	}
	@autoreleasepool {
		int x = 2;
		int y = 4;
		if (!(x == 2 && y < 5))
			NSLog(@"(6) x is NOT greater than 2 AND y is NOT less than 5");
	}
	return 0;
}
