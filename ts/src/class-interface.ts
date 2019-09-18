//用接口定义类，接口中的所有成员都要在类中实现
//接口只能约束类的公有成员
//接口不能约束类的构造函数
interface Human{
    name:string;
    eat():void;
}

//类继承接口使用关键字 implements
class Asian implements Human {
    constructor( name: string){
        this.name = name;
    }
    name: string;
    
    eat(){

    }

    sleep(){

    }
}

// 接口和接口之间可以相互继承,接口的实例需要实现所有接口的成员
interface Man extends Human{
    run():void
}
interface Child{
    cry():void
}
interface Boy extends Man,Child {

}
let boy:Boy = {
    name:'',
    cry(){},
    run(){},
    eat(){},
}

//接口也可以继承类，会将类中的成员抽离出来，包括公有成员，私有成员和受保护成员