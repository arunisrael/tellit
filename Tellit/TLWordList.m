//
//  TLWordList.m
//  Tellit
//
//  Created by Arun Israel on 10/22/12.
//  Copyright (c) 2012 Arun Israel. All rights reserved.
//

#import "TLWordList.h"
#import "TLPListReader.h"
#import "NSArray+Sample.h"

@implementation TLWordList

+ (NSArray *) getWords
{
    NSArray *allWords = [TLPListReader readPlist:TLWordListPath];
    return [allWords numSamples:TLWordCount];
}

@end
