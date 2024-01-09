
// const obj  = {
//     tag:'div',
//     children:[]
// }

function render(obj,root){
    const ele = document.createElement(obj.tag);
    if(typeof obj.children === 'string'){
        ele.innerHtml = obj.children;
    }else if (typeof obj.children === 'array'){
        obj.children.forEach(element => {
            render(element,obj);
        });
    }
    root.appendChild(ele)
}