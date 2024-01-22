import IngredientsDetailsData from '../model/IngredientsDetailsData'

@Preview
@Component

export default struct IngredientsDetailsListItemView {
  // data: IngredientsDetailsData = new IngredientsDetailsData([], [], [], '', '', '', '')

  main: string[][] = [['鸡胸脯肉', '适量']]
  aux: string[][] = [['黄瓜', '半根'], ['花生', '一小碗半'], ['胡萝卜', '半根']]
  fla: string[][] = [['盐', '2匙'], ['生抽', '2勺'], ['老抽', '1勺'], ['豆瓣酱', '2勺'], ['料酒', '适量'], ['嫩肉粉（生粉）', '适量']]
  flavor: string = '咸鲜'
  tech: string = '炒'
  time: string = '十分钟'
  diffi: string = '简单'

  data: IngredientsDetailsData = new IngredientsDetailsData(this.main, this.aux, this.fla, this.flavor, this.tech, this.time, this.diffi)

  build() {
    Column() {
      Text('食材明细')
        .fontSize(22)
        .fontColor(Color.Red)
        .margin({ top: 20, bottom: 8})

      Text('主料')
        .fontSize(19)
        .margin({ top: 15, bottom: 8 })
      List({ space: '16vp' }) {
        ForEach(this.data.mainIngre, (mainIngreItem: string[]) => {
          ListItem() {
            Column() {
              Text(mainIngreItem[0])
                .fontSize(17)
              Text(mainIngreItem[1])
                .fontSize(13)
                .fontColor(Color.Gray)
                .margin({ top: 5})
            }
          }
          .margin({top: 8, bottom: 8})
        })
      }
      .width('90%')
      .border({ width:0.9, color: Color.Gray })
      .borderRadius(8)
      .listDirection(Axis.Vertical)
      .lanes({minLength: 120, maxLength: 120})

      Text('辅料')
        .fontSize(19)
        .margin({ top: 15, bottom: 8 })
      List({ space: '16vp' }) {
        ForEach(this.data.auxIngre, (auxIngreItem: string[]) => {
          ListItem() {
            Column() {
              Text(auxIngreItem[0])
                .fontSize(17)
              Text(auxIngreItem[1])
                .fontSize(13)
                .fontColor(Color.Gray)
                .margin({top: 5})
            }
          }
          .margin({top: 8, bottom: 8})
        })
      }
      .width('90%')
      .border({ width:0.9, color: Color.Gray })
      .borderRadius(8)
      .listDirection(Axis.Vertical)
      .lanes({minLength: 120, maxLength: 120})

      Text('调料')
        .fontSize(19)
        .margin({ top: 15, bottom: 8 })
      List({ space: '16vp' }) {
        ForEach(this.data.flavorings, (flavoringsItem: string[]) => {
          ListItem() {
            Column() {
              Text(flavoringsItem[0])
                .fontSize(17)
              Text(flavoringsItem[1])
                .fontSize(13)
                .fontColor(Color.Gray)
                .margin({top: 5})
            }
          }
          .margin({top: 8, bottom: 8})
        })
      }
      .width('90%')
      .border({ width:0.9, color: Color.Gray })
      .borderRadius(8)
      .listDirection(Axis.Vertical)
      .lanes({minLength: 120, maxLength: 120})

      List({ space: '16vp' }) {
        ListItem() {
          Column() {
            Text(this.data.flavor)
              .fontSize(17)
            Text('风味')
              .fontSize(13)
              .fontColor(Color.Gray)
              .margin({top: 5})
          }
        }.margin({top: 8, bottom: 8})
        ListItem() {
          Column() {
            Text(this.data.technique)
              .fontSize(17)
            Text('工艺')
              .fontSize(13)
              .fontColor(Color.Gray)
              .margin({top: 5})
          }
        }.margin({top: 8, bottom: 8})
        ListItem() {
          Column() {
            Text(this.data.requiredTime)
              .fontSize(17)
            Text('耗时')
              .fontSize(13)
              .fontColor(Color.Gray)
              .margin({top: 5})
          }
        }.margin({top: 8, bottom: 8})
        ListItem() {
          Column() {
            Text(this.data.difficulty)
              .fontSize(17)
            Text('难度')
              .fontSize(13)
              .fontColor(Color.Gray)
              .margin({top: 5})
          }
        }.margin({top: 8, bottom: 8})
      }
      .width('90%')
      .border({ width:0.9, color: Color.Gray })
      .borderRadius(8)
      .margin({top: 40, bottom: 5})
      .listDirection(Axis.Vertical)
      .lanes({minLength: 120, maxLength: 120})
    }
    .width('90%')
  }
}