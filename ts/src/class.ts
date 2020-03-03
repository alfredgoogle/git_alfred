//抽象类，只能被继承，不能被实例化
abstract class Animal{
    constructor(){

    }
    eat(){
        console.log('eat');
    }

    //抽象方法不指定方法的具体实现，用于继承时覆用。抽象方法的好处是明确子类有其他的实现，没必要在父类中实现
    abstract sleep():void
}
//抽象类不能被实例化
// let animal = new Animal();

class Dog extends Animal{
    //可以把构造函数添加private 属性，表示该类既不能被实例化，也不能被继承
    //构造函数也可定义为 protected 属性，表示只可被继承，不能被实例化， 相当于一个基类
    //可以在构造函数中给参数添加public 修饰符，定义为实例属性，这样就不需要单独初始化实例成员了
    constructor(public name:string){
        super();
        this.name = name;
    }

    //实例成员需要初始化
    // name:string;

    run(){
        console.log('run')
    }

    //对抽象方法的实现，在父类中定义的抽象方法必须在子类中实现
    sleep() {
        console.log('dog sleep')
    }

    //私有成员，子类和实例都不可以调用
    private pri(){}

    //受保护成员，只有类和子类可以调用,不可实例化
    protected pro(){}

    //只读成员，需要初始化，不可修改
    readonly legs: number = 3;

    // 类的静态成员，只能通过类名和子类的类名来调用，不能通过实例调用
    static food:string = 'bones';
}
console.log(Dog.prototype)
console.log(Dog.food)

var dog =new Dog( "wangwang");
dog.run()
dog.eat()
// dog.pri();
// dog.pro();
// dog.food

class Hasky extends Dog{
    constructor(name: string, public color: string){
        super(name);
        //this 需要在super 调用后才能调用
        this.color = color;
        this.pro();
    }

    // color:string;

}
console.log(Hasky.food)

//抽象类和抽象函数实现类的多态
class Cat extends Animal {
    sleep() {
        console.log('cat sleep')
    }
}

let cat = new Cat();

let animals:Animal[] = [dog,cat]
animals.forEach(i =>{
    i.sleep()
})

//类的链式调用
class Workflow{
    step1(){
        return this;
    }
    step2(){
        return this;
    }
}

class MyFlow extends Workflow {
    next(){
        return this;
    }
}
new MyFlow().next().step1().step2();


@testable
class MyTestableClass {
  // ...
}

function testable(target:any) {
  target.isTestable = true;
}

console.log('MyTestableClass.isTestable',(MyTestableClass as any).isTestable)