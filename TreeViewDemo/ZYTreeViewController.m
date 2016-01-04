//
//  ZYTreeViewViewController.m
//  ZYTreeView
//
//  Created by yi on 2015-12-27.
//  Copyright (c) yi. All rights reserved.
//

#import "ZYTreeViewController.h"
#import "CLTree.h"

@interface ZYTreeViewController ()
{
    NSIndexPath *_lastSelectPath;
}
@property(strong,nonatomic) NSMutableArray* dataArray; //保存全部数据的数组
//@property(strong,nonatomic) NSArray *displayArray;   //保存要显示在界面上的数据的数组

@end

@implementation ZYTreeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addTestData];//添加演示数据
    _myTableView = [[UITableView alloc]init];
    _myTableView.dataSource = self;
    _myTableView.delegate = self;
    _myTableView.frame = self.view.bounds;
    _myTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
//    _myTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:_myTableView];
}


-(void) addTestData{
    
    _dataArray = [[NSMutableArray alloc] init];

    /**
     第一层
     */
    CLTreeViewNode *node = [[CLTreeViewNode alloc]init];
    node.nodeLevel = 0;//根层cell
    node.type = 1;//type 1的cell
    node.sonNodes = nil;
    node.isExpanded = YES;//关闭状态
    CLTreeView_LEVEL1_Model *tmp =[[CLTreeView_LEVEL1_Model alloc]init];
    tmp.name = @"测试";
    tmp.sonCnt = @"1";
    node.nodeData = tmp;
    node.cellHeight = 50.0;
    
    CLTreeViewNode *node1 = [[CLTreeViewNode alloc]init];
    node1.nodeLevel = 0;//根层cell
    node1.type = 1;//type 1的cell
    node1.sonNodes = nil;
    node1.isExpanded = NO;//关闭状态
    CLTreeView_LEVEL1_Model *tmp1 =[[CLTreeView_LEVEL1_Model alloc]init];
    tmp1.name = @"测试1";
    tmp1.sonCnt = @"1";
    node1.nodeData = tmp1;
    node1.cellHeight = 50.0;
    
    
    CLTreeViewNode *node3 = [[CLTreeViewNode alloc]init];
    node3.nodeLevel = 0;//根层cell
    node3.type = 1;//type 1的cell
    node3.sonNodes = nil;
    node3.isExpanded = FALSE;//关闭状态
    CLTreeView_LEVEL1_Model *tmp3 =[[CLTreeView_LEVEL1_Model alloc]init];
    tmp3.name = @"ios开发部门";
    tmp3.sonCnt = @"4";
    node3.nodeData = tmp3;
    node3.cellHeight = 50.0;
    
    
    CLTreeViewNode *node4 = [[CLTreeViewNode alloc]init];
    node4.nodeLevel = 0;
    node4.type = 1;
    node4.sonNodes = nil;
    node4.isExpanded = FALSE;
    CLTreeView_LEVEL1_Model *tmp4 =[[CLTreeView_LEVEL1_Model alloc]init];
    tmp4.name = @"安卓开发部门";
    tmp4.sonCnt = @"2";
    node4.nodeData = tmp4;
    node4.cellHeight = 50.0;
    
    
    /**
     第二层
     */
    
    
    CLTreeViewNode *node5 = [[CLTreeViewNode alloc]init];
    node5.nodeLevel = 1;//第一层节点
    node5.type = 2;//type 2的cell
    node5.sonNodes = nil;
    node5.isExpanded = FALSE;
    CLTreeView_LEVEL2_Model *tmp5 =[[CLTreeView_LEVEL2_Model alloc]init];
    tmp5.name = @"flywarrior";
    tmp5.signture = @"老是失眠怎么办啊";
    tmp5.headImgPath = @"head1.jpg";
    tmp5.headImgUrl = nil;
    node5.nodeData = tmp5;
    node5.cellHeight = 120.0;
    
    
    CLTreeViewNode *node6 = [[CLTreeViewNode alloc]init];
    node6.nodeLevel = 1;
    node6.type = 2;
    node6.sonNodes = nil;
    node6.isExpanded = FALSE;
    CLTreeView_LEVEL2_Model *tmp6 =[[CLTreeView_LEVEL2_Model alloc]init];
    tmp6.name = @"张三";
    tmp6.signture = @"把头用力撞向键盘就能治好了。。";
    tmp6.headImgPath = @"head2.jpg";
    tmp6.headImgUrl = nil;
    node6.nodeData = tmp6;
    node6.cellHeight = 120.0;
    
    
    CLTreeViewNode *node7 = [[CLTreeViewNode alloc]init];
    node7.nodeLevel = 1;
    node7.type = 2;
    node7.sonNodes = nil;
    node7.isExpanded = FALSE;
    CLTreeView_LEVEL2_Model *tmp7 =[[CLTreeView_LEVEL2_Model alloc]init];
    tmp7.name = @"李四";
    tmp7.signture = @"说的好有道理，我竟无言以对。";
    tmp7.headImgPath = @"head3.jpg";
    tmp7.headImgUrl = nil;
    node7.nodeData = tmp7;
    node7.cellHeight = 120.0;
    
    
    CLTreeViewNode *node8 = [[CLTreeViewNode alloc]init];
    node8.nodeLevel = 1;
    node8.type = 2;
    node8.sonNodes = nil;
    node8.isExpanded = FALSE;
    CLTreeView_LEVEL2_Model *tmp8 =[[CLTreeView_LEVEL2_Model alloc]init];
    tmp8.name = @"田七";
    tmp8.signture = @"肚子好饿啊。。。";
    tmp8.headImgPath = @"head4.jpg";
    tmp8.headImgUrl = nil;
    node8.nodeData = tmp8;
    node8.cellHeight = 120.0;
    
    
    
    CLTreeViewNode *node9 = [[CLTreeViewNode alloc]init];
    node9.nodeLevel = 1;
    node9.type = 2;
    node9.sonNodes = nil;
    node9.isExpanded = FALSE;
    CLTreeView_LEVEL2_Model *tmp9 =[[CLTreeView_LEVEL2_Model alloc]init];
    tmp9.name = @"王大锤";
    tmp9.signture = @"走向人生巅峰！";
    tmp9.headImgPath = @"head5.jpg";
    tmp9.headImgUrl = nil;
    node9.nodeData = tmp9;
    node9.cellHeight = 120.0;
    
    
    CLTreeViewNode *node0 = [[CLTreeViewNode alloc]init];
    node0.nodeLevel = 1;
    node0.type = 2;
    node0.sonNodes = nil;
    node0.isExpanded = FALSE;
    CLTreeView_LEVEL2_Model *tmp0 =[[CLTreeView_LEVEL2_Model alloc]init];
    tmp0.name = @"孔连顺";
    tmp0.signture = @"锤锤。。。";
    tmp0.headImgPath = @"head6.jpg";
    tmp0.headImgUrl = nil;
    node0.nodeData = tmp0;
    node0.cellHeight = 120.0;
    
    
    node.sonNodes = [NSMutableArray arrayWithObjects:node5,nil];//插入子节点
    node1.sonNodes = [NSMutableArray arrayWithObjects:node7,node0,nil];//插入子节点
    node3.sonNodes = [NSMutableArray arrayWithObjects:node6,node7,node8,nil];//插入子节点
    node4.sonNodes = [NSMutableArray arrayWithObjects:node9,node0,nil];
    _dataArray = [NSMutableArray arrayWithObjects:node,node1,node3,node4, nil];//插入到元数据数组
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return _dataArray.count;
}

-(NSInteger) tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section{
    
    CLTreeViewNode *node = _dataArray[section];
    if (node.isExpanded) {
        return node.sonNodes.count + 1;
    }
    return 1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *indentifier = @"level0cell";
    static NSString *indentifier1 = @"level1cell";
    static NSString *indentifier2 = @"level2cell";

    CLTreeViewNode *node;
    if (indexPath.row == 0) {
        node = _dataArray[indexPath.section];
    } else {
        CLTreeViewNode *nodeSection = _dataArray[indexPath.section];
         node = nodeSection.sonNodes[indexPath.row-1];
    }
    
    if(node.type == 0){//类型为0的cell
        
        CLTreeView_LEVEL0_Cell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier];
        if(cell == nil){
            cell = [[[NSBundle mainBundle] loadNibNamed:@"Level0_Cell" owner:self options:nil] lastObject];
        }
        cell.node = node;
        [self loadDataForTreeViewCell:cell with:node];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
    else if(node.type == 1){//类型为1的cell
        CLTreeView_LEVEL1_Cell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier1];
        if(cell == nil){
            cell = [[[NSBundle mainBundle] loadNibNamed:@"Level1_Cell" owner:self options:nil] lastObject];
        }
        cell.node = node;
        [self loadDataForTreeViewCell:cell with:node];
        cell.selectionStyle = UITableViewCellSelectionStyleGray;
        return cell;
    }
    else{//类型为2的cell
        CLTreeView_LEVEL2_Cell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier2];
        if(cell == nil){
            cell = [[[NSBundle mainBundle] loadNibNamed:@"Level2_Cell" owner:self options:nil] lastObject];
        }
        cell.node = node;
        [self loadDataForTreeViewCell:cell with:node];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}

/*---------------------------------------
 为不同类型cell填充数据
 --------------------------------------- */
-(void) loadDataForTreeViewCell:(UITableViewCell*)cell with:(CLTreeViewNode*)node{
    if(node.type == 0){
        CLTreeView_LEVEL0_Model *nodeData = node.nodeData;
        ((CLTreeView_LEVEL0_Cell*)cell).name.text = nodeData.name;
        if(nodeData.headImgPath != nil){
            //本地图片
            [((CLTreeView_LEVEL0_Cell*)cell).imageView setImage:[UIImage imageNamed:nodeData.headImgPath]];
        }
        else if (nodeData.headImgUrl != nil){
            //加载图片，这里是同步操作。建议使用SDWebImage异步加载图片
            [((CLTreeView_LEVEL0_Cell*)cell).imageView setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:nodeData.headImgUrl]]];
        }
    }
    
    else if(node.type == 1){
        CLTreeView_LEVEL1_Model *nodeData = node.nodeData;
        ((CLTreeView_LEVEL1_Cell*)cell).name.text = nodeData.name;
        ((CLTreeView_LEVEL1_Cell*)cell).sonCount.text = nodeData.sonCnt;
    }
    
    else{
        CLTreeView_LEVEL2_Model *nodeData = node.nodeData;
        ((CLTreeView_LEVEL2_Cell*)cell).name.text = nodeData.name;
        ((CLTreeView_LEVEL2_Cell*)cell).signture.text = nodeData.signture;
        if(nodeData.headImgPath != nil){
            //本地图片
            [((CLTreeView_LEVEL2_Cell*)cell).headImg setImage:[UIImage imageNamed:nodeData.headImgPath]];
        }
        else if (nodeData.headImgUrl != nil){
            //加载图片，这里是同步操作。建议使用SDWebImage异步加载图片
            [((CLTreeView_LEVEL2_Cell*)cell).headImg setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:nodeData.headImgUrl]]];
        }
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.row == 0) {
        
        CLTreeViewNode *node = _dataArray[indexPath.section];
        BOOL isExpand = node.isExpanded;
        
        for (int i = 0; i<_dataArray.count; i++) {
            CLTreeViewNode *nodeI = _dataArray[i];
            if (nodeI.isExpanded) {
                
                CLTreeView_LEVEL0_Cell *cell = (CLTreeView_LEVEL0_Cell*)[tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:i]];
                
                if(cell.node.isExpanded){
                    [self rotateArrow:cell with:0];
                } else {
                    [self rotateArrow:cell with:M_PI_2];
                }

            }
            nodeI.isExpanded = NO;

        }
        node.isExpanded = !isExpand;

        CLTreeView_LEVEL0_Cell *cell = (CLTreeView_LEVEL0_Cell*)[tableView cellForRowAtIndexPath:indexPath];
        if(cell.node.isExpanded){
            [self rotateArrow:cell with:M_PI_2];
        } else {
            [self rotateArrow:cell with:0];
        }
        [tableView reloadData];
    }
    _lastSelectPath = indexPath;
}

/*---------------------------------------
 旋转箭头图标
 --------------------------------------- */
-(void) rotateArrow:(CLTreeView_LEVEL0_Cell*) cell with:(double)degree{
    
    dispatch_async(dispatch_get_main_queue(), ^{

        [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
            cell.arrowView.layer.transform = CATransform3DMakeRotation(degree, 0, 0, 1);
        } completion:NULL];
  
    });
}

-(CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath
{
    if (indexPath.row == 0) {
        return 50;
    }
    return 80;
}


@end


