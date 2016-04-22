//
//  ViewController.m
//  gdsfg
//
//  Created by Mac on 16/4/13.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // int index = 25;
    //NSLog(@"%02ld",index);
   // NSString *str = [NSString stringWithFormat:@"%04d",index];
   // NSFormatter *format = [[NSFormatter alloc]init];
//  NSNumberFormatter *numformat = [[NSNumberFormatter alloc]init];
    NSArray *array = @[ @1 , @20, @3 , @10, @2];
    NSArray *sortedArray = [array sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        if ([obj1 intValue] > [obj2 intValue]) {
            return NSOrderedDescending;
        } else {
            return NSOrderedAscending;
        }
    }];
    
    NSLog(@"%@", sortedArray);

    NSArray *kArrSort = @[@"a",@"c",@"g",@"w",@"s",@"h",]; //这里是字母数组:,g,a,b.y,m……
    NSArray *resultkArrSort = [kArrSort sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        
        return [obj1 compare:obj2 options:NSNumericSearch];
    }];
    NSLog(@"%@",resultkArrSort);
    
    
    
    int(^myBlock)(int) = ^(int num) {
    
        return num ++;
    };
    
    NSLog(@"+++++%d",myBlock(myBlock(myBlock(3))));
//    NSData *data = [[NSData alloc]init];
//    NSString *str = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    int a[5] = {1,2,3,4,5};
    int *ptr = (int *) (&a+1);
    printf("%d,%d",*(a+1),*(ptr - 1));
    NSString *str = @"erew潍坊dfsdf而非";
    NSMutableArray *arrStr = [NSMutableArray array];
     for (int i = 0; i <str.length; i++) {
         NSString *SS = [str substringWithRange:NSMakeRange(i, 1)];
         NSLog(@"%@",SS);
        int a = [str characterAtIndex:i] ;
//        NSLog(@"%d",a);
//        NSLog(@"+++++++++%d",0x4e00);
        if ( 0x9fff > a &&a > 0x4e00) {
            NSLog(@"-----2222---%d",a);
            [arrStr addObject:SS];
        }
    }
    
    NSString *zgStr = [arrStr componentsJoinedByString:@""];
    NSLog(@"%@",zgStr);
    
    NSArray *arrVC =  self.navigationController.viewControllers;
    UIViewController *vc = arrVC[arrVC.count - 2];
    [self.navigationController popToViewController:vc animated:YES];
    
    
}
//- (NSString *)formatNumber:(NSNumber *)number width:(NSInteger)width {
//    
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
