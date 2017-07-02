//
//  main.m
//  ASCII, Booleans and Characters
//
//  Created by Peter Dyhr on 02/07/2017.
//  Copyright © 2017 Peter Dyhr. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		//	Chars
	    char char1 = 'a';
		char char2 = ';';
		char char3 = '8';
		char char4 = '\?';
		NSLog(@"This i a char. %c\n And a few more. %c, %c, %c", char1, char2, char3, char4);
		
		//	ASCII Values
		NSLog(@"Hello");	//	Original message
		NSLog(@"%c%c%c%c%c", ('H' + 1), ('e' + 1), ('l' + 1), ('l' + 1), ('o' + 1));	//	Cypher 1
		NSLog(@"%c%c%c%c%c", (('H' * 2) % 127), (('e' * 2) % 127), (('l' * 2) % 127), (('l' * 2) % 127), (('o' * 2) % 127));	//	Cypher 2
	}
	return 0;
}
