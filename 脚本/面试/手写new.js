// new 运算符创建一个用户定义的对象类型的实例或具有构造函数的内置对象的实例。new 关键字会进行如下的操作：

//  1. 创建一个空的javascript对象就比如（即{}）；
//  2. 链接该对象（即设置该对象的构造函数）到另一个对象;
//  3. 将步骤1新创建的对象作为this的上下文；
//  4. 如果该函数有没有返回对象，没有则返回this；

function _new(constructor, ...args){
     // 创建一个空的对象
    let resultObj = {};
    resultObj.__proto__ = constructor.prototype;
       // 然后实现步骤3，将新创建的对象作为this的上下文
    let result = constructor.call(resultObj,...args);
    // 实现步骤4：如果该函数没有返回对象（即result不是一个对象），则返回this（即resultObj)
    return typeof result == 'object' ? result : resultObj;
}