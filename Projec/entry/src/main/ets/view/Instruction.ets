import FoodData from '../model/ItemData';
import router from '@ohos.router';

@Component
export default struct Instruction {
  private foodItem: FoodData = router.getParams() as FoodData
  private swiperController: SwiperController = new SwiperController()
  private instructions: string[] = this.foodItem.InstructionData.instructions

  build(){
    Row(){
      Swiper(this.swiperController){
        ForEach(this.instructions, (item: string, index: number) => {
          Column(){
            Row(){
              Column(){
                Row(){
                  Text(`步骤`)
                    .fontSize(24)
                    .textAlign(TextAlign.Center)
                  Button(`${index + 1}`, { type: ButtonType.Capsule, stateEffect: false })
                    .backgroundColor(0xF55A42)
                    .fontSize(24)
                    .width('25%')
                    .height('90%')
                }
                .width('90%')
                .height('10%')
                .justifyContent(FlexAlign.Start)
                Row(){
                  Text(item)
                    .fontSize(18)
                    .textAlign(TextAlign.Center)
                }
                .width('90%')
                .height('75%')
                .justifyContent(FlexAlign.Center)
                Row(){
                  Button((
                    () => {
                      if(index < this.instructions.length - 1){
                        return `下一步`
                      } else {
                        return `返回菜品`
                      }
                    })())
                    .onClick((
                      () => {
                        if(index < this.instructions.length - 1){
                          return () => {this.swiperController.showNext()}
                        } else {
                          return () => {router.back({url: "pages/InfoPage", params:this.foodItem})}
                        }
                      })())
                    .backgroundColor(0xF55A42)
                    .fontSize(24)
                    .width('60%')
                    .height('80%')
                }
                .width('100%')
                .height('15%')
                .justifyContent(FlexAlign.Center)
              }
              .width('100%')
              .height('90%')
              .alignItems(HorizontalAlign.Center)
              .justifyContent(FlexAlign.Center)
              .border({ width:0.9, color: Color.Gray })
              .borderRadius(8);
            }
            .width('90%')
            .height('90%')
            .alignItems(VerticalAlign.Center)
            .justifyContent(FlexAlign.Center)
          }
        }, (item: string) => item);
      }
      .width('90%')
      .border({ width:0.9, color: Color.Gray })
      .borderRadius(8);
    }
  }
}