function Node(element){
    this.element = element;
    this.next = null;
}

function LinkList(){
    this.head = new Node('head');
}

LinkList.prototype = {
    find: function(item) {
        let currentNode = this.head;
        while (currentNode.element !== item){
            currentNode = currentNode.next;
        }
        return currentNode;
    },
    insert: function(newItem, item) {
        let newNode = new Node(newItem);
        let currentNode = this.find(item);
        newNode.next = currentNode.next;
        currentNode.next= newNode;
    },
    display: function() {
        let currentNode = this.head;
        while(currentNode.next){
            console.log(currentNode.next.element);
            currentNode = currentNode.next;
        }
    },
    findPre:function(item) {
        let currentNode = this.head;
        while(currentNode.next !== null && currentNode.next.element !== item){
            currentNode = currentNode.next;
        }
        return currentNode;
    },
    remove: function(item) {
        let prevNode = this.findPre(item);
        if(prevNode){
            prevNode.next = prevNode.next.next;
        }
    },
    reverse: function() {
        let head = this.head;
        let currentNode =  null;
        let headNode =  this.head;
        while(head.next){
            currentNode = head.next;
            head.next = currentNode.next;
            currentNode.next = headNode;
            headNode = currentNode;
        }
    }
}
