import MainPage from '../view/MainPage';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State currentIndex : number = 0;

  private tabsController: TabsController = new TabsController();
  @Builder tabBuilder(title: string, targetIndex: number) {
    Column() {
      Text(title)
        .width("100%")
        .height('100%')
        .textAlign(TextAlign.Center)
        .decoration(this.currentIndex == targetIndex?{type:TextDecorationType.Underline, color: Color.Blue }: { type:TextDecorationType.None,color:Color.Black })
        .fontSize(20)
        .fontColor(this.currentIndex == targetIndex?Color.Blue:Color.Black)
    }
    .height('100%')
    .width('100%')
    .borderColor({top:2})
    .justifyContent(FlexAlign.Center)
    .onClick(()=>{
      this.currentIndex = targetIndex;
      this.tabsController.changeIndex(this.currentIndex);
    })
  }

  build() {
    Tabs({
      barPosition:BarPosition.End,
      controller:this.tabsController
    }){
      TabContent(){
        MainPage()
      }
      .tabBar(this.tabBuilder('主页',0))
      TabContent(){

      }
      .tabBar(this.tabBuilder('热门',1))
      TabContent(){

      }
      .tabBar(this.tabBuilder('排行',2))
      TabContent(){

      }
      .tabBar(this.tabBuilder('原创',3))
    }
    .barHeight("10%")
    .height("100%")
    .onChange((index:number)=>{
      this.currentIndex = index;
    })
  }
}