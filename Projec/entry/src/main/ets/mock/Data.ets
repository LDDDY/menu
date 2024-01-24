import IngredientsDetailsData from '../model/IngredientsDetailsData'
import FoodData, { CategoryId } from '../model/ItemData'

export let hot1: FoodData = new FoodData("1","宫保鸡丁","经典川菜，主料鸡肉",CategoryId.HotFood)
hot1.image = $r("app.media.food_kongpaochicken")
hot1.DetailData = new IngredientsDetailsData([['鸡胸脯肉', '适量']], [['黄瓜', '半根'], ['花生', '一小碗半'], ['胡萝卜', '半根']],
  [['盐', '2匙'], ['生抽', '2勺'], ['老抽', '1勺'], ['豆瓣酱', '2勺'], ['料酒', '适量'], ['嫩肉粉（生粉）', '适量']], '咸鲜',
  "炒", "十分钟", "简单")
export let hot2: FoodData = new FoodData("2","孜然土豆牛肉","土豆、牛肉",CategoryId.HotFood)
hot2.image = ($r("app.media.food_beefpotato"))
hot2.DetailData = new IngredientsDetailsData([['鸡胸脯肉', '适量']], [['黄瓜', '半根'], ['花生', '一小碗半'], ['胡萝卜', '半根']],
  [['盐', '2匙'], ['生抽', '100勺'], ['老抽', '1勺'], ['豆瓣酱', '2勺'], ['料酒', '适量'], ['嫩肉粉（生粉）', '适量']], '咸鲜',
  "炒", "十分钟", "简单")
export let cold1: FoodData = new FoodData("3","凉拌菠菜","爽口凉菜",CategoryId.ColdFood)
cold1.image = ($r("app.media.food_spinach"))
export let cold2: FoodData = new FoodData('4',"拍黄瓜","爽口凉菜",CategoryId.ColdFood)
cold2.image = ($r("app.media.food_cucumber"))
export let soup1: FoodData = new FoodData('5',"紫菜鸡蛋汤","汤",CategoryId.Soup)
soup1.image = ($r("app.media.food_eggsoup"))
export let snack1: FoodData = new FoodData('6',"炸红薯球","小吃",CategoryId.Snack)
snack1.image = ($r("app.media.food_sweetpotato"))
export let snack2: FoodData = new FoodData('7',"黑椒鸡块","小吃",CategoryId.Snack)
snack2.image = ($r("app.media.food_friedchicken"))
export let dessert1: FoodData = new FoodData('8',"舒芙蕾","甜点",CategoryId.Dessert)
dessert1.image = ($r("app.media.food_souffle"))
export let dessert2: FoodData = new FoodData('9',"牛角包","甜点",CategoryId.Dessert)
dessert2.image = ($r("app.media.food_croissant"))
export let hot3: FoodData = new FoodData('10',"毛血旺","热菜",CategoryId.HotFood)
hot3.image = ($r("app.media.food_maoxuewang"))
export let hot4: FoodData = new FoodData('11',"油闷大虾","热菜",CategoryId.HotFood)
hot4.image = ($r("app.media.food_prawn"))
export let soup2: FoodData = new FoodData('12',"紫米粥","汤",CategoryId.Soup)
soup2.image = ($r("app.media.food_zimisoup"))

export let FoodArray:Array<FoodData> = [hot1,hot2,cold1,cold2,soup1,
  snack1,snack2,dessert1,dessert2,hot3,hot4,soup2]