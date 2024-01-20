import FoodData, { CategoryId } from '../model/ItemData'

export let hot1: FoodData = new FoodData("1","宫保鸡丁","经典川菜，主料鸡肉",CategoryId.HotFood)
export let hot2: FoodData = new FoodData("2","孜然土豆牛肉","土豆、牛肉",CategoryId.HotFood)
export let cold1: FoodData = new FoodData("3","凉拌菠菜","爽口凉菜",CategoryId.ColdFood)
export let cold2: FoodData = new FoodData('4',"拍黄瓜","爽口凉菜",CategoryId.ColdFood)
export let soup1: FoodData = new FoodData('5',"紫菜鸡蛋汤","汤",CategoryId.Soup)
export let snack1: FoodData = new FoodData('6',"炸红薯球","小吃",CategoryId.Snack)
export let snack2: FoodData = new FoodData('7',"黑椒鸡块","小吃",CategoryId.Snack)
export let dessert1: FoodData = new FoodData('8',"舒芙蕾","甜点",CategoryId.Dessert)
export let dessert2: FoodData = new FoodData('9',"牛角包","甜点",CategoryId.Dessert)
export let hot3: FoodData = new FoodData('10',"毛血旺","热菜",CategoryId.HotFood)
export let hot4: FoodData = new FoodData('11',"油闷大虾","热菜",CategoryId.HotFood)
export let soup2: FoodData = new FoodData('12',"紫米粥","汤",CategoryId.Soup)

export let FoodArray:Array<FoodData> = [hot1,hot2,cold1,cold2,soup1,
  snack1,snack2,dessert1,dessert2,hot3,hot4,soup2]