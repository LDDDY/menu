import FoodData from '../model/ItemData';
import router from '@ohos.router';

@Component
export default struct Instruction {
  scroller: Scroller = new Scroller();
  private foodItem: FoodData = router.getParams() as FoodData

  build(){
    Row(){
      Swiper(){
        ForEach(this.foodItem.InstructionData.instructions, (item: string) => {
          Row(){
            Column(){
              Text(item.toString())
                .fontSize(24)
                .textAlign(TextAlign.Center)
            }
            .width('90%')
            .height('90%')
            .alignItems(HorizontalAlign.Center)
            .justifyContent(FlexAlign.Center)
            .border({ width:0.9, color: Color.Gray })
            .borderRadius(8)
          }
          .width('90%')
          .height('90%')
          .alignItems(VerticalAlign.Center)
          .justifyContent(FlexAlign.Center)
          .border({ width:0.9, color: Color.Gray })
          .borderRadius(8)
        }, (item: string) => item)
      }
      .width('90%')
      .border({ width:0.9, color: Color.Gray })
      .borderRadius(8)
    }
  }
}