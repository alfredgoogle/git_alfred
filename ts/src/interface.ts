interface List {
    readonly id:number,
    name:string,
    // [x : string]:any
    age?:number     // ？ 用于代表可选属性，可以有也可以没有
}

interface Result {
    data:List[]
}

function render(result:Result){
    result.data.forEach((value)=>{
        console.log(value.id, value.name);
        if(value.age){
            console.log(value.age);
        }
        // value.id ++;        //只读属性不可以修改
    })
}

//鸭式变形法， 只要传入的参数复合接口的定义，就不会报错，可以多传值，但不可以少传
let result ={data: [
    {id:1,name:'A',sex:'male'},
    {id:2,name:'B',age:11},
]}

render(result);

//直接传入对象字面量会报错，有3种饶过方法
// render({data: [
//     {id:1,name:'A',sex:'male'},
//     {id:2,name:'B'},
// ]});

// 1.用 as 定义类型
// render({data: [
//     {id:1,name:'A',sex:'male'},
//     {id:2,name:'B'},
// ]} as Result );


// 2.用<>, 不建议，在react中会引起歧义
// render(<Result>{data: [
//     {id:1,name:'A',sex:'male'},
//     {id:2,name:'B'},
// ]});


// 3.在接口初始化的时候多定义一个类型为any的变量，字符串索引签名，用任意的字符串去索引List,这样List 就可以支持所有的属性了
// render({data: [
//     {id:1,name:'A',sex:'male'},
//     {id:2,name:'B'},
// ]});

//定义一个可以用数字索引值为字符型的接口，相当于字符型数组
interface StringArray{
    [index:number]:string
}

let chars = ['a','b','c']

//用任意的字符串去索引Names，得到的都是字符串，这样不能索引number 类型的成员
interface Names{
    [index:string]:string,
    // y:number
    [index:number]:string,  //即可以数字索引，也可以字符索引，但数字索引必须是字符索引的子类型，因为会引起强制类型转换
    // [index:number]:number,  //会报错，将字符索引的值类型改为any 即可
}