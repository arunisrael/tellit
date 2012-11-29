//
//  TLWordListViewController.m
//  Tellit
//
//  Created by Arun Israel on 10/22/12.
//  Copyright (c) 2012 Arun Israel. All rights reserved.
//

#import "TLWordListViewController.h"
#import "TLWordList.h"
#import "BButton.h"

@interface TLWordListViewController ()

@property (nonatomic, weak) IBOutlet BButton *redButton;
@property (nonatomic, weak) IBOutlet BButton *orangeButton;
@property (nonatomic, weak) IBOutlet BButton *yellowButton;
@property (nonatomic, weak) IBOutlet BButton *greenButton;

@property (nonatomic, strong) NSArray *words;

@end

@implementation TLWordListViewController

#pragma mark - Initializers
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


#pragma mark - View LifeCycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self getWords];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self setBackground];
    [self setButtonColors];
    [self getWordsAndUpdateDisplay];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    self.words = nil;
}

- (void) dealloc
{
    self.words = nil;
}

-(void) shakeDetected
{
    [self getWordsAndUpdateDisplay];
}

# pragma mark - Model hooks
- (void) getWords
{
    self.words = [TLWordList getWords];
}

- (void) getWordsAndUpdateDisplay
{
    [self getWords];
    [self updateButtonLabels];
}

#pragma mark - Display updates
- (void) updateButtonLabels
{
    [self setText:self.words[0] forButton:self.redButton];
    [self setText:self.words[1] forButton:self.orangeButton];
    [self setText:self.words[2] forButton:self.yellowButton];
    [self setText:self.words[3] forButton:self.greenButton];
}

- (void) setText:(NSString *) text forButton:(BButton *) button
{
    [button.titleLabel setFont:[UIFont fontWithName:@"FingerPaint-Regular" size:30.0]];
    [button setTitle:text forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
}

- (void) setButtonColors
{
    self.redButton.color = TLRedButtonColor;
    self.orangeButton.color = TLOrangeButtonColor;
    self.yellowButton.color = TLYellowButtonColor;
    self.greenButton.color = TLGreenButtonColor;
}

- (IBAction)buttonClicked:(id)sender
{
    UIButton *thisButton = (UIButton *) sender;
    UIColor *currentColor = [self determineTextColorForButton:thisButton];
    UIColor *newColor = [self getOppositeColorFor:currentColor];
    [self updateButton:thisButton withTextColor:newColor];
}

- (UIColor *) determineTextColorForButton:(UIButton *) button
{
    return [button titleColorForState:UIControlStateNormal];
}

- (UIColor *) getOppositeColorFor:(UIColor *) color
{
    if ([TLWordTextDefaultColor isEqual:color])
    {
        return TLWordTextSelectedColor;
    }
    return TLWordTextDefaultColor;
}

- (void) updateButton:(UIButton *) button withTextColor:(UIColor *) color
{
    [button setTitleColor:color forState:UIControlStateNormal];
}

- (void) setBackground
{
    self.view.backgroundColor = [UIColor colorWithPatternImage:TLBackgroundImage];
}

@end
