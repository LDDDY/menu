import { DEFAULT } from '@ohos/hypium';
import ArrayList from '@ohos.util.ArrayList';
import FoodData from '../model/ItemData'
import { FoodArray, initList } from '../mock/Data';
import router from '@ohos.router';
import { BorderRadius } from '../common/Constants';
import Prompt from '@system.prompt';

@Component
struct FoodListItem{
  private foodItem?:FoodData
  build(){
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
      .onClick(()=>{
        //此处跳转到食谱详情
        router.pushUrl({url:"pages/InfoPage",params: this.foodItem})
      })
      .hoverEffect(HoverEffect.Highlight)
      .height(64)
      .width('100%')
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
      .height('92%')
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
          .height("70%")
          .width('80%')
          .margin({left:"10%"}).padding({top:10,bottom:10})
      }
      .width("90%")
      .backgroundColor('#e9e6f2ff')
      Row(){
        Text(this.foodItem!.foodName)
          .fontSize(14)
          .fontColor(Color.Black)
          .width("100%")
          .textAlign(TextAlign.Center)
          .padding({top:10,bottom:10})
      }
      .width('90%')
    }
    .borderWidth(1)
    .borderColor("#ff828485")
    .borderRadius(20)
    .height(120)
    .clip(new Rect({ width: '100%', height: '100%', radius: 12 }))
    .onClick(()=>{
      //此处跳转到食谱详情
      router.pushUrl({url:"pages/InfoPage",params: this.foodItem})
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
      .rowsTemplate("1fr 1fr 1fr 1fr")
      .columnsTemplate("1fr 1fr 1fr")
      .columnsGap(10)
      .rowsGap(10)
    }
    .height("100%")
  }
}

@Component
struct createItem{
  build(){
      Row(){
        Column(){
          Image($r("app.media.add"))
            .autoResize(true)
            .borderRadius(50)
            .borderWidth(1)
            .borderStyle(BorderStyle.Solid)
        }
        .width(80)
        .height(80)
        Column(){
          Text("创建一个自己的新菜谱")
            .fontSize(16)
        }
        .margin({left:20})
      }
      .padding(10)
      .margin({top:20,left:"2.5%"})
      .borderWidth(2)
      .borderRadius(BorderRadius)
      .borderStyle(BorderStyle.Dashed)
      .width("95%")
      .height("20%")
      .onClick(()=>{
        console.info(`Successfully click the recipe_add btn.`)
        router.pushUrl({url:'pages/OriginalRecipe_AddRecipe'})
      })
  }
}

@Component
struct createPage{
  @State
  private array: ArrayList<string[]> = initList;
  private recipe_foodtype:string="";
  private recipe_step:string="";

  private get_new_recipe :string[] = router.getParams() as string[];

  aboutToAppear(){
    if(this.get_new_recipe!=null){
      this.array.add(this.get_new_recipe);
    }
  }
  build(){
    Column(){
      Navigation() {
        List({ space: 12 }) {
          ForEach(this.array.convertToArray(), (item: string[]) => {
            ListItem() {
              NavRouter() {
                Text(item[0])
                  .width("100%")
                  .height(72)
                  .backgroundColor('#FFFFFF')
                  .borderRadius(24)
                  .fontSize(16)
                  .fontWeight(500)
                  .textAlign(TextAlign.Center)

                NavDestination() {
                  Column({space:20}){
                    Column(){
                      Text("食材及用量")
                      TextArea({text:item[1]})
                        .height("30%")
                        .onChange((recipe_foodtype)=>{
                          this.recipe_foodtype=recipe_foodtype;
                        })
                        .padding(10)
                        .margin({top:20,left:"2.5%",right:"2.5%"})
                        .borderWidth(2)
                        .borderRadius(BorderRadius)
                        .borderStyle(BorderStyle.Solid)
                    }
                    Column(){
                      Text("步骤")
                      TextArea({text:item[2]})
                        .height("43%")
                        .onChange((recipe_step)=>{
                          this.recipe_step=recipe_step;
                        })
                        .padding(10)
                        .margin({top:20,left:"2.5%",right:"2.5%"})
                        .borderWidth(2)
                        .borderRadius(BorderRadius)
                        .borderStyle(BorderStyle.Solid)
                    }
                  }

                  Button(){
                    Image($r("app.media.recipe_delete"))
                      .width(40)
                      .height(40)
                  }
                  .backgroundColor(Color.Red)
                  .width(50)
                  .height(50)
                  .position({x:'30%',y:'91%'})
                  .onClick(()=>{
                    this.array.remove(item)
                    // OriginalRecipe_DataBase.get().delete(item[0]);
                    router.replaceUrl({
                      url : "pages/Index"
                    });
                    Prompt.showToast({
                      message:"删除成功",
                    })
                  })

                  Button(){
                    Image($r("app.media.recipe_storeW"))
                      .width(40)
                      .height(40)
                  }
                  .width(50)
                  .height(50)
                  .position({x:'60%',y:'91%'})
                  .onClick(()=>{
                    this.array[this.array.getIndexOf(item)] = [item[0],this.recipe_foodtype,this.recipe_step];
                    // OriginalRecipe_DataBase.get().update(item[0],this.recipe_foodtype,this.recipe_step);
                    Prompt.showToast({
                      message:"更新成功",
                    })
                  })
                }
                .title(item[0])
              }
            }
            .borderWidth(1)
            .width("95%")
            .margin({left:"2.5%"})
            .borderRadius(10)
          }, (item: string): string => item)
          ListItem(){
            createItem()
          }
        }
      }
      .title('原创食谱')
      .titleMode(NavigationTitleMode.Full)
      .mode(NavigationMode.Auto)
    }
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
        .fontWeight(this.currentIndex == targetIndex?FontWeight.Bold:FontWeight.Normal)
        .fontColor(this.currentIndex == targetIndex?Color.Blue:Color.Black)
    }
    .backgroundColor(this.currentIndex == targetIndex?"#ff69c2ef":'#FF1f3f5')
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
        RankPage()
      }
      .tabBar(this.tabBuilder('排行',1))
      TabContent(){
        createPage()
      }
      .tabBar(this.tabBuilder('原创',2))
    }
    .barHeight("8%")
    .height("100%")
    .onChange((index:number)=>{
      this.currentIndex = index;
    })
  }
}