//
//  TLPListReader.m
//  Tellit
//
//  Created by Arun Israel on 10/22/12.
//  Copyright (c) 2012 Arun Israel. All rights reserved.
//

#import "TLPListReader.h"

@implementation TLPListReader

+ (NSArray *) readPlist:(NSString *) filePath
{
    NSArray *array = [[NSMutableArray alloc] initWithContentsOfFile:filePath];
    return array;
}

@end
