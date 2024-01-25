import MainPage from '../view/MainPage';

interface deco_params{
  type: TextDecorationType;
  color?: ResourceColor;
}

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
        .decoration((() => {
          if(this.currentIndex == targetIndex){
            return {type: TextDecorationType.Underline, color: Color.Blue} as deco_params;
          } else {
            return {type: TextDecorationType.None, color: Color.Black} as deco_params;
          }
        })())
        .fontSize(20)
        .fontColor((() => {
          if(this.currentIndex == targetIndex){
            return Color.Blue;
          } else {
            return Color.Black;
          }
        })())
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
    Column(){
      MainPage()
    }
  }
}