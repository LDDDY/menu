import router from '@ohos.router';

@Component
export default struct TopBar {
  title: string | Resource = ''

  build() {
    Row() {
      Column(){
        // Text('返回')
        //   .width('20%')
        //   .fontSize(20)
        //   .textAlign(TextAlign.Center)
        //   .onClick(() => {
        //     router.back()
        //   })
        Image($r('app.media.recipe_back'))
          .width('10%')
          .objectFit(ImageFit.Contain)
          .margin({left: '2%'})
          .onClick(() => {
            router.back()
          })
      }
      Column() {
        Text(this.title)
          .width('80%')
          .fontSize(20)
          .textAlign(TextAlign.Center)
          .fontWeight(FontWeight.Bold)
      }
    }
    .width('100%')
    .justifyContent(FlexAlign.Start)
    .backgroundColor('#FF1f3f5')
    .height(56)
  }
}