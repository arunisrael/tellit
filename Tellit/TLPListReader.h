//
//  TLPListReader.h
//  Tellit
//
//  Created by Arun Israel on 10/22/12.
//  Copyright (c) 2012 Arun Israel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TLPListReader : NSObject

+ (NSArray *) readPlist:(NSString *) filePath;

@end
