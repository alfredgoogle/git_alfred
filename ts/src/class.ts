class Dog{
    //构造函数也可定义为 protected 属性，表示只可被继承，不能被实例化， 相当于一个基类
    //可以在构造函数中给参数添加public 修饰符，定义为实例属性，这样就不需要单独初始化实例成员了
    constructor(public name:string){
        this.name = name;
    }

    //实例成员需要初始化
    // name:string;

    run(){}

    //私有成员，子类和实例都不可以调用
    private pri(){}

    //受保护成员，只有类和子类可以调用,不可实例化
    protected pro(){}

    //只读成员，需要初始化，不可修改
    readonly legs: number = 3;

    // 类的静态成员，只能通过类来调用和继承，不能被实例调用
    static food = 'bones';
}
var dog =new Dog( "wangwang");
// dog.pri();
// dog.pro();
// dog.food 

class Hasky extends Dog{
    constructor(name: string, color: string){
        super(name);
        this.color = color;
        this.pro();
    }

    color:string;

}