//
//  ViewController.m
//  PeerReview2
//
//  Created by Ananta Shahane on 09/04/17.
//  Copyright © 2017 Ananta Shahane. All rights reserved.
//

#import "ViewController.h"


double KilogramtoOunces(double kg)
{
    return 35.275 * kg;
}

double KilogramtoPounds(double kg)
{
    return 2.20462 * kg;
}

double KilogramstoStones(double kg)
{
    return 0.157473 * kg;
}

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *KilogramsIn;
@property (weak, nonatomic) IBOutlet UISegmentedControl *ConverttoUnit;
@property (weak, nonatomic) IBOutlet UILabel *OutputLabel;

@end

@implementation ViewController
- (IBAction)UpdateButton:(id)sender {
    double kilograms = [self.KilogramsIn.text doubleValue];
    NSMutableString *buf = [NSMutableString new];
    if (self.ConverttoUnit.selectedSegmentIndex == 0)
    {
        double ounces = KilogramtoOunces(kilograms);
        [buf appendString: [NSString stringWithFormat:@"%.4lf ounces", ounces]];
    }
    else if(self.ConverttoUnit.selectedSegmentIndex == 1)
    {
        double pounds = KilogramtoPounds(kilograms);
        [buf appendString: [NSString stringWithFormat:@"%.4lf pounds", pounds]];
    }
    else
    {
        double stone = KilogramstoStones(kilograms);
        [buf appendString: [NSString stringWithFormat:@"%.4lf stones", stone]];
    }
    self.OutputLabel.text = buf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
