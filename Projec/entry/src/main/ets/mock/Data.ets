import IngredientsDetailsData from '../model/IngredientsDetailsData'
import FoodData, { CategoryId } from '../model/ItemData'
import { dishesDesc } from './DishesDescData'

export let hot1: FoodData = new FoodData("1","宫保鸡丁","经典川菜，主料鸡肉",CategoryId.HotFood)
hot1.image = $r("app.media.food_kongpaochicken")
hot1.DetailData = new IngredientsDetailsData([['鸡胸脯肉', '适量']], [['黄瓜', '半根'], ['花生', '一小碗半'], ['胡萝卜', '半根']],
  [['盐', '2匙'], ['生抽', '2勺'], ['老抽', '1勺'], ['豆瓣酱', '2勺'], ['料酒', '适量'], ['嫩肉粉（生粉）', '适量']], '咸鲜',
  '炒', '十分钟', '简单')
hot1.detailedDesc = dishesDesc['kpchicken']
export let hot2: FoodData = new FoodData("2","孜然土豆牛肉","土豆、牛肉",CategoryId.HotFood)
hot2.image = ($r("app.media.food_beefpotato"))
hot2.DetailData = new IngredientsDetailsData([['土豆', '适量'], ['牛排', '适量']], [['欧芹碎', '适量'], ['孜然', '适量']],
  [['花生油', '适量'], ['蚝油', '适量'], ['老抽', '适量'], ['黑胡椒', '适量']], '孜然',
  '炒', '一小时', '简单')
hot2.detailedDesc = dishesDesc['beefpotato']
export let cold1: FoodData = new FoodData("3","凉拌菠菜","爽口凉菜",CategoryId.ColdFood)
cold1.image = ($r("app.media.food_spinach"))
cold1.DetailData = new IngredientsDetailsData([['嫩菠菜', '适量'], ['花生米', '适量']], [['蒜', '适量'], ['辣椒', '适量'], ['花椒', '适量']],
  [['盐', '适量'], ['醋', '适量'], ['味精', '适量']], '酸盐',
  '拌', '十分钟', '简单')
cold1.detailedDesc = dishesDesc['spinach']
export let cold2: FoodData = new FoodData('4',"拍黄瓜","爽口凉菜",CategoryId.ColdFood)
cold2.image = ($r("app.media.food_cucumber"))
cold2.DetailData = new IngredientsDetailsData([['黄瓜', '适量']], [['无', '']],
  [['盐', '适量'], ['蒜末', '适量'], ['醋', '适量'], ['辣椒油', '适量'], ['麻油', '适量']], '酸辣',
  '拌', '十分钟', '简单')
cold2.detailedDesc = dishesDesc['cucumber']
export let soup1: FoodData = new FoodData('5',"紫菜鸡蛋汤","汤",CategoryId.Soup)
soup1.image = ($r("app.media.food_eggsoup"))
soup1.DetailData = new IngredientsDetailsData([['紫菜', '适量'], ['鸡蛋', '适量']], [['葱', '适量'], ['姜', '适量'], ['香菜', '适量'], ['油', '少许']],
  [['盐', '适量'], ['味精', '适量'], ['香油', '适量']], '咸鲜',
  '煲', '十分钟', '简单')
soup1.detailedDesc = dishesDesc['eggsoup']
export let snack1: FoodData = new FoodData('6',"炸红薯球","小吃",CategoryId.Snack)
snack1.image = ($r("app.media.food_sweetpotato"))
snack1.DetailData = new IngredientsDetailsData([['红薯', '300克'], ['糯米粉', '150克']], [['无', '']],
  [['白糖', '40克']], '甜味',
  '炸', '一小时', '简单')
snack1.detailedDesc = dishesDesc['sweetpotato']
export let snack2: FoodData = new FoodData('7',"黑椒鸡块","小吃",CategoryId.Snack)
snack2.image = ($r("app.media.food_friedchicken"))
snack2.DetailData = new IngredientsDetailsData([['鸡胸肉', '1块'], ['黑胡椒碎', '适量']], [['鸡蛋', '1只'], ['面粉', '2勺'], ['淀粉', '1勺'], ['植物油', '适量'], ['泡打粉', '1g']],
  [['生抽', '1匙'], ['料酒', '1匙'], ['五香粉', '适量']], '微辣',
  '炸', '半小时', '普通')
snack2.detailedDesc = dishesDesc['firedchicken']
export let dessert1: FoodData = new FoodData('8',"舒芙蕾","甜点",CategoryId.Dessert)
dessert1.image = ($r("app.media.food_souffle"))
dessert1.DetailData = new IngredientsDetailsData([['蛋黄', '6g'], ['牛奶', '60g'], ['朗姆酒', '1小勺'], ['低筋面粉', '40g'], ['无盐奶油', '10g'], ['蛋白', '95g']], [['细砂糖', '30g']],
  [['无', '']], '奶香',
  '烘焙', '一小时', '普通')
dessert1.detailedDesc = dishesDesc['souffle']
export let dessert2: FoodData = new FoodData('9',"牛角包","甜点",CategoryId.Dessert)
dessert2.image = ($r("app.media.food_croissant"))
dessert2.DetailData = new IngredientsDetailsData([['面粉', '300g'], ['酵母', '3g'], ['鸡蛋', '2个'], ['白砂糖', '20g'], ['玉米油', '2勺']], [['黑芝麻', '少许'], ['温水', '100g']],
  [['无', '']], '甜香',
  '烤', '数小时', '简单')
dessert2.detailedDesc = dishesDesc['croissant']
export let hot3: FoodData = new FoodData('10',"毛血旺","热菜",CategoryId.HotFood)
hot3.image = ($r("app.media.food_maoxuewang"))
hot3.DetailData = new IngredientsDetailsData([['鸭血', '适量'], ['毛肚', '适量'], ['百叶', '适量'], ['火腿', '适量'], ['鱿鱼', '适量'], ['黄豆芽（或芹菜）', '适量'], ['香菇', '适量']], [['郫县豆瓣酱', '适量'], ['干红辣椒丝', '适量'], ['花椒', '适量'], ['川椒', '适量'],['葱', '适量'], ['姜', '适量'], ['蒜', '适量']],
  [['鸡精', '适量'], ['料酒', '适量'], ['盐', '适量'], ['糖', '适量']], '麻辣',
  '烧', '一小时', '普通')
hot3.detailedDesc = dishesDesc['maoxuewang']
export let hot4: FoodData = new FoodData('11',"油闷大虾","热菜",CategoryId.HotFood)
hot4.image = ($r("app.media.food_prawn"))
hot4.DetailData = new IngredientsDetailsData([['鲜虾', '16只']], [['小葱', '1颗'], ['大蒜', '2瓣'], ['生姜', '1块']],
  [['酒酿', '半碗'], ['番茄酱', '1.5勺'], ['料酒', '少许'], ['生抽', '2勺'], ['胡椒粉', '半勺'], ['花生油', '适量']], '酸辣',
  '焖', '半小时', '普通')
hot4.detailedDesc = dishesDesc['prawn']
export let soup2: FoodData = new FoodData('12',"紫米粥","汤",CategoryId.Soup)
soup2.image = ($r("app.media.food_zimi"))
soup2.DetailData = new IngredientsDetailsData([['黑米', '3手把'], ['黑糯米', '2手把'], ['黑豆', '少许'], ['薏米', '3手把'], ['百合', '少许'], ['莲子', '10粒'], ['斑豆', '少许'], ['核桃仁', '少许'], ['糙米', '2手把'], ['黑芝麻', '1手把']], [['冰糖', '80g']],
  [['无', '']], '甜',
  '煮', '一天', '简单')
soup2.detailedDesc = dishesDesc['zimi']

export let FoodArray:Array<FoodData> = [hot1,hot2,cold1,cold2,soup1,
  snack1,snack2,dessert1,dessert2,hot3,hot4,soup2]