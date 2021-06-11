//
//  ViewController.h
//  calculatorMay
//
//  Created by Nadir Mayra Mamani Mamani on 1/6/21.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    bool operatorPressed;
    char operator;
    NSString *firstEntry;
    NSString *secondEntry;
}

@property (strong, nonatomic) IBOutlet UILabel *labelOutput;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollview;
@property (strong, nonatomic) IBOutlet UIStackView *stackView;

- (IBAction)clearPressed:(id)sender;
- (IBAction)equalPressed:(id)sender;

- (IBAction)numberPressed:(UIButton*)sender;
- (IBAction)anOperatorPressed:(UIButton*)sender;

@end

