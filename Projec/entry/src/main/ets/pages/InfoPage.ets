import router from '@ohos.router';
import TopBar from '../view/TopBar';
import FoodData from '../model/ItemData'


@Entry
@Component
struct InfoPage {
  // @State mainPageRouterParam: FoodData = router.getParams() as FoodData
  @State
  private foodItem :FoodData = new FoodData("-1","菜品名称","菜品介绍",0)

  onPageShow(){
    let params:FoodData= router.getParams() as FoodData;
    if(params!=null&& params!=undefined)
      this.foodItem = params;
  }

  build() {
    Column() {
      Row() {
        TopBar({title: $r('app.string.Food_description_title')})
      }
      Row(){
        Column(){
          Row() {
            Text(this.foodItem.foodName)
              .fontSize(30)
              .fontWeight(FontWeight.Bold)
              .margin({top:'5%', left:'10%'})
              .width('100%')
          }
          .height('10%')
          Row() {
            Image(this.foodItem.image)
              .objectFit(ImageFit.Cover)
              .width('80%')
          }
          .height('35%')
          Row() {
            Text($r('app.string.Food_desc_subtitle'))
              .fontSize(25)
              .fontWeight(FontWeight.Bold)
              .margin({left:'10%'})
              .width('100%')
          }
          .height('10%')
          Row() {
            Text(this.foodItem.detailedDesc)
              .margin({left: '10%', right: "10%"})
              .fontSize(18)
              .lineHeight(30)
              .textOverflow({overflow: TextOverflow.Ellipsis})
          }
          .height('45%')
          .alignItems(VerticalAlign.Top)
        }
      }
      .height('80%')
      .alignItems(VerticalAlign.Top)
      Row() {
          Button() {
            Text($r("app.string.View_recipe_button"))
              .fontSize(25)
              .fontWeight(FontWeight.Bold)
          }
          .type(ButtonType.Capsule)
          .backgroundColor(0x99FFFF)
          .width('60%')
          .height('60%')
          .onClick(() => {
            // router.pushUrl({url:"",params:{}})
            router.pushUrl({url: "pages/DetailPage",params:this.foodItem})
          })
      }.alignItems(VerticalAlign.Bottom).height('10%')
    }.height('100%')
  }
}