//
//  TLConstants.h
//  Tellit
//
//  Created by Arun Israel on 10/22/12.
//  Copyright (c) 2012 Arun Israel. All rights reserved.
//

#import <UIKit/UIKit.h>

#ifndef Tellit_TLConstants_h
#define Tellit_TLConstants_h

// Colors
#define TLRedButtonColor    [UIColor colorWithRed:228.0/255.0 green:36.0/255.0 blue:46.0/255.0 alpha:1.0]
#define TLOrangeButtonColor [UIColor colorWithRed:255.0/255.0 green:109.0/255.0 blue:0.0/255.0 alpha:1.0]
#define TLYellowButtonColor [UIColor colorWithRed:255.0/255.0 green:214.0/255.0 blue:0.0/255.0 alpha:1.0]
#define TLGreenButtonColor  [UIColor colorWithRed:81.0/255.0 green:189.0/255.0 blue:31.0/255.0 alpha:1.0]

// Resource Paths
#define TLWordListPath [[NSBundle mainBundle] pathForResource:@"WordList" ofType:@"plist"]


// Constants
#define TLWordCount 4
#define TLBackgroundImage [UIImage imageNamed:@"egg_shell.png"]
#define TLWordTextDefaultColor [UIColor blackColor]
#define TLWordTextSelectedColor [UIColor whiteColor]

#endif
