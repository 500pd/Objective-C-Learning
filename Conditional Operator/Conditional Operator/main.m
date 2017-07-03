//
//  main.m
//  Conditional Operator
//
//  Created by Peter Dyhr on 03/07/2017.
//  Copyright © 2017 Peter Dyhr. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		NSLog(@"Hello, World!");
		int num1 = 1;
		int num2 = 2;
		
		/*
		if (num1 > num2)
			return num1;
		else
			return num2;
		 */
		
		return (num1 > num2) ? num1 : num2;
	}
	return 0;
}
