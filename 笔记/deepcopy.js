
//浅拷贝
function cloneShollow(source){
    var target = {};

    for(var key in source){
        if(Object.prototype.hasOwnProperty.call(source,key)){
            target[key] = source[key];
        }

    }
    return target;
}


//浅拷贝 +  递归
function cloneDeep1(source){
    var target = {};

    for(var key in source){
        if(Object.prototype.hasOwnProperty.call(source,key)){
            if(typeof source[key] === 'object'){
                target[key] = cloneDeep1(source[key]);
            }else{
                target[key] = source[key];
            }
        }
    }
    return target;
}

//过滤  null  和  数组
function isObject(obj){
    return typeof obj === 'object' && obj !== null;
}

function cloneDeep2(source){

    if(!isObject(source)){
        return source;
    }

    var target = Array.isArray(source) ? [] : {};

    for(var key in source){
        if(Object.prototype.hasOwnProperty.call(source,key)){
            if(isObject(source[key])){
                target[key] = cloneDeep2(source[key]);
            }else{
                target[key] = source[key];
            }
        }
    }
    return target;
}



//使用hash 表过滤循环引用
function cloneDeep3(source, hash = new WeakMap()){

    if(!isObject(source)){
        return source;
    }

    if(hash.has(source)){
        return hash.get(source);
    }

    var target = Array.isArray(source) ? [] : {};
    hash.set(source, target);

    for(var key in source){
        if(Object.prototype.hasOwnProperty.call(source,key)){
            if(isObject(source[key])){
                target[key] = cloneDeep3(source[key], hash);
            }else{
                target[key] = source[key];
            }
        }
    }

    return target;
}



//拷贝Symbol类型数据
//方法1
function cloneDeep4(source, hash = new WeakMap()){

    if(!isObject(source)){
        return source;
    }

    if(hash.has(source)){
        return hash.get(source);
    }

    var target = Array.isArray(source) ? [] : {};
    hash.set(source, target);

    var symkeys = Object.getOwnPropertySymbols(source);
    if(symkeys.length){
        symkeys.map(key =>{
            if(isObject(source[key])){
                target[key] = cloneDeep4(source[key], hash);
            }else{
                target[key] = source[key];
            }
        })
    }


    for(var key in source){
        if(Object.prototype.hasOwnProperty.call(source,key)){
            if(isObject(source[key])){
                target[key] = cloneDeep1(source[key], hash);
            }else{
                target[key] = source[key];
            }
        }
    }

    return target;
}

//方法2
function cloneDeep5(source, hash = new WeakMap()){

    if(!isObject(source)){
        return source;
    }

    if(hash.has(source)){
        return hash.get(source);
    }

    var target = Array.isArray(source) ? [...source] : {...source};
    hash.set(source, target);


    Reflect.ownKeys(target).map(key=>{
        if(isObject(source[key])){
            target[key] = cloneDeep5(source[key], hash);
        }else{
            target[key] = source[key];
        }
    })


    return target;
}