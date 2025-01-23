
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


 const vnode = {
       tag: 'div',
       props: {
         onClick: () => alert('hello')
       },
       children: 'click me'
     }

 function renderer(vnode, container) {
    // 使用 vnode.tag 作为标签名称创建 DOM 元素
    const el = document.createElement(vnode.tag)
    // 遍历 vnode.props，将属性、事件添加到 DOM 元素
    for (const key in vnode.props) {
        if (/^on/.test(key)) {
        // 如果 key 以 on 开头，说明它是事件
        el.addEventListener(
            key.substr(2).toLowerCase(), // 事件名称 onClick ---> click
            vnode.props[key] // 事件处理函数
        )
        }
    }

    // 处理 children
    if (typeof vnode.children === 'string') {
        // 如果 children 是字符串，说明它是元素的文本子节点
        el.appendChild(document.createTextNode(vnode.children))
    } else if (Array.isArray(vnode.children)) {
        // 递归地调用 renderer 函数渲染子节点，使用当前元素 el 作为挂载点
        vnode.children.forEach(child => renderer(child, el))
    }

    // 将元素添加到挂载点下
    container.appendChild(el)
}
 function mountComponent(vnode, container) {
    // vnode.tag 是组件对象，调用它的 render 函数得到组件要渲染的内容（虚拟 DOM）
    const subtree = vnode.tag.render()
    // 递归地调用 renderer 渲染 subtree
    renderer(subtree, container)
}

 function mountElement(vnode, container) {
    // 使用 vnode.tag 作为标签名称创建 DOM 元素
    const el = document.createElement(vnode.tag)
    // 遍历 vnode.props，将属性、事件添加到 DOM 元素
    for (const key in vnode.props) {
        if (/^on/.test(key)) {
        // 如果 key 以字符串 on 开头，说明它是事件
        el.addEventListener(
            key.substr(2).toLowerCase(), // 事件名称 onClick ---> click
            vnode.props[key] // 事件处理函数
        )
        }
    }

    // 处理 children
    if (typeof vnode.children === 'string') {
        // 如果 children 是字符串，说明它是元素的文本子节点
        el.appendChild(document.createTextNode(vnode.children))
    } else if (Array.isArray(vnode.children)) {
        // 递归地调用 renderer 函数渲染子节点，使用当前元素 el 作为挂载点
        vnode.children.forEach(child => renderer(child, el))
    }

    // 将元素添加到挂载点下
    container.appendChild(el)
}

