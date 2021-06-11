//
//  ViewController.m
//  calculatorMay
//
//  Created by Nadir Mayra Mamani Mamani on 1/6/21.
//

#import "ViewController.h"
#import "calculatorController.h"

@interface ViewController ()
@property calculatorController *calculatorController;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    operatorPressed = FALSE;
    char operator = ' ';
    firstEntry = NULL;
    secondEntry = NULL;
    self.calculatorController = [[calculatorController alloc] init];
    /*
    _scrollview = [[UIScrollView alloc] initWithFrame:CGRectMake(0,0,600,600)];
    [self.view addSubview:_scrollview];
    [_scrollview setContentSize:CGSizeMake(_scrollview.bounds.size.width , _scrollview.bounds.size.height*1.2)];
    [_scrollview setBackgroundColor: [UIColor whiteColor]];
    [_scrollview addSubview:_stackView];
     */
}

- (IBAction)equalPressed:(id)sender {
    double result = [self.calculatorController calculate:firstEntry second:secondEntry operator:operator];
    if(result - floor(result) == 0) _labelOutput.text = [NSString stringWithFormat:@"%.0f", result];
    else _labelOutput.text = [NSString stringWithFormat:@"%.02f", result];
    
    operatorPressed = FALSE;
    firstEntry = NULL;
    secondEntry = NULL;
}

- (IBAction)clearPressed:(id)sender {
    operatorPressed = FALSE;
    _labelOutput.text = NULL;
    firstEntry = NULL;
    secondEntry = NULL;
}

- (IBAction)numberPressed:(UIButton *)sender {
    int newDigit = (int)sender.tag;
    
    if(operatorPressed == FALSE) {
        firstEntry = [self.calculatorController buildNumber:firstEntry newDigit:newDigit];
        _labelOutput.text = firstEntry;
    }
    else {
        secondEntry = [self.calculatorController buildNumber:secondEntry newDigit:newDigit];
            _labelOutput.text = secondEntry;
    }
}

- (IBAction)anOperatorPressed:(UIButton *)sender {
    operator = [self.calculatorController getOperator:(int)sender.tag];
    operatorPressed = TRUE;
}
@end
