//函数定义
function add1(x: number, y: number){
    return x + y;
}

//
let add2:(x: number, y: number)=>number;

//类型别名
type add3 =(x: number, y: number)=>number;

//接口
interface add4{
    (x: number, y: number):number
}

//ts 函数中的参数必须一一对应
//设置可选参数,在参数后加？， 可选参数必须位于必选参数之后
function add5(x: number, y?: number){
    return y?x +y:x;
}
//参数可设置默认值，必选参数前的默认值不可省略
function add6(x: number, y=1, z:number){
    return x + y + z;
}
add6(1,undefined, 0);

//剩余参数的写法同es6, 参数类型是number[]
function add7(x: number, ...rest: number[]){
    return x + rest.reduce((a, b) => a +b);
}

//ts 的函数重载要求先定义一系列的函数声明，然后在一个类型最宽泛的版本中实现这个重载
function add8(...rest: number[]):number;
function add8(...rest: string[]):string;
function add8(...rest: any[]){
    let first = rest[0];
    if (typeof first === 'number') {
        return rest.reduce((pre, cur) => pre + cur);
    }
    if (typeof first === 'string') {
        return rest.join('');
    }
}