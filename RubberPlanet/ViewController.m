#import "ViewController.h"
#import "RubberPlanetScene.h"


@interface ViewController ()
@property (nonatomic, readwrite, strong, nullable) SKView *skView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:(BOOL)animated];
    
    if (!self.skView) {
        self.skView = [[SKView alloc] initWithFrame:self.view.bounds];
        [self.view addSubview:self.skView];
        _skView.showsFPS = YES;
        SKScene *scene = [[RubberPlanetScene alloc] initWithSize:self.skView.bounds.size];
        [self.skView presentScene:scene];
    }
    // this is my test to see if skView is initialized
    if (self.skView) {
        NSLog( @"calling: %s  -  skView should now be initialized", __PRETTY_FUNCTION__);
    }
    
    else if (!self.skView)
    {
        NSLog( @"calling: %s  -  skView still is not initialized", __PRETTY_FUNCTION__);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
