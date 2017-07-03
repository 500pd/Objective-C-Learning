//
//  Fraction.h
//  FractionDemo
//
//  Created by Peter Dyhr on 03/07/2017.
//  Copyright © 2017 Peter Dyhr. All rights reserved.
//

#ifndef Fraction_h
#define Fraction_h


#endif /* Fraction_h */

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface Fraction : NSObject {
	NSInteger numerator;
	NSInteger denominator;
}

//- (void)setNumerator:(NSInteger)value;
//- (void)setDenominator:(NSInteger)value;
@property NSInteger numerator;
@property NSInteger denominator;

- (void)setNumerator:(NSInteger)num overDenominator:(NSInteger)denom;
- (void)display;

#pragma mark -
#pragma mark Arithmetic
//	The lines above are for Xcode to interpret.


+ (Fraction *)addFraction:(Fraction *)frac1 toFraction:(Fraction *)frac2;
+ (Fraction *)subtractFraction:(Fraction *)frac1 fromFraction:(Fraction *)frac2;
+ (Fraction *)multiplyFraction:(Fraction *)frac1 withFraction:(Fraction *)frac2;
+ (Fraction *)divideFraction:(Fraction *)frac1 byFraction:(Fraction *)frac2;

- (void)add:(Fraction *)newFraction;
- (void)subtract:(Fraction *)newFraction;
- (void)multiply:(Fraction *)newFraction;
- (void)divide:(Fraction *)newFraction;

- (void)reduce;

@end
