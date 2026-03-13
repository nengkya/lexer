'''
numpy (numerical python) array is not a Python list, but a distinct data structure called ndarray (N-dimensional array)
feature        python list                                             numpy array (ndarray)
data type      heterogeneous (can store elements of different types)   homogeneous (all elements must be of the same type)
size           dynamic (can grow or shrink in size after creation)     fixed size at creation; changing size creates a new array
memory         stores pointers to objects scattered in memory          stores elements in a single, contiguous block of memory (memory-efficient)
               less efficient for numerical tasks
performance    slower for large-scale numerical computations           much faster for mathematical and array operations due to being written in c and c++
               and vectorized operations
functionality  general purpose container with basic operations         specialized for scientific computing, offering extensive mathematical functions
               (e.g., concatenation using +)                           and linear algebra operations
'''
import os
import numpy
os.system('clear')
n_dimensional_array_data_structure=numpy.array([
    [
        [1,2],
        [3,4.3],
        [5,6],
        [8.9,7]
    ],

    [
        [0.3,9],
        [7,8],
        [6,1],
        [2,4]
    ]
    ])
'''
print(f"1. n_dimensional_array_data_structure=\
{numpy.array2string(n_dimensional_array_data_structure,prefix='1. n_dimensional_array_data_structure=')}\n")
print(f'2. n_dimensional_array_data_structure.shape={n_dimensional_array_data_structure.shape}\n')#(2,4,2)
print(f"3. n_dimensional_array_data_structure[0]=\
{numpy.array2string(n_dimensional_array_data_structure[0],prefix='3. n_dimensional_array_data_structure[0]=')}\n")
print(f'4. n_dimensional_array_data_structure[0,1]={n_dimensional_array_data_structure[0,1]}\n')
print(f'5. n_dimensional_array_data_structure[0,1,1]={n_dimensional_array_data_structure[0,1,1]}\n')
n_dimensional_array_data_structure[1]=3
print(f"6. n_dimensional_array_data_structure[1]=3->\
{numpy.array2string(n_dimensional_array_data_structure,prefix='6. n_dimensional_array_data_structure[1]=3->')}\n")
max_refix=max_line_width-len(prefix)-len(suffix)
print('7. how many x chosen in the n_dimensional_array_data_structure[:1]',
    numpy.array2string(n_dimensional_array_data_structure[0],prefix='1234567890
                                                                        1234567890
                                                                        1234567890
                                                                        1234567890
                                                                        1234567890
                                                                        1234567890
                                                                        12345'),
'''
#default printing:[1.5e-10 1.586e+00 1.5045e+02 2.855e-01]
#suppress=True   :[     0.      1.59     150.45      0.29]
numpy.set_printoptions(suppress=True)

#function call -> class.method(bar)
#fetch index   -> class.method([bar])
print(numpy.get_printoptions()['linewidth'])

'''
print(f"7. n_dimensional_array_data_structure[slice:x]\n   \
how many x chosen in the slice of n_dimensional_array_data_structure[:1]=\
{numpy.array2string(n_dimensional_array_data_structure[:1],
prefix='7. slice:x, how many x chosen in the n_dimensional_array_data_structure[:1]=',max_line_width=100)}")
'''
