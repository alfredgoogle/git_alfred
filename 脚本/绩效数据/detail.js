const rp = require('request-promise');
let fs = require('fs');
let path = require('path');

// 先查看日期是否有可选项，再进行抢号

// 查看日期接口和参数
// 抢号接口和参数

let arr = [{"id":9635,"employeeNo":"H000298","name":"高锦萍"},{"id":9684,"employeeNo":"H002585","name":"陈昊"},{"id":9688,"employeeNo":"T000008","name":"谭川东"},{"id":9704,"employeeNo":"H001915","name":"熊文文"},{"id":9705,"employeeNo":"H000294","name":"吴淼微"},{"id":9714,"employeeNo":"H001952","name":"吴颖"},{"id":9723,"employeeNo":"H001411","name":"董璐"},{"id":9729,"employeeNo":"H001245","name":"杨骏"},{"id":9734,"employeeNo":"H002554","name":"刘越"},{"id":9735,"employeeNo":"H002688","name":"徐红宇"},{"id":9742,"employeeNo":"H003238","name":"徐铭辉"},{"id":9744,"employeeNo":"H002711","name":"熊俊"},{"id":9746,"employeeNo":"H003233","name":"范盼盼"},{"id":9747,"employeeNo":"H001317","name":"樊琪山"},{"id":9748,"employeeNo":"H001427","name":"彭珊恬"},{"id":9750,"employeeNo":"H002532","name":"刘丹霞"},{"id":9756,"employeeNo":"H001253","name":"赵海林"},{"id":9758,"employeeNo":"T000654","name":"王晴"},{"id":9764,"employeeNo":"H001881","name":"胡燕萍"},{"id":9766,"employeeNo":"T000047","name":"余莉沙"},{"id":9768,"employeeNo":"H002712","name":"陈慧"},{"id":9769,"employeeNo":"H001461","name":"胡莹"},{"id":9774,"employeeNo":"H001431","name":"陶珊珊"},{"id":9779,"employeeNo":"H002560","name":"郭霏霏"},{"id":9780,"employeeNo":"H001465","name":"林培洁"},{"id":9784,"employeeNo":"H002545","name":"白静"},{"id":9785,"employeeNo":"H001837","name":"张涛"},{"id":9787,"employeeNo":"H003580","name":"黄晓楷"},{"id":9795,"employeeNo":"H001322","name":"林晗"},{"id":9799,"employeeNo":"H001445","name":"康水连"},{"id":9805,"employeeNo":"H002562","name":"蔡溢"},{"id":9813,"employeeNo":"H003244","name":"高一凡"},{"id":9814,"employeeNo":"T000073","name":"谭群弟"},{"id":9819,"employeeNo":"H000995","name":"冯芝军"},{"id":9822,"employeeNo":"H001457","name":"吴敏"},{"id":9823,"employeeNo":"H001314","name":"林水连"},{"id":9828,"employeeNo":"H002746","name":"候慧敏"},{"id":9829,"employeeNo":"H002572","name":"何钊"},{"id":9835,"employeeNo":"H003245","name":"吕爽"},{"id":9838,"employeeNo":"H002599","name":"段弘毅"},{"id":9842,"employeeNo":"H001530","name":"章亚辉"},{"id":9854,"employeeNo":"H001538","name":"班金凤"},{"id":9857,"employeeNo":"H001683","name":"邹鲤蔓"},{"id":9859,"employeeNo":"H003256","name":"杨萌"},{"id":9862,"employeeNo":"H001042","name":"程军荣"},{"id":9863,"employeeNo":"H003258","name":"李艳霞"},{"id":9865,"employeeNo":"H002315","name":"梁皓炜"},{"id":9866,"employeeNo":"H001045","name":"迟雪峰"},{"id":9867,"employeeNo":"H003259","name":"庄洁彩"},{"id":9872,"employeeNo":"H001054","name":"景科军"},{"id":9882,"employeeNo":"H002601","name":"罗顺"},{"id":9884,"employeeNo":"H003250","name":"尹瑞玲"},{"id":9888,"employeeNo":"H003251","name":"郭志泉"},{"id":9889,"employeeNo":"H001024","name":"陈佩伟"},{"id":9893,"employeeNo":"H001032","name":"张晓宁"},{"id":9896,"employeeNo":"H003254","name":"赵书馨"},{"id":9898,"employeeNo":"H001034","name":"何靖宇"},{"id":9899,"employeeNo":"H002774","name":"赵新辉"},{"id":9902,"employeeNo":"H002775","name":"何庆"},{"id":9904,"employeeNo":"H001711","name":"邓诗琰"},{"id":9906,"employeeNo":"H002779","name":"黄健熹"},{"id":9911,"employeeNo":"H001547","name":"张鹏"},{"id":9919,"employeeNo":"T013642","name":"李婷"},{"id":9926,"employeeNo":"H002829","name":"陈佳茵"},{"id":9928,"employeeNo":"H001758","name":"谭微"},{"id":9934,"employeeNo":"H001570","name":"陈震瀚"},{"id":9935,"employeeNo":"H001763","name":"王晓敏"},{"id":9937,"employeeNo":"H001764","name":"谢嘉玲"},{"id":9940,"employeeNo":"H002383","name":"曾瑞林"},{"id":9947,"employeeNo":"H001113","name":"陈家静"},{"id":9950,"employeeNo":"H003303","name":"曾沛文"},{"id":9956,"employeeNo":"H002401","name":"李中虎"},{"id":9958,"employeeNo":"H003307","name":"尚洁"},{"id":9962,"employeeNo":"H003282","name":"黄慧"},{"id":9966,"employeeNo":"H003287","name":"孙制平"},{"id":9972,"employeeNo":"H002371","name":"秦国章"},{"id":9977,"employeeNo":"H001105","name":"李丹敏"},{"id":9981,"employeeNo":"H002467","name":"黄显味"},{"id":9983,"employeeNo":"H002646","name":"毋晓旭"},{"id":9985,"employeeNo":"H002472","name":"钟鸿斌"},{"id":9986,"employeeNo":"H001152","name":"杨俊"},{"id":9987,"employeeNo":"H002652","name":"吴作南"},{"id":9990,"employeeNo":"T024284","name":"庞治"},{"id":9991,"employeeNo":"H002663","name":"陈俊豪"},{"id":9995,"employeeNo":"H002664","name":"吴振"},{"id":10004,"employeeNo":"H001597","name":"薛明卫"},{"id":10007,"employeeNo":"H002636","name":"杨彬"},{"id":10019,"employeeNo":"H002621","name":"王鹏"},{"id":10020,"employeeNo":"T033153","name":"何明珠"},{"id":10034,"employeeNo":"H001593","name":"葛旭东"},{"id":10045,"employeeNo":"H003344","name":"王灏成"},{"id":10047,"employeeNo":"H002208","name":"胡强"},{"id":10051,"employeeNo":"H002213","name":"陈家恒"},{"id":10055,"employeeNo":"H002216","name":"黄馨仪"},{"id":10060,"employeeNo":"H003402","name":"范世濠"},{"id":10069,"employeeNo":"H003332","name":"杨光"},{"id":10074,"employeeNo":"H003469","name":"臧博宇"},{"id":10077,"employeeNo":"H003337","name":"姜克芽"},{"id":10079,"employeeNo":"H002676","name":"张怡"},{"id":10080,"employeeNo":"T000005","name":"钟晓云"},{"id":13502,"employeeNo":"H003509","name":"严宇星"},{"id":13250,"employeeNo":"H003697","name":"许梦伟"},{"id":13195,"employeeNo":"H003731","name":"李乐超"},{"id":10516,"employeeNo":"H002083","name":"蔡德伟"},{"id":10488,"employeeNo":"H003376","name":"马晓康"},{"id":10378,"employeeNo":"H003462","name":"钟景珍"},{"id":9744,"employeeNo":"H002711","name":"熊俊"},{"id":13514,"employeeNo":"H004000","name":"赵燕飞"},{"id":13344,"employeeNo":"T000068","name":"高菁菁"},{"id":11029,"employeeNo":"H003606","name":"姜兴为"},{"id":10404,"employeeNo":"H003529","name":"陈宇飞"},{"id":10383,"employeeNo":"H003060","name":"赖春明"},{"id":10225,"employeeNo":"K000041","name":"张曙麟"},{"id":10184,"employeeNo":"H003587","name":"李瑶"},{"id":9902,"employeeNo":"H002775","name":"何庆"},{"id":9784,"employeeNo":"H002545","name":"白静"},{"id":13535,"employeeNo":"H003815","name":"韩玮"},{"id":13518,"employeeNo":"H004086","name":"张婷"},{"id":13395,"employeeNo":"H003757","name":"李文"},{"id":13271,"employeeNo":"H003710","name":"陈云帆"},{"id":10591,"employeeNo":"H003356","name":"侯雅鑫"},{"id":10530,"employeeNo":"H002996","name":"蒋京菁"},{"id":10525,"employeeNo":"H000098","name":"林景婷"},{"id":10428,"employeeNo":"H001375","name":"杨丽珊"},{"id":10079,"employeeNo":"H002676","name":"张怡"},{"id":9859,"employeeNo":"H003256","name":"杨萌"},{"id":9822,"employeeNo":"H001457","name":"吴敏"},{"id":9805,"employeeNo":"H002562","name":"蔡溢"},{"id":13497,"employeeNo":"H004105","name":"张柳"},{"id":13393,"employeeNo":"H003933","name":"何婧怡"},{"id":13339,"employeeNo":"H003800","name":"孔繁俊"},{"id":13283,"employeeNo":"H003819","name":"卢敏嘉"},{"id":10629,"employeeNo":"H003661","name":"温宏洲"},{"id":10481,"employeeNo":"H000598","name":"周超毅"},{"id":10440,"employeeNo":"K000120","name":"沈凯"},{"id":10314,"employeeNo":"H002247","name":"徐凡"},{"id":10226,"employeeNo":"H000712","name":"韦国梁"},{"id":10127,"employeeNo":"H002673","name":"陈嘉盈"},{"id":9987,"employeeNo":"H002652","name":"吴作南"},{"id":9819,"employeeNo":"H000995","name":"冯芝军"},{"id":9787,"employeeNo":"H003580","name":"黄晓楷"},{"id":13388,"employeeNo":"H003754","name":"王俊洁"},{"id":13367,"employeeNo":"H003943","name":"兰亦歆"},{"id":13360,"employeeNo":"H003759","name":"陈淑萍"},{"id":10473,"employeeNo":"H003196","name":"邱籽皓"},{"id":10469,"employeeNo":"H003195","name":"樊勇"},{"id":10468,"employeeNo":"H003438","name":"倪涛"},{"id":10366,"employeeNo":"H003456","name":"杨晓飞"},{"id":10352,"employeeNo":"H000954","name":"吴青松"},{"id":10304,"employeeNo":"H003485","name":"刘陶坤"},{"id":10077,"employeeNo":"H003337","name":"姜克芽"},{"id":9893,"employeeNo":"H001032","name":"张晓宁"},{"id":9758,"employeeNo":"T000654","name":"王晴"},{"id":13443,"employeeNo":"H004011","name":"钟其有"},{"id":13372,"employeeNo":"H003772","name":"马梦蝶"},{"id":13329,"employeeNo":"H003961","name":"杨涛"},{"id":13218,"employeeNo":"H003688","name":"吴泽鹏"},{"id":10399,"employeeNo":"H003111","name":"赵家祥"},{"id":10389,"employeeNo":"H003072","name":"林泽莉"},{"id":10085,"employeeNo":"H002510","name":"辛俊"},{"id":10074,"employeeNo":"H003469","name":"臧博宇"},{"id":9983,"employeeNo":"H002646","name":"毋晓旭"},{"id":9935,"employeeNo":"H001763","name":"王晓敏"},{"id":9764,"employeeNo":"H001881","name":"胡燕萍"},{"id":9729,"employeeNo":"H001245","name":"杨骏"},{"id":13422,"employeeNo":"H004033","name":"孙亚威"},{"id":10286,"employeeNo":"H003165","name":"李嘉鑫"},{"id":10269,"employeeNo":"H002142","name":"张燕华"},{"id":9906,"employeeNo":"H002779","name":"黄健熹"},{"id":10309,"employeeNo":"H003184","name":"闫琳"},{"id":10474,"employeeNo":"H003444","name":"季吴娜"},{"id":10060,"employeeNo":"H003402","name":"范世濠"},{"id":13517,"employeeNo":"H003782","name":"陈咏诗"},{"id":13451,"employeeNo":"H004134","name":"裴洋"},{"id":13413,"employeeNo":"H004126","name":"王松岩"},{"id":13328,"employeeNo":"H003789","name":"唐雯"},{"id":13264,"employeeNo":"H003863","name":"才郝玉"},{"id":11033,"employeeNo":"H002625","name":"应培源"},{"id":10664,"employeeNo":"H003667","name":"刘鹏程"},{"id":10647,"employeeNo":"H003627","name":"周顺"},{"id":10594,"employeeNo":"H003110","name":"张宁"},{"id":10566,"employeeNo":"H002175","name":"褚泽辉"},{"id":10564,"employeeNo":"H003039","name":"陈润佳"},{"id":10535,"employeeNo":"H003615","name":"陈虹銮"},{"id":10506,"employeeNo":"H003503","name":"刘尚铭"},{"id":10396,"employeeNo":"H001368","name":"朱昊东"},{"id":10364,"employeeNo":"H001121","name":"陈冠华"},{"id":10345,"employeeNo":"K000107","name":"熊颢"},{"id":10219,"employeeNo":"H000701","name":"姚刚"},{"id":10205,"employeeNo":"H003593","name":"吴鑫潮"},{"id":10188,"employeeNo":"H003588","name":"李雅馨"},{"id":10133,"employeeNo":"H002499","name":"于虹"},{"id":10129,"employeeNo":"H002495","name":"黄学林"},{"id":10069,"employeeNo":"H003332","name":"杨光"},{"id":10007,"employeeNo":"H002636","name":"杨彬"},{"id":9995,"employeeNo":"H002664","name":"吴振"},{"id":9991,"employeeNo":"H002663","name":"陈俊豪"},{"id":9926,"employeeNo":"H002829","name":"陈佳茵"},{"id":9888,"employeeNo":"H003251","name":"郭志泉"},{"id":9813,"employeeNo":"H003244","name":"高一凡"},{"id":9768,"employeeNo":"H002712","name":"陈慧"},{"id":9747,"employeeNo":"H001317","name":"樊琪山"},{"id":10348,"employeeNo":"H000882","name":"罗晓敏"},{"id":10004,"employeeNo":"H001597","name":"薛明卫"},{"id":13534,"employeeNo":"H003813","name":"铁托"},{"id":10165,"employeeNo":"H001958","name":"赵艳丽"},{"id":13412,"employeeNo":"H004026","name":"周茜"},{"id":10307,"employeeNo":"H002239","name":"杜承虎"},{"id":9766,"employeeNo":"T000047","name":"余莉沙"},{"id":10051,"employeeNo":"H002213","name":"陈家恒"},{"id":13224,"employeeNo":"H003576","name":"张曜宇"},{"id":13255,"employeeNo":"H003862","name":"贾璐"},{"id":10132,"employeeNo":"T030357","name":"尹蕾"},{"id":10109,"employeeNo":"H002349","name":"王帅"},{"id":9785,"employeeNo":"H001837","name":"张涛"},{"id":10547,"employeeNo":"H003140","name":"张柏维"},{"id":9937,"employeeNo":"H001764","name":"谢嘉玲"},{"id":10628,"employeeNo":"H003648","name":"谢家明"},{"id":13440,"employeeNo":"H003952","name":"李杭琪"},{"id":13288,"employeeNo":"H003458","name":"许嘉慧"},{"id":13280,"employeeNo":"H003678","name":"周勇"},{"id":11026,"employeeNo":"H003682","name":"曾碧玉"},{"id":10643,"employeeNo":"H003683","name":"方亿文"},{"id":10633,"employeeNo":"H003651","name":"郑英健"},{"id":10632,"employeeNo":"H003644","name":"黄益民"},{"id":10559,"employeeNo":"H003556","name":"刘杰"},{"id":10551,"employeeNo":"H003145","name":"周家骏"},{"id":10526,"employeeNo":"H002987","name":"詹锐"},{"id":10490,"employeeNo":"H003377","name":"吴跃纯"},{"id":10482,"employeeNo":"H003548","name":"陈建林"},{"id":10463,"employeeNo":"H003187","name":"刘郁"},{"id":10457,"employeeNo":"H002278","name":"韦婷婷"},{"id":10454,"employeeNo":"H000275","name":"陈晓婷"},{"id":10412,"employeeNo":"H000502","name":"冯荟颖"},{"id":10398,"employeeNo":"H003570","name":"门新然"},{"id":10382,"employeeNo":"H003565","name":"何智莉"},{"id":10356,"employeeNo":"H000992","name":"蔡杭"},{"id":10349,"employeeNo":"H000911","name":"孟佑洋"},{"id":10335,"employeeNo":"H003636","name":"李晶晶"},{"id":10322,"employeeNo":"H003617","name":"宋伟浩"},{"id":10289,"employeeNo":"H000644","name":"马奇泽"},{"id":10283,"employeeNo":"H003392","name":"周珊"},{"id":10268,"employeeNo":"H003549","name":"余静"},{"id":10221,"employeeNo":"H000702","name":"陈惠珠"},{"id":10214,"employeeNo":"H002961","name":"郑少涛"},{"id":10211,"employeeNo":"H000021","name":"李满园"},{"id":10203,"employeeNo":"H000013","name":"曹乐儿"},{"id":10195,"employeeNo":"H000449","name":"何东亮"},{"id":10178,"employeeNo":"H000416","name":"易定敏"},{"id":10176,"employeeNo":"H000400","name":"邱小娟"},{"id":10171,"employeeNo":"H001964","name":"洪芬"},{"id":10167,"employeeNo":"H002888","name":"李嘉发"},{"id":10157,"employeeNo":"H002978","name":"许纭郗"},{"id":10151,"employeeNo":"H002975","name":"张蝶仪"},{"id":10128,"employeeNo":"H001188","name":"蔡钊铭"},{"id":10122,"employeeNo":"H001173","name":"华超"},{"id":10118,"employeeNo":"H003280","name":"吕佳旺"},{"id":10113,"employeeNo":"H002355","name":"陈建新"},{"id":10098,"employeeNo":"H002687","name":"张煜先"},{"id":10555,"employeeNo":"H003147","name":"熊小衍"},{"id":9795,"employeeNo":"H001322","name":"林晗"},{"id":10146,"employeeNo":"H003601","name":"罗毅"},{"id":9950,"employeeNo":"H003303","name":"曾沛文"},{"id":10019,"employeeNo":"H002621","name":"王鹏"},{"id":9990,"employeeNo":"T024284","name":"庞治"},{"id":9986,"employeeNo":"H001152","name":"杨俊"},{"id":9972,"employeeNo":"H002371","name":"秦国章"},{"id":9947,"employeeNo":"H001113","name":"陈家静"},{"id":9889,"employeeNo":"H001024","name":"陈佩伟"},{"id":9884,"employeeNo":"H003250","name":"尹瑞玲"},{"id":9882,"employeeNo":"H002601","name":"罗顺"},{"id":9866,"employeeNo":"H001045","name":"迟雪峰"},{"id":9865,"employeeNo":"H002315","name":"梁皓炜"},{"id":9862,"employeeNo":"H001042","name":"程军荣"},{"id":9838,"employeeNo":"H002599","name":"段弘毅"},{"id":9823,"employeeNo":"H001314","name":"林水连"},{"id":9814,"employeeNo":"T000073","name":"谭群弟"},{"id":9799,"employeeNo":"H001445","name":"康水连"},{"id":9774,"employeeNo":"H001431","name":"陶珊珊"},{"id":9748,"employeeNo":"H001427","name":"彭珊恬"},{"id":9746,"employeeNo":"H003233","name":"范盼盼"},{"id":9735,"employeeNo":"H002688","name":"徐红宇"},{"id":9714,"employeeNo":"H001952","name":"吴颖"},{"id":9704,"employeeNo":"H001915","name":"熊文文"},{"id":9688,"employeeNo":"T000008","name":"谭川东"},{"id":9684,"employeeNo":"H002585","name":"陈昊"},{"id":9635,"employeeNo":"H000298","name":"高锦萍"},{"id":10487,"employeeNo":"H000603","name":"许秋辰"},{"id":10020,"employeeNo":"T033153","name":"何明珠"},{"id":10080,"employeeNo":"T000005","name":"钟晓云"},{"id":10055,"employeeNo":"H002216","name":"黄馨仪"},{"id":10406,"employeeNo":"H003360","name":"齐诗园"},{"id":13495,"employeeNo":"H004109","name":"罗季宸"},{"id":9977,"employeeNo":"H001105","name":"李丹敏"},{"id":10503,"employeeNo":"H002308","name":"陈明杰"},{"id":10420,"employeeNo":"H001370","name":"李伟昊"},{"id":9705,"employeeNo":"H000294","name":"吴淼微"},{"id":13265,"employeeNo":"H003676","name":"方菲洋"},{"id":10405,"employeeNo":"H000464","name":"李梅英"},{"id":10279,"employeeNo":"H003386","name":"刘剑坤"},{"id":10568,"employeeNo":"H003041","name":"唐智鸿"},{"id":10259,"employeeNo":"H003637","name":"林云珠"}]

let headers = {
    'Cookie':'gr_user_id=34e02d6c-4d1c-45c2-8fcd-da71c0a9f2d8; Hm_lvt_42372e8cea37f3ce99699d05a4e4ecfd=1732502886; Hm_lpvt_42372e8cea37f3ce99699d05a4e4ecfd=1732502886; HMACCOUNT=EE36F4D89B480DD0; bfe32f60a37bc666_gr_last_sent_cs1=system1; bfe32f60a37bc666_gr_session_id=92709b83-3868-4d1e-92ed-0e6adf3e2771; bfe32f60a37bc666_gr_last_sent_sid_with_cs1=92709b83-3868-4d1e-92ed-0e6adf3e2771; bfe32f60a37bc666_gr_session_id_sent_vst=92709b83-3868-4d1e-92ed-0e6adf3e2771; access_token=s%3AXGwiFIZcPUlytzQKsdrLnRHY2xzwN0rJHF6BQf6AOeiEqKpg14fjkLS7PNlIikj4.MLL20G9uDRWBR8eNFyXwoeAHdSL%2BVMw6MAkwsrLfI1Q; bfe32f60a37bc666_gr_cs1=system1'
};

let page = 0;


let requestDetail = async (id)=>{

    let uri  = `https://heytea.peoplus.cn/peoplusPro/api/PerformanceEvaluationPlanDetails/detailIds/${id}/snapshot/list/query`;
    let options = {
        method: 'get',
        uri: uri,
        headers: headers,
        json: true,
    };

    let result = await rp(options);
    return result;
};
let colTemplate = '';

let loop = async ()=>{
    let columns = [];
    let data = [];
    let str = ``;
    // 1: i18n.t('performance.performance_management_submit'), // 提交
    // 2: i18n.t('performance.performance_management_Return'), // 打回
    // 3: i18n.t('performance.performance_management_batch_circulation'), // 批量流转
    let operateObj = {
        1:'提交',
        2:'打回',
        3:'批量流转',
    }
    let PromiseArr = []

    // for(let i=0; i< 200;i++){
    //     console.log(i,arr[i]);
    //     PromiseArr.push(requestDetail(arr[i].id));
    // }
    // let resArr1 = await Promise.all(PromiseArr);
    // arr = arr.slice(0,200)

    for(let i=200; i< arr.length;i++){
        console.log(i,arr[i]);
        PromiseArr.push(requestDetail(arr[i].id));
    }
    let resArr1 = await Promise.all(PromiseArr);
    arr = arr.slice(200)

    // for(let i=400; i< arr.length;i++){
    //     console.log(i,arr[i]);
    //     PromiseArr.push(requestDetail(arr[i].id));
    // }
    // let resArr1 = await Promise.all(PromiseArr);
    // arr = arr.slice(400)

    // await new Promise((resolve) => setTimeout(resolve, 10000));
    // let resArr2 = await Promise.all(PromiseArr.splice(200,400));
    // await new Promise((resolve) => setTimeout(resolve, 10000));

    // let resArr3 = await Promise.all(PromiseArr.splice(400));
    let resArr = [...resArr1]
    console.log('resArr',resArr)
    resArr.forEach((v,i)=>{
        if(v && v[0]){
            data.push({
                ...v[0],
                ...arr[i]
            })
        }
    })
    console.log('data',data)
    let arr2 = []
    data.forEach(v=>{
        arr2.push({
            name: v.name,
            employeeNo: v.employeeNo,
            title:`执行人 ${v?.operatorEmployee?.employeeName || '管理员'} 在${v?.action?.name} ${operateObj[v.operatorType]}了绩效考核表 `
        })
    });
    fs.writeFileSync(path.join(__dirname, './上级评分.json'), JSON.stringify(arr2), {'flag': 'a'});

}
let script =  async ()=>{
    try {
        await loop();
    } catch (error) {
        console.log(error);
        setTimeout(()=> { process.exit(1); }, 1000);
    }
};

script();
