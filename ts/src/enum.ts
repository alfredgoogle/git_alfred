
//枚举成员只能是数字或字符
//数字枚举可以反向映射
enum Role {
    Reporter = 1,
    Developer,
    Maintainer,
    Owner,
    Guest
}
//枚举成员的值是只读类型，不可以修改
// Role.Reporter = 2;
//数字型枚举成员的值是递增的，如果改变一个值，会重下一个值继续递增

console.log(Role.Reporter)
console.log(Role)

//字符串枚举,不可以反向映射
enum Message {
    Success="add",
    Fail="fail"
}

//字符串枚举和数字枚举混用，构成异构枚举, 数字成员可反向映射，字符成员不可以
enum Answer {
    N,
    Y="yes",
    Z=0       //字符型后的枚举成员必须赋值
}


enum Char {
    a,  //const
    b = Char.a,     //引用型
    c = 1 + 2,      //表达式
    d = Math.random(),  //计算型，编译时不计算，运行时才计算
    e = '123'.length,
    f = 2       //在计算型后面的变量必须赋值
}

// 常量枚举,在编译时会被删除
const enum Month {
    Jan,
    Feb,
    Mar
}

//常量枚举的意义在于当我们不需要一个对象，只需要一个对象的值的时候
let month = [Month.Jan, Month.Feb,  Month.Mar];


//枚举类型
enum E {a,b}    //无初始值
enum F {a=0,b=1}    //数字枚举
enum G {a='apple',b='banan'}    //字符枚举

let e: E = 3;
let f: F = 3;
//不同的枚举类型不可以相互比较
// e == f;

let e1:E.a = 1;
let e2:E.b = 2;
// e1 === e2;

//字符型枚举类型的值只能是字符枚举成员,字符枚举成员型变量的值只能是字符枚举成员本身
let g1:G = G.a;
let g2:G.b = G.b;