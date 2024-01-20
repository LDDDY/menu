import { DEFAULT } from '@ohos/hypium';
import ArrayList from '@ohos.util.ArrayList';
import FoodData from '../model/ItemData'
import { FoodArray } from '../mock/Data';
import router from '@ohos.router';

@Component
struct FoodListItem{
  private foodItem?:FoodData
  build(){
    Navigator({ target: '#' }) {
      //应该导航到详情界面去
      Row() {
        Text((this.foodItem?.id))
          .fontSize(24)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.Red)
          .width('10%')
        Text(this.foodItem?.foodName)
          .fontSize(20)
          .width('35%')
        Text(this.foodItem?.description)
          .fontSize(16)
          .fontColor(Color.Grey)
          .textAlign(TextAlign.End)
          .width('50%')
        Blank()
      }
      .hoverEffect(HoverEffect.Highlight)
      .height(64)
      .width('100%')
    }
  }
}

@Component
struct RankPage{
  @Builder itemHead(name: string,desc:string) {
    Text(name)
      .fontSize(24)
      .backgroundColor('#fff1f3f5')
      .width('30%')
      .padding(5)
      .textAlign(TextAlign.Center)
  }
  private foodItems: Array<FoodData> = FoodArray;
  build(){
    Column(){
      Text($r("app.string.title_food_rank"))
        .width('100%')
        .height(56)
        .backgroundColor('#FF1f3f5')
        .fontSize(20)
        .textAlign(TextAlign.Center)

      List({space:16}){
        ForEach(this.foodItems,(item:FoodData)=>{
          ListItem(){
            if(item.foodName !== ''){
              FoodListItem({foodItem:item})
            }
          }
        })
      }
      .height('90%')
    }
  }
}

@Component
struct FoodGridItem{
  private foodItem?:FoodData
  build(){
    Column(){
      Row(){
        Image(this.foodItem!.image!)
          .objectFit(ImageFit.Contain)
          .width('80%')
          .margin({left:"10%"}).padding({top:10,bottom:10})
      }
      .width("90%")
      .backgroundColor('#e9e6f2ff')
      Row(){
        Text(this.foodItem!.foodName)
          .fontSize(16)
          .fontColor(Color.Black)
          .width("100%")
          .textAlign(TextAlign.Center)
          .padding({top:10,bottom:10})
      }
      .width('90%')
      .backgroundColor('#E5E5E5')
    }
    .height(180)
    .clip(new Rect({ width: '100%', height: '100%', radius: 12 }))
    .onClick(()=>{
      //此处跳转到食谱详情
      router.pushUrl({url:"",params:{food:this.foodItem}})
    })
  }
}

@Component
struct IndexPage{
  private foodItems?:Array<FoodData>  = FoodArray;
  build(){
    Column(){
      Text($r("app.string.title_food_list"))
        .width('100%')
        .height(56)
        .backgroundColor('#FF1f3f5')
        .fontSize(20)
        .textAlign(TextAlign.Center)
      Grid() {
        ForEach(this.foodItems!, (item: FoodData) => {
          GridItem() {
            FoodGridItem({ foodItem: item })
          }
        })
      }
      .height("90%")
      .margin({top:20})
      .columnsTemplate("1fr 1fr")
      .columnsGap(10)
      .rowsGap(10)
    }
    .height("100%")
  }
}

@Component
export default struct MainPage{
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
    .backgroundColor(this.currentIndex == targetIndex?"#ff69c2ef":Color.White)
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
        IndexPage()
      }
      .tabBar(this.tabBuilder('主页',0))
      TabContent(){

      }
      .tabBar(this.tabBuilder('热门',1))
      TabContent(){
        RankPage()
      }
      .tabBar(this.tabBuilder('排行',2))
      TabContent(){

      }
      .tabBar(this.tabBuilder('原创',3))
    }
    .barHeight("8%")
    .height("100%")
    .onChange((index:number)=>{
      this.currentIndex = index;
    })
  }
}