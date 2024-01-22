import router from '@ohos.router';

@Component
export default struct TopBar {
  title: string = ''

  build() {
    Row() {
      Column(){
        Text('返回')
          .width('20%')
          .fontSize(20)
          .textAlign(TextAlign.Center)
          .onClick(() => {
            router.back()
          })
      }
      Column() {
        Text(this.title)
          .width('60%')
          .fontSize(20)
          .textAlign(TextAlign.Center)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            router.back({url:"",params:{}})
          })
      }
    }
    .width('100%')
    .justifyContent(FlexAlign.Start)
    .backgroundColor('#FF1f3f5')
    .height(56)
  }
}