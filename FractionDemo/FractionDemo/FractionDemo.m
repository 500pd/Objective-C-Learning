//
//  FractionDemo.m
//  FractionDemo
//
//  Created by Peter Dyhr on 03/07/2017.
//  Copyright © 2017 Peter Dyhr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "MixedNumber.h"

int main (int argc, const char * argv[]) {
	/* ======================== FRACTION ======================== */
	@autoreleasepool {
		Fraction *myFraction = [[Fraction alloc] init];
		
		//	Set myFraction to value of 2/5
		/*
		[myFraction setNumerator: 2];	//	Set numerator to 2 NSInteger
		//NSInteger numeratorValue = myFraction.numerator;	//	set value of numerator to numeratorValue
		[myFraction setDenominator: 5];
		*/
		
		/*
		myFraction.numerator = 2;
		myFraction.denominator = 5;
		*/
		
		[myFraction setNumerator:2 overDenominator:5];
		
		//	Display the value of myFraction
		NSLog(@"myFraction has a value of: ");
		[myFraction display];
		
		myFraction = nil;
	}
	@autoreleasepool {
		NSLog(@"\n");
		Fraction *aFraction = [[Fraction alloc] init];
		Fraction *bFraction = [[Fraction alloc] init];
		
		[aFraction setNumerator:2 overDenominator:4];
		[bFraction setNumerator:1 overDenominator:3];
		
		[aFraction display]; NSLog(@" + "); [bFraction display]; NSLog(@" = ");	//	Just to make logical math statement
		[aFraction add:bFraction];
//		[aFraction reduce];	//	This is now unnecessary as it gets done automatically
		[aFraction display];
	}
	@autoreleasepool {
		NSLog(@"\n");
		Fraction *aFraction = [[Fraction alloc] init];
		Fraction *bFraction = [[Fraction alloc] init];
		
		[aFraction setNumerator:2 overDenominator:4];
		[bFraction setNumerator:1 overDenominator:3];
		
		NSLog(@"Using class method:");
		Fraction *classAddition = [Fraction addFraction:aFraction toFraction:bFraction];
		[classAddition display];
	}
	/* ======================== MIXEDNUM ======================== */
	@autoreleasepool {
		NSLog(@"\n");
		//	bFraction is declared previously (well, it isn't)
		Fraction *bFraction = [[Fraction alloc] init];
		[bFraction setNumerator:1 overDenominator:3];
		
		MixedNumber *aMixedNum = [[MixedNumber alloc] init];
		MixedNumber *bMixedNum = [[MixedNumber alloc] init];
		[aMixedNum setWholeNumber:3 andNumerator:2 overDenominator:4];
		[bMixedNum setWholeNumber:4 andFraction:bFraction];
		
		NSLog(@"aMixedNum is"); [aMixedNum display];
		//	Uses Fraction's reduce method on the fractional portion of MixedNumber
		NSLog(@"After reducing, aMixedNum is"); [aMixedNum reduce]; [aMixedNum display];
		
		NSLog(@"Addition: ");
		[aMixedNum display]; NSLog(@" + "); [bMixedNum display]; NSLog(@" = ");
		[[MixedNumber addMixedNumber:aMixedNum toMixedNumber:bMixedNum] display];
		//	display is invoked on the return value of the add method
	}
	return 0;
}
