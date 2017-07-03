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

@interface Fraction : NSObject {
	NSInteger numerator;
	NSInteger denominator;
}

//- (void)setNumerator:(NSInteger)value;
//- (void)setDenominator:(NSInteger)value;
@property NSInteger numerator;
@property NSInteger denominator;
- (void)display;

@end
