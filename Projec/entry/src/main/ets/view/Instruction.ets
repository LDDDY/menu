import FoodData from '../model/ItemData';
import router from '@ohos.router';

@Component
export default struct Instruction {
  scroller: Scroller = new Scroller();
  private foodItem: FoodData = router.getParams() as FoodData

  build(){
    Scroll(this.scroller) {
      Column() {
        ForEach(this.foodItem.InstructionData.instructions, (item: string) => {
          if(item){
            Text(item.toString())
              .width('90%')
              .height(150)
              .backgroundColor(0xFFFFFF)
              .borderRadius(15)
              .fontSize(16)
              .textAlign(TextAlign.Center)
              .margin({ top: 10 })
          }
        }, (item: string) => item)
      }.width('100%')
    }
    .backgroundColor(0xDCDCDC)
    .scrollable(ScrollDirection.Vertical) // 滚动方向为垂直方向
    .scrollBar(BarState.On) // 滚动条常驻显示
    .scrollBarColor(Color.Gray) // 滚动条颜色
    .scrollBarWidth(10) // 滚动条宽度
    .edgeEffect(EdgeEffect.Spring) // 滚动到边沿后回弹
  }
}