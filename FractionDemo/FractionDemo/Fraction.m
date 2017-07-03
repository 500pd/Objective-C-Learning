//
//  Fraction.m
//  FractionDemo
//
//  Created by Peter Dyhr on 03/07/2017.
//  Copyright © 2017 Peter Dyhr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@implementation Fraction
@synthesize numerator, denominator;

/*
- (void)setNumerator:(NSInteger)value {
	numerator = value;
}

- (void)setDenominator:(NSInteger)value {
	denominator = value;
}
*/

- (void)display {
	NSString *numeratorString = [[NSString alloc] initWithFormat:@"%ld", (long)self.numerator];
	NSString *denominatorString = [[NSString alloc] initWithFormat:@"%ld", (long)self.denominator];
	NSLog(@"%@/%@", numeratorString, denominatorString);
//	denominatorString = nil;
//	numeratorString = nil;
}

- (void)setNumerator:(NSInteger)num overDenominator:(NSInteger)denom {
	self.numerator = num;
	self.denominator = denom;
}

- (void)add:(Fraction *)newFraction {
	// a/b + c/d = ((a * d) + (b * c)) / (b * d)
	self.numerator = self.numerator * newFraction.denominator + self.denominator * newFraction.numerator;
	self.denominator = self.denominator * newFraction.denominator;
	
	[self reduce];
}

- (void)reduce {
	int u = self.numerator;
	int v = self.denominator;
	int temp = 0;
	
	//	Euclid's procedure to find GCD (Greatest Common Denominator)
	//	Don't worry about how this works, exactly
	
	while (v != 0) {
		temp = u % v;
		u = v;
		v = temp;
	}
	
	self.numerator /= u;
	self.denominator /= u;
}

@end
