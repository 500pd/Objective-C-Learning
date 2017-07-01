//
//  main.m
//  Objective-C-Learning Lesson 3
//
//  Created by Peter Dyhr on 01/07/2017.
//  Copyright © 2017 Peter Dyhr. All rights reserved.
//

#import <Foundation/Foundation.h>

/*int main(int argc, const char * argv[]) {
//	Program 3.1
	@autoreleasepool {
		int numerator = 2;
		int denominator = 5;
		NSLog(@"This is a fraction with a value of %d/%d", numerator, denominator);
	}
	return 0;
}*/

//	Program 3.2
//	---- Interface ----

@interface Fraction : NSObject
{
	int numerator;
	int denominator;
}

- (void)showResults;
- (void)setNumerator:(int)n;
- (void)setDenominator:(int)d;

@end

//	---- Implementation ----

@implementation Fraction

- (void)showResults {
	NSLog(@"This is a fraction with a value of %d/%d", numerator, denominator);
}

- (void)setNumerator:(int)n {
	numerator = n;
}

- (void)setDenominator:(int)d {
	denominator = d;
}

@end

//	---- Main Program ----

int main(int argc, const char * argv[]) {
	@autoreleasepool {
	//	Create an instance of Fraction
		Fraction *myFraction;
		
		myFraction = [[Fraction alloc] init];
		
	//	Set myFraction to 2/5
		[myFraction setNumerator:2];
		[myFraction setDenominator:5];
		
	//	Display the	value of myFraction
		[myFraction showResults];
		
	//	Clear up memory
		//[myFraction release];
	}
	return 0;
}
