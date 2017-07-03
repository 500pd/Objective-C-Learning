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

@end
