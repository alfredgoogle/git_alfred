
const bucket = new WeakMap();

const data = {text:'hello world'};

let activeEffect;


function effect(fn){
    let effectFn = ()=>{
        activeEffect = effectFn;
        fn();
    }
    effectFn.deps = [];
    effectFn();
}


function track(target,key){
    if(activeEffect){
        // bucket.add(activeEffect);
        let depsMap = bucket.get(target);
        if(!depsMap){
            bucket.set(target, depsMap = new Map());
        }

        let deps = depsMap.get(key);
        if(!deps){
            depsMap.set(key, deps = new Set());
        }
        deps.add(activeEffect);
        
    }
}

function trigger(target,key){
    let depsMap = bucket.get(target);
    if(depsMap){
        let deps = depsMap.get(key);
        if(deps){
            deps.forEach(fn=>fn())
        }
    }
}




const obj = new Proxy(data,{
    get(target,key){
        track(target,key)
        return target[key];
    },
    set(target,key,newValue){
        target[key] = newValue;
        trigger(target,key);
        return true;
    }
})

effect(()=>{
    console.log('effect run');
    document.body.innerHtml = obj.text;
})
