import router from '@ohos.router';
import TopBar from '../view/TopBar';
import FoodData from '../model/ItemData'
import media from '@ohos.multimedia.media';


@Entry
@Component
struct InfoPage {
  // @State mainPageRouterParam: FoodData = router.getParams() as FoodData

  build() {
    Column() {
      Row() {
        TopBar({title: '菜品介绍'})
      }
      Row(){
        Column(){
          Row() {
            Text('Undefined')
              .fontSize(30)
              .fontWeight(FontWeight.Bold)
              .margin({top:'5%', left:'10%'})
              .width('100%')
          }
          .height('10%')
          Row() {
            Image($r("app.media.kongpaochicken"))
              .objectFit(ImageFit.Cover)
              .width('80%')
          }
          .height('40%')
          Row() {
            Text('介绍：')
              .fontSize(25)
              .fontWeight(FontWeight.Bold)
              .margin({left:'10%'})
              .width('100%')
          }
          .height('10%')
          Row() {
            Text('菜品介绍')
          }.height('40%')
        }
      }
      .height('80%')
      .alignItems(VerticalAlign.Top)
      Row() {
          Button() {
            Text('查看菜谱')
              .fontSize(25)
              .fontWeight(FontWeight.Bold)
          }
          .type(ButtonType.Capsule)
          .backgroundColor(0x99FFFF)
          .width('60%')
          .height('60%')
          .onClick(() => {
            // router.pushUrl({url:"",params:{}})
            router.pushUrl({url: ""})
          })
      }.alignItems(VerticalAlign.Bottom).height('10%')
    }.height('100%')
  }
}