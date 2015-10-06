//
//  ViewController.m
//  homework_random
//
//  Created by 鄭涵嚴 on 2015/10/6.
//  Copyright © 2015年 鄭涵嚴. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSMutableArray *sortedArray = [self getrandomarray] ;
    NSNumber *S_number = sortedArray[0];
    NSNumber *F_number = sortedArray[1];
    while(S_number.intValue==F_number.intValue)
    {
        sortedArray = [self getrandomarray];
        S_number = sortedArray[0];
        F_number = sortedArray[1];
        
    }
    
    int sum = 0;
    for(int i = S_number.intValue ;i<=F_number.intValue;i++)
    {
        if (i % 2 != 0) {
            sum = sum + i;
        }
        else
        {
            sum = sum;
        }
    }
    NSLog(@"從%@到%@,總和為%d",S_number,F_number,sum);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSArray*)getrandomarray
{
    NSMutableArray *array;
    array = [NSMutableArray new];
    for (int i = 1; i <= 2 ; i++) {
        
        int n = arc4random() % 1000;
        [array addObject:[NSNumber numberWithInt:n]];
    };
    NSArray *sortedArray= [array sortedArrayUsingSelector:@selector(compare:)];
    return sortedArray;
    
}

@end
