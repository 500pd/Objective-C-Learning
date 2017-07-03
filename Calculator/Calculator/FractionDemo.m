//
//  FractionDemo.m
//  Calculator
//
//  Created by Peter Dyhr on 03/07/2017.
//  Copyright © 2017 Peter Dyhr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main (int argc, const char * argv[]) {
	@autoreleasepool {
		Fraction *myFraction = [[Fraction alloc] init];
		
		//	Set myFraction to value of 2/5
		[myFraction setNumerator: 2];
		[myFraction setDenominator: 5];
		
		//	Display the value of myFraction
		NSLog(@"myFraction has a value of: ");
		[myFraction display];
		
		myFraction = nil;
	}
	return 0;
}
