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
}

@end
