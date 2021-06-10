//
//  calculatorController.h
//  calculatorMay
//
//  Created by Nadir Mayra Mamani Mamani on 3/6/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface calculatorController : NSObject
- (char)getOperator:(int)tagValue;
- (double)calculate:(NSString*)firstEntry second:(NSString*)secondEntry operator:(char)operator;
- (NSString*)buildNumber:(NSString*)number newDigit:(int)newDigit;
@end

NS_ASSUME_NONNULL_END
