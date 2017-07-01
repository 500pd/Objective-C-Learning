//
//  main.m
//  Objective-C-Learning Lesson 3
//
//  Created by Peter Dyhr on 01/07/2017.
//  Copyright © 2017 Peter Dyhr. All rights reserved.
//

#import <Foundation/Foundation.h>

//	If only program 3.2 should be used (by using the last part of the file) comment out from here
//	Program 3.2 Stuff
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
	NSLog(@"Program 3.2:\nThis is a fraction with a value of %d/%d", numerator, denominator);
}

- (void)setNumerator:(int)n {
	numerator = n;
}

- (void)setDenominator:(int)d {
	denominator = d;
}

@end
//	End of program 3.2 stuff

int main(int argc, const char * argv[]) {
	//	Program 3.1
	@autoreleasepool {
		int numerator = 2;
		int denominator = 5;
		NSLog(@"Program 3.1:\nThis is a fraction with a value of %d/%d", numerator, denominator);
	}
	
	//	Program 3.2 'main' part
	@autoreleasepool {
		//	Create an instance of Fraction
		Fraction *myFraction;
		
		myFraction = [[Fraction alloc] init];
		
		//	Set myFraction to 2/5
		[myFraction setNumerator:2];
		[myFraction setDenominator:5];
		
		//	Display the	value of myFraction
		[myFraction showResults];
		
		//	Clear up memory (we can't use "[myFraction release];" anymore so we use "myFraction = nil;" instead
		myFraction = nil;
	}

	return 0;
}
//	If only program 3.2 should be used (by using the last part of the file) comment out to here

//	Program 3.2 (All of it, requires the above to be commented out)
//	---- Interface ----

/*@interface Fraction : NSObject
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
		
	//	Clear up memory (we can't use "[myFraction release];" anymore so we use "myFraction = nil;" instead
		myFraction = nil;
	}
	return 0;
}*/
