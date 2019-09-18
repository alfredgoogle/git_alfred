from enum import Enum,unique

Month = Enum('Month',('Jan','Feb','Mar','Apr','May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'))

@unique
class Weekday(Enum):
    sun = 0
    Mon = 1
    Tue = 2
    Wed = 3
    Thu = 4
    Fri = 5
    Sat = 6

class Gender(Enum):
    Male = 0
    Female = 1

class Fib(object):
    def __init__(self):
        self.a, self.b = 0,1
    def __iter__(self):
        return self
    def __next__(self):
        self.a, self.b = self.b, self.a + self.b
        if self.a > 100000:
            raise StopIteration()
        return self.a

    def __getitem__(self,n):
        if isinstance(n, int):
            a,b = 1,1
            for x in range(n):
                a,b = b, a+b
            return a
        if isinstance(n, slice):
            start = n.start
            stop =  n.stop
            if start is None:
                start = 0
            a,b = 1,1
            L = []
            for x in range(stop):
                if x > start:
                    L.append(a)
                a,b = b, a + b
            return L



class Student(object):
    def __init__(self,name,gender):
        self.name = name
        self.gender = gender
    def __getattr__(self,attr):
        if attr == 'score':
            return 99
    def __call__(self):
        print('My name is %s' % self.name)


class Chain(object):
    def __init__(self,path=''):
        self._path = path
    
    def __getattr__(self, path):
        return Chain('%s/%s' % (self._path, path) )

    def __call__(self,name):
        return Chain('%s/%s' % (self._path, name))

    def __str__(self):
        return self._path

    __repr__ = __str__