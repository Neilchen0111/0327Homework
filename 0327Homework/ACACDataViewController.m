//
//  ACACDataViewController.m
//  0327Homework
//
//  Created by NEIL on 2015/4/18.
//  Copyright (c) 2015年 NEIL. All rights reserved.
//

#import "ACACDataViewController.h"

@interface ACACDataViewController ()
@property (strong,nonatomic)NSMutableArray *avatardata1;
@property (nonatomic, assign)NSInteger avatarrow1;
@property (strong,nonatomic)NSMutableArray *avatardata2;
@property (nonatomic, assign)NSInteger avatarrow2;
@property (strong,nonatomic)NSMutableArray *avatardata3;
@property (nonatomic, assign)NSInteger avatarrow3;
@property(nonatomic) UISwipeGestureRecognizerDirection direction;
@property (nonatomic, assign)NSInteger avatarrow;

@end

@implementation ACACDataViewController



- (void)awakeFromNib {
    _avatarrow = 0;
    _avatarrow1 = 0;
    _avatarrow2 = 0;
    _avatardata3 = 0;
    
    _avatardata1 = [[NSMutableArray alloc] initWithArray:
                  @[
                    @{@"uiimage" :[UIImage imageNamed:@"Abby"], @"name" : @"Abby", @"content" : @"渴望突破體制內教育的大三生，在自我探索的過程中夾雜著迷惘與孤單，靠著網路的學習資源、媒體、各式專業書籍，逐漸理出自己的未來規劃，因此決定報名 Bootcamp，希望能藉由課程接觸網路新創的世界，培養數位行銷的專業能力，朝自己的夢想邁進。"},
                    @{@"uiimage" :[UIImage imageNamed:@"Kung"], @"name" : @"Kung", @"content" : @"台大獸醫研究所畢業，從台北到南部從事大動物獸醫師的工作，在全台灣各個牧場出診照顧乳牛，但是在傳統的行業當中卻期待能夠擁有新創的思維，開啟一條不一樣的路。來到 ALPHA Camp 學習一顆靈活的行銷頭腦，期待成為改變產業的橋樑。"},
                    @{@"uiimage" :[UIImage imageNamed:@"Anthony"], @"name" : @"Anthony", @"content" : @"伊利諾大學香檳分校物理系，退伍後放棄到美國念研究所的機會，專心投注於自己開發的通訊輔助 app，希望透過 ALPHA Camp 認識更多有志創業的夥伴，激盪彼此想法，並學習數位行銷為未來的創業之路做準備。"}]];
    
    _avatardata2 = [[NSMutableArray alloc] initWithArray:
                  @[
                    @{@"uiimage" :[UIImage imageNamed:@"Brian"], @"name" : @"Brian", @"content" : @"FUNTEK軟體架構師，5945呼叫師傅共同創辦人，前CyberLink資深工程師。作品Picaca獲選為Apple featured app (2013/08)，暢銷書《iPhone SDK 3 Programming 應用程式開發》作者"},
                    @{@"uiimage" :[UIImage imageNamed:@"Edward"], @"name" : @"Edward", @"content" : @"App 開發顧問. 日傑資訊負責人，前愛料理 App 開發隊長，寫過 LovingHeart for iOS, for Android, 愛料理 for iPhone, 愛料理 for iPad, Mr. Plurk for iOS 等知名五星等級 App"},
                    @{@"uiimage" :[UIImage imageNamed:@"Peter"], @"name" : @"Peter", @"content" : @"暢銷書 App 程式設計入門 - iPhone. iPad作者，MacToday App 開發專欄作家，FUNTEK 首席 iOS App 工程師，點點數位 iOS App 顧問，PChome Mac 基礎教室專欄作家，開發 Wealthy、LOCOMO 運動記錄等知名App"}]];

    _avatardata3 = [[NSMutableArray alloc] initWithArray:
                    @[
                      @{@"uiimage" :[UIImage imageNamed:@"Bernard"], @"name" : @"Bernard", @"content" : @"ALPHA Camp 創辦人。TMI 駐場創業家，曾任 Yahoo！亞太區廣告業務總監。美國MIT大學創業論壇mentor"},
                      @{@"uiimage" :[UIImage imageNamed:@"Frank"], @"name" : @"Frank", @"content" : @"前 Yahoo! 奇摩董事總經理。以開放創新與策略合作不斷創造具規模經濟的商業模式"},
                      @{@"uiimage" :[UIImage imageNamed:@"Morgan"], @"name" : @"Morgan", @"content" : @"美國 GrowthHacker.com 的創站作者之一。著作 Startup Growth Engine 為 Amazon 十大暢銷書之一"}]];
    
    

    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    if(_avatarrow == 0){
    _avatarName.text = [[self.avatardata1 objectAtIndex:_avatarrow1 ]objectForKey:@"name"];
    _avatarContent.text = [[self.avatardata1 objectAtIndex:_avatarrow1 ]objectForKey:@"content"];
        _ACAvatarImagge.image = [[self.avatardata1 objectAtIndex:_avatarrow1 ]objectForKey:@"uiimage"];
    }
    
    if(_avatarrow == 1){_avatarName.text = [[self.avatardata2 objectAtIndex:_avatarrow2 ]objectForKey:@"name"];
        _avatarContent.text = [[self.avatardata2 objectAtIndex:_avatarrow2 ]objectForKey:@"content"];
        _ACAvatarImagge.image = [[self.avatardata2 objectAtIndex:_avatarrow2 ]objectForKey:@"uiimage"];
    }
    
    if(_avatarrow == 2){_avatarName.text = [[self.avatardata3 objectAtIndex:_avatarrow3 ]objectForKey:@"name"];
        _avatarContent.text = [[self.avatardata3 objectAtIndex:_avatarrow3 ]objectForKey:@"content"];
        _ACAvatarImagge.image = [[self.avatardata3 objectAtIndex:_avatarrow3 ]objectForKey:@"uiimage"];
    }




    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)sweepGesture:(id)sender {
    UISwipeGestureRecognizer *sweepGesture = (UISwipeGestureRecognizer *)sender;

//    if (sweepGesture.direction == UISwipeGestureRecognizerDirectionLeft) {
//        
//        _avatarrow1--;
//        [self viewDidLoad];
//    }

 
    if (sweepGesture.direction == UISwipeGestureRecognizerDirectionRight) {
      
        if (_avatarrow == 0) {
         
        _avatarrow1++;
        if (_avatarrow1 == _avatardata1.count ) {
            _avatarrow1 = _avatardata1.count-(_avatardata1.count);
            
        }
         [self viewDidLoad];
        }
        if (_avatarrow == 1) {
            
            _avatarrow2++;
            if (_avatarrow2 == _avatardata2.count ) {
                _avatarrow2 = _avatardata2.count-(_avatardata2.count);
                 ;
            }
            [self viewDidLoad];}
        if (_avatarrow == 2) {
            
            _avatarrow3++;
            if (_avatarrow3 == _avatardata3.count ) {
                _avatarrow3 = _avatardata3.count-(_avatardata3.count);
                ;
            }
            [self viewDidLoad];}
        
        
       
    }
    
}



- (IBAction)changeavatar:(id)sender {
    
    switch ([sender selectedSegmentIndex]) {
        case 0:
            _avatarrow = 0;

            
            [self viewDidLoad];
            break;
            
        case 1:
            _avatarrow = 1;
            
            [self viewDidLoad];
            break;
            
        case 2:
            _avatarrow = 2;
            
            [self viewDidLoad];
            
            
            
            
            break;
            
            
        default:
            NSLog(@"Something Error");
            break;
    }
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
