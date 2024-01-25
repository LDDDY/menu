import ArrayList from '@ohos.util.ArrayList'
import IngredientsDetailsData from '../model/IngredientsDetailsData'
import InstructionData from '../model/InstructionData'
import FoodData, { CategoryId } from '../model/ItemData'
import { dishesDesc } from './DishesDescData'

export let hot1: FoodData = new FoodData("1", "宫保鸡丁", "经典川菜，主料鸡肉", CategoryId.HotFood);
hot1.image = $r("app.media.food_kongpaochicken");
hot1.DetailData = new IngredientsDetailsData(
  [['鸡胸脯肉', '适量']],
  [['黄瓜', '半根'], ['花生', '一小碗半'], ['胡萝卜', '半根']],
  [['盐', '2匙'], ['生抽', '2勺'], ['老抽', '1勺'], ['豆瓣酱', '2勺'], ['料酒', '适量'], ['嫩肉粉（生粉）', '适量']],
  '咸鲜',
  '炒',
  '十分钟',
  '简单'
);
hot1.InstructionData = new InstructionData([
  "先把鸡肉切成丁，并用生粉和料酒进行腌制",
  "接着生抽和老抽混合好并且兑上水，可以放适当的白糖。",
  "将胡萝卜和黄瓜切成丁备用",
  "油烧热后放入鸡丁，炒至变色后加入混合调料液。",
  "然后倒入胡萝卜和黄瓜，并加盐翻炒。",
  "收汁之后加入花生。",
  "搅拌均匀之后，就可以出锅了。"
]);
hot1.detailedDesc = dishesDesc['kpchicken']

export let hot2: FoodData = new FoodData("2", "孜然土豆牛肉", "土豆、牛肉", CategoryId.HotFood);
hot2.image = ($r("app.media.food_beefpotato"));
hot2.DetailData = new IngredientsDetailsData(
  [['土豆', '适量'], ['牛排', '适量']],
  [['欧芹碎', '适量'], ['孜然', '适量']],
  [['花生油', '适量'], ['蚝油', '适量'], ['老抽', '适量'], ['黑胡椒', '适量']],
  '孜然',
  '炒',
  '一小时',
  '简单'
);
hot2.InstructionData = new InstructionData([
  "牛排提前解冻后切小粒。",
  "加入适量蚝油，老抽，黑胡椒。",
  "抓匀腌制半小时左右。",
  "土豆去皮洗净切小块。",
  "锅中热油放入土豆。",
  "炸至土豆金黄后盛出。",
  "锅中底油放入牛肉粒。",
  "煎炒出香味。",
  "加入适量孜然粉。",
  "翻炒均匀即可。"
])
hot2.detailedDesc = dishesDesc['beefpotato']

export let cold1: FoodData = new FoodData("3", "凉拌菠菜", "爽口凉菜", CategoryId.ColdFood);
cold1.image = ($r("app.media.food_spinach"));
cold1.DetailData = new IngredientsDetailsData(
  [['嫩菠菜', '适量'], ['花生米', '适量']],
  [['蒜', '适量'], ['辣椒', '适量'], ['花椒', '适量']],
  [['盐', '适量'], ['醋', '适量'], ['味精', '适量']],
  '酸盐',
  '拌',
  '十分钟',
  '简单'
);
cold1.InstructionData = new InstructionData([
  "菠菜洗干净，摘成合适的段。",
  "备点蒜和辣椒。不吃辣就省掉辣椒。",
  "锅里烧一些水。水开后放点油下去，然后把菠菜放进去烫。",
  "烫过的菠菜夹出来放盘子里。",
  "另起锅，热锅下油。放入蒜和辣椒爆香。",
  "关火，放入白糖、酱油、香醋、蚝油、盐拌匀。",
  "把汁淋到菠菜上即可。淋汁之前记得把菠菜里的水倒掉，因为烫过会出水的，倒掉水不至于把味道冲淡。"
])
cold1.detailedDesc = dishesDesc['spinach']

export let cold2: FoodData = new FoodData('4', "拍黄瓜", "爽口凉菜", CategoryId.ColdFood);
cold2.image = ($r("app.media.food_cucumber"));
cold2.DetailData = new IngredientsDetailsData(
  [['黄瓜', '适量']], [['无', '']],
  [['盐', '适量'], ['蒜末', '适量'], ['醋', '适量'], ['辣椒油', '适量'], ['麻油', '适量']],
  '酸辣',
  '拌',
  '十分钟',
  '简单'
);
cold2.InstructionData = new InstructionData([
  "黄瓜洗净放在菜板上，用切菜刀平拍，使黄瓜开裂。切成小块。",
  "大蒜拍裂，剁碎。",
  "把拍好的黄瓜和大蒜放入盘中，加入盐香油鸡精和少量的醋搅拌均匀即可。"
])
cold2.detailedDesc = dishesDesc['cucumber']

export let soup1: FoodData = new FoodData('5', "紫菜鸡蛋汤", "汤", CategoryId.Soup);
soup1.image = ($r("app.media.food_eggsoup"));
soup1.DetailData = new IngredientsDetailsData(
  [['紫菜', '适量'], ['鸡蛋', '适量']],
  [['葱', '适量'], ['姜', '适量'], ['香菜', '适量'], ['油', '少许']],
  [['盐', '适量'], ['味精', '适量'], ['香油', '适量']],
  '咸鲜',
  '煲',
  '十分钟',
  '简单'
);
soup1.InstructionData = new InstructionData([
  "葱花炝锅，开水加入锅中。",
  "紫菜放入锅中，锅里煮着紫菜，这边打鸡蛋搅匀。",
  "水沸腾，慢慢转圈倒入鸡蛋，开锅煮两分钟即可。",
  "放入香菜，盐，味精，点些香油，起锅，超级简单~！"
])
soup1.detailedDesc = dishesDesc['eggsoup']

export let snack1: FoodData = new FoodData('6', "炸红薯球", "小吃", CategoryId.Snack);
snack1.image = ($r("app.media.food_sweetpotato"));
snack1.DetailData = new IngredientsDetailsData(
  [['红薯', '300克'], ['糯米粉', '150克']],
  [['无', '']],
  [['白糖', '40克']],
  '甜味',
  '炸',
  '一小时',
  '简单'
);
snack1.InstructionData = new InstructionData([
  "首先是煮红豆沙，锅里放入红豆和冰糖，我是用高压锅压了两次就好了，出锅尝尝甜度，不甜可以再撒一些白砂糖搅拌一下。",
  "放进料理机打成豆沙泥。",
  "把地瓜蒸熟。",
  "放入白糖红薯碾碎成泥。",
  "放入糯米粉，搅拌融合。揉成团也是可以的。",
  "团成球，再放在芝麻里滚一下。",
  "把分好的面团，用手按扁，包入豆沙收口再按扁。",
  "包好的红薯饼两面沾上芝麻。",
  "锅里放油烧至6成热放入红薯球，小火慢炸，炸至飘起，用漏勺把红薯球按压两次，差不多就熟了。"
])
snack1.detailedDesc = dishesDesc['sweetpotato']

export let snack2: FoodData = new FoodData('7', "黑椒鸡块", "小吃", CategoryId.Snack);
snack2.image = ($r("app.media.food_friedchicken"));
snack2.DetailData = new IngredientsDetailsData(
  [['鸡胸肉', '1块'], ['黑胡椒碎', '适量']],
  [['鸡蛋', '1只'], ['面粉', '2勺'], ['淀粉', '1勺'], ['植物油', '适量'], ['泡打粉', '1g']],
  [['生抽', '1匙'], ['料酒', '1匙'], ['五香粉', '适量']],
  '微辣',
  '炸',
  '半小时',
  '普通'
);
snack2.InstructionData = new InstructionData([
  '鸡胸肉用刀背拍打后切块。撒上生抽，料酒，五香粉，黑胡椒碎。',
  '拌匀腌制20分钟。',
  '鸡蛋，面粉，淀粉，盐，泡打粉拌匀成面糊，把腌好的鸡块倒进去拌匀。',
  '炒锅放油烧热，下入鸡块中火炸制。',
  '中途把鸡块翻面，炸至金黄即可。',
  '装盘后再撒一层黑胡椒碎即可。'
])
snack2.detailedDesc = dishesDesc['firedchicken']

export let dessert1: FoodData = new FoodData('8', "舒芙蕾", "甜点", CategoryId.Dessert);
dessert1.image = ($r("app.media.food_souffle"));
dessert1.DetailData = new IngredientsDetailsData(
  [['蛋黄', '6g'], ['牛奶', '60g'], ['朗姆酒', '1小勺'], ['低筋面粉', '40g'], ['无盐奶油', '10g'], ['蛋白', '95g']],
  [['细砂糖', '30g']],
  [['无', '']],
  '奶香',
  '烘焙',
  '一小时',
  '普通'
);
dessert1.InstructionData = new InstructionData([
  '将黄油涂抹在烤碗内侧。',
  '牛奶中加入蛋黄液，用电动打蛋器打发均匀。',
  '筛入低粉并搅拌均匀。至无颗粒。',
  '将黄油隔热水熔化，趁热加入面糊中，搅拌均匀。',
  '接下来，我们要打发蛋白。先在蛋白中加入5滴柠檬汁。（加柠檬汁是酸化蛋白的酸碱度，同时也是为了稳定泡沫）。',
  '用电动打蛋器低速打发蛋白，打至有鱼眼泡状态，加入1/3细砂糖。（细砂糖能帮助蛋白打入空气，并且能在较短的时间内融化）',
  '再把电动打蛋器转高速打发蛋白，打至体积膨大，变的很浓稠，加入1/3细砂糖继续打发。',
  '然后把电动打蛋器转中速打发蛋白，打至表面有纹路，加入1/3细砂糖。（蛋白霜是蛋白和细砂糖制作出来的。状态好的蛋白霜，把空气打进去，蛋白里形成气泡，加入细砂糖之后它会产生粘性，打出气泡结实不容易破裂，细小又均匀的蛋白霜。但是加入细砂糖的量和时间要特别注意，一次性加入太多的细砂糖会抑制蛋白霜的发泡，但是加的太少的话又会使得气泡过多，所以细砂糖最好分3次加入蛋白霜里搅打）',
  '接着把电动打蛋器转高速打发蛋白打至呈倒三角。',
  '用刮刀将打发好的蛋白和蛋黄黄油液放一起，用刮刀自下而上切拌手法迅速拌匀,拌好的糊倒入烤碗中，8分满。',
  '烤箱提前预热，185度，20分钟。烤好后，筛些糖粉在表面，趁热食用。'
])
dessert1.detailedDesc = dishesDesc['souffle']

export let dessert2: FoodData = new FoodData('9', "牛角包", "甜点", CategoryId.Dessert);
dessert2.image = ($r("app.media.food_croissant"));
dessert2.DetailData = new IngredientsDetailsData(
  [['面粉', '300g'], ['酵母', '3g'], ['鸡蛋', '2个'], ['白砂糖', '20g'], ['玉米油', '2勺']],
  [['黑芝麻', '少许'], ['温水', '100g']],
  [['无', '']],
  '甜香',
  '烤',
  '数小时',
  '简单'
);
dessert2.InstructionData = new InstructionData([
  '300克面粉，放入3克酵母，2勺白砂糖，2勺玉米油，打入一个鸡蛋。',
  '一边倒入温水，一边搅拌成絮状。',
  '揉出手套膜，揉成面团盖上保鲜膜，醒发两倍大。',
  '醒发好的面团揉10分钟排气，醒5分钟，擀成面皮。',
  '切成三角形备用。',
  '由上往下卷起来。',
  '做好的牛角包二次醒发30分钟。',
  '取一个鸡蛋黄，搅拌成蛋黄液，刷一层在牛角包上。撒上黑芝麻。',
  '烤箱预热，200度火，烤20分钟。'
])
dessert2.detailedDesc = dishesDesc['croissant']

export let hot3: FoodData = new FoodData('10', "毛血旺", "热菜", CategoryId.HotFood);
hot3.image = ($r("app.media.food_maoxuewang"));
hot3.DetailData = new IngredientsDetailsData(
  [['鸭血', '适量'], ['毛肚', '适量'], ['百叶', '适量'], ['火腿', '适量'], ['鱿鱼', '适量'], ['黄豆芽（或芹菜）', '适量'], ['香菇', '适量']],
  [['郫县豆瓣酱', '适量'], ['干红辣椒丝', '适量'], ['花椒', '适量'], ['川椒', '适量'],['葱', '适量'], ['姜', '适量'], ['蒜', '适量']],
  [['鸡精', '适量'], ['料酒', '适量'], ['盐', '适量'], ['糖', '适量']],
  '麻辣',
  '烧',
  '一小时',
  '普通'
);
hot3.InstructionData = new InstructionData([
  '鸭血洗净切片，毛肚切丝，百叶切丝，鱿鱼切花刀',
  '火腿肠切片，香菇切片，葱姜蒜切末',
  '锅放火上，添入适量水，下入切好的芹菜段焯水。捞出盛在盆内打底。',
  '鸭血、毛肚、百叶、鱿鱼也分别焯水备用。',
  '炒锅加入少许底油，五成油温时下入郫县豆瓣酱炒出红油。',
  '加入花椒、葱姜蒜末炒出香味。',
  '兑入适量水或高汤。',
  '大火烧开后，先下入香菇略煮，然后调入料酒，糖、盐、鸡精定好味，最后下入其它主料。',
  '烧开后出锅盛入芹菜或黄豆芽打底的盆内。',
  '干辣椒丝事先用热水泡一下。',
  '另起锅，添入少许油，下入川椒、泡好的干辣椒丝，也可再加些红油炒出香味。',
  '浇在菜肴上即可。'
])
hot3.detailedDesc = dishesDesc['maoxuewang']

export let hot4: FoodData = new FoodData('11', "油闷大虾", "热菜",CategoryId.HotFood);
hot4.image = ($r("app.media.food_prawn"));
hot4.DetailData = new IngredientsDetailsData(
  [['鲜虾', '16只']],
  [['小葱', '1颗'], ['大蒜', '2瓣'], ['生姜', '1块']],
  [['酒酿', '半碗'], ['番茄酱', '1.5勺'], ['料酒', '少许'], ['生抽', '2勺'], ['胡椒粉', '半勺'], ['花生油', '适量']],
  '酸辣',
  '焖',
  '半小时',
  '普通'
);
hot4.InstructionData = new InstructionData([
  '青虾洗净，剪去虾枪，虾腿，开背，挑去虾线。',
  '锅中放底油烧热，加入葱片和姜片炝锅。',
  '再把青虾加入锅中煸炒。加入适量黄酒或料酒。',
  '倒入由白糖、白醋、生抽、盐调制好的汁，焖2-3分钟左右。'
])
hot4.detailedDesc = dishesDesc['prawn']

export let soup2: FoodData = new FoodData('12', "紫米粥", "汤", CategoryId.Soup);
soup2.image = ($r("app.media.food_zimi"));
soup2.DetailData = new IngredientsDetailsData(
  [['黑米', '3手把'], ['黑糯米', '2手把'], ['黑豆', '少许'], ['薏米', '3手把'], ['百合', '少许'], ['莲子', '10粒'], ['斑豆', '少许'], ['核桃仁', '少许'], ['糙米', '2手把'], ['黑芝麻', '1手把']],
  [['冰糖', '80g']],
  [['无', '']],
  '甜',
  '煮',
  '一天',
  '简单'
);
soup2.InstructionData = new InstructionData([
  '全部材料洗清，放入盛器中,加水,放入雪柜浸過夜.',
  '第二天早上,起床,從雪柜取出.',
  '倒入锅里,加入适量水.',
  '放電磁炉上,大火滾起,小火5分鍾.',
  '放入燜燒锅里.',
  '換大锅(翻煮),加入8飯碗水.',
  '大火滾起,轉小火滾15分鍾.熄火.',
  '加入一塊片糖.待涼,即可.'
])
soup2.detailedDesc = dishesDesc['zimi']

export let FoodArray: Array<FoodData> = [
  hot1,
  hot2,
  cold1,
  cold2,
  soup1,
  snack1,
  snack2,
  dessert1,
  dessert2,
  hot3,
  hot4,
  soup2
];

export let initList:ArrayList<string[]> = new ArrayList();
initList.add(['1','11','111'])
initList.add(['2','22','222'])