'''
import _tkinter accesses a low-level, internal C-based module and should not be used directly in application code. 
_tkinter (internal module): this is a binary, C-based extension module that provides the low-level interface to the underlying tcl/tk libraries.
it exposes an embedded tcl/tk interpreter but does not provide any of the python classes (like button, label, tk, etc.)
that make gui programming straightforward.
_tkinter is a C-based module that wraps an internal tcl/tk interpreter.
when you import it, and it only, you get access to this interpreter but you do not get access to any of the python classes.
you certainly can import _tkinter, but then you would have to recreate all of the python interfaces to the tcl/tk functions.
'''
import numpy,threading,_tkinter
'''
function without parentheses refers to the function object itself,
while function() calls (executes) the function and returns its result.
function without parentheses treats the function without parentheses as a piece of data that can be: 
assigned to a variable: you can store the function in another variable, essentially creating an alias.
passed as an argument: you can pass the function object to another function (like map(), filter(), or event handlers)
so that the receiving function can execute it later.
'''
def numpy_random_random():
    print(numpy.random.random())

numpy_random_random_alias=numpy_random_random
another_numpy_random_random_alias=numpy_random_random_alias
a=another_numpy_random_random_alias
b=another_numpy_random_random_alias
a()
b()
c=b
'''
what happened: the parentheses () immediately executed the function. the function print()ed a random number.
the result: d now stores the return value of the function,
which is none (since the function doesn't have a return statement), not the function itself.
'''
d=a()
#d()

class worker(threading.Thread):
    def run(self):
        for x in range(0,1100000000000):
            print (x)
            time.sleep(1)

#waits for me to press the button before starting running the thread
def main():
    tkinter.ttk.Button(mainframe,text='Start',command=worker.start)

#starts running the thread as soon as the program is run
ttk.Button(mainframe,text='Start',command=worker().start)
my_worker=worker()
my_worker_start=my_worker.start()
ttk.Button(mainframe,text='Start',command=my_worker_start)
