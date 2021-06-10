//
//  calculatorController.m
//  calculatorMay
//
//  Created by Nadir Mayra Mamani Mamani on 3/6/21.
//

#import "calculatorController.h"

@implementation calculatorController

-(NSString*)buildNumber:(NSString*)number newDigit:(int)newDigit {
    NSString *newNumber = number;
    if(newNumber == NULL) newNumber = [NSString stringWithFormat:@"%i", newDigit];
    else newNumber = [NSString stringWithFormat:@"%@%i", newNumber, newDigit];
    return newNumber;
}

- (double)calculate:(NSString*)firstEntry second:(NSString*)secondEntry operator:(char)operator {
    double result = 0;
    switch (operator) {
        case '+': result = [firstEntry intValue] + [secondEntry intValue]; break;
        case '-': result = [firstEntry intValue] - [secondEntry intValue]; break;
        case '*': result = [firstEntry intValue] * [secondEntry intValue]; break;
        case '/': result = [firstEntry intValue] / (double)[secondEntry intValue]; break;
        default: break;
    }
    return result;
}

- (char)getOperator:(int)tagValue {
    char operator = ' ';
    switch (tagValue) {
        case 0: operator = '+'; break;
        case 1: operator = '-'; break;
        case 2: operator = '*'; break;
        case 3: operator = '/'; break;
        default: break;
    }
    return operator;
}
@end
