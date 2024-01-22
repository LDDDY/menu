import IngredientsDetailsListItemView from '../view/IngredientsDetailsListItemVIew'
import Instruction from '../view/Instruction'
import InstructionPage from '../view/Instruction'
import TopBar from '../view/TopBar'

@Entry
@Component
struct DetailPage{
  build(){
    Column(){
      TopBar()
      Tabs({barPosition:BarPosition.End}){
        TabContent(){
          Scroll(new Scroller()){
            IngredientsDetailsListItemView()
          }
          .scrollable(ScrollDirection.Vertical)
          .scrollBar(BarState.Off)
        }
        .height("90%")
        .tabBar("食材明细")
        TabContent(){
          Instruction()
        }.tabBar("步骤")
      }
      .height("92%")
      .barHeight("8%")
    }
  }
}