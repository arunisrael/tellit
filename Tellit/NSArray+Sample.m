//
//  NSArray+Sample.m
//  PhotoSection
//
//  Created by Arun Israel on 10/15/12.
//  Copyright (c) 2012 Arun Israel. All rights reserved.
//

#import "NSArray+Sample.h"

@implementation NSArray (Sample)

- (NSArray *) numSamples:(int) count
{
    
    NSArray *shuffledArray = [self shuffle];
    
    NSRange subsetRange = NSMakeRange(0, count);
    
    return [shuffledArray subarrayWithRange:subsetRange];
    
}

- (NSArray *) shuffle
{
    NSUInteger count = [self count];
    
    NSMutableArray *shuffledArray = [self mutableCopy];
    for (NSUInteger i = 0; i < count; ++i) {
        // Select a random element between i and end of array to swap with.
        NSInteger nElements = count - i;
        NSInteger n = (arc4random() % nElements) + i;
        [shuffledArray exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
    
    return shuffledArray;
}

@end
