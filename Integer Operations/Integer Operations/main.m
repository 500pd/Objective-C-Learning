//
//  main.m
//  Integer Operations
//
//  Created by Peter Dyhr on 02/07/2017.
//  Copyright © 2017 Peter Dyhr. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		int number = 1234;
		int thousands = number / 1000;
		NSLog(@"The thousands place of %d is %d.", number, thousands);
		int hundreds = (number % 1000) / 100;
		NSLog(@"The hundreds place of %d is %d.", number, hundreds);
		int tens = ((number % 1000) % 100) / 10;
		NSLog(@"The tens place of %d is %d.", number, tens);
		int ones = (((number % 1000) % 100) % 10);
		NSLog(@"The ones place of %d is %d.", number, ones);
	}
	return 0;
}
