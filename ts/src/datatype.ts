let bool:boolean = true;
let num:number | null = 123;
let str:string = 'abc';

//数组
let arr1:number[] = [12,3,4];
let arr2:Array<number | string> =  [1,2,3,'sd'];  //泛型接口

//元祖,限制元素的类型和个数
//元祖乐意通过push 方法添加新元素，但不能越界访问
let tupple:[number,string] = [0,'s'];
// tupple.push(2);
// console.log(tupple);
// console.log(tupple[2])

//函数
//函数返回值类型有自动推断功能，当不指定的时候，会自己推定返回类型
let add = (x:number,y:number)=>x+y
let compute : (x:number, y:number) => number;
compute = (a,b)=> a + b;

//对象
//如果未定义对象属性类型，会提示报错
let obj:{x:number,y:number} = {
    x:1,
    y:2
}
obj.x = 3; 

// symbol
let s2:symbol = Symbol()

//undefined， null
let un:undefined = undefined;
let nu:null = null;

num = null;


//void 
//没有任何返回值
let noReturn = ()=>{}

//any
let x ;
x = 1;
x = [];
x=()=>{};

//never
//抛出error 或 死循环
let error = () =>{
    throw new Error('error');
}

let endless = () =>{
    while(true){}
}