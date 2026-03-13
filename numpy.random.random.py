import numpy
'''
numpy.random.random(size=None)
<bound method RandomState.random of RandomState(MT19937) at 0x71A93A573140> Mersenne prime number Twister 2^19937-1
2^n-1 represents the maximum unsigned integer value representable with bits in binary, which is because the count includes zero

1. the mathematical orgin
mersenne prime property 2^19937-1 is a confirmed prime number.
in the mathematics of random number generation, using a mersenne prime as the period length ensures the sequence has "full period"
(it won't repeat prematurely) and possesses excellent statistical properties.
historical discovery: the primality of 2^19937-1 was discovered in 1971 by bryant tuckerman using an ibm 360/91 computer.
at the time, it was the largest known prime number. 
2. the practical origin (memory)
the researchers chose 19,937 specifically because it fits efficiently into computer memory:
bit-to-word conversion: to store a state of 19,937 bits, you need 19937/32 = 624 words of 32-bit memory.
efficiency: this size is small enough to fit into the cache of most modern cpus,
allowing the generator to be extremely fast while still providing a sequence length that is practically "infinite" for any human simulation. 

numpy.random.random() function generates random floating-point numbers in the half-open interval [0.0, 1.0],
meaning the numbers are greater than or equal to 0.0 and less than 1.0.
this function is an alias for numpy.random.random_sample() and numpy.random.ranf()
'''
print(numpy.random.random)
print(numpy.random.sample)
print(numpy.random.ranf)

'''
numpy.float64 is essentially equivalent to the built-in float type in most practical scenarios.
both are 64-bit, double-precision floating-point numbers on most systems. 
here are the key points regarding their relationship:
identical precision and memory: on the majority of modern systems (especially 64-bit architectures),
    python's float uses the same 64-bit double-precision representation as numpy.float64.
    this means they offer the same range and approximately 15-16 decimal digits of precision.
numpy alias: the general numpy float type, numpy.float_, is actually an alias for numpy.float64,
    which in turn is compatible with the standard python float object.
automatic conversion: when you use the python float object as a dtype in numpy, numpy automatically interprets it as numpy.float64.
distinction in type checking: while they represent the same data, they are technically different types in the python type system.
    isinstance(2.0, float) is true.
    isinstance(numpy.float64(2.0), numpy.float64) is true.
    isinstance(numpy.float64(2.0), float) might return true or false depending on the exact implementation details,
    but they behave interchangeably in most operations.
performance: performance differences can sometimes be observed when mixing the two types in complex operations,
    as using pure numpy operations might be more efficient than switching between the native python type and numpy's specific type. 
for most general computational purposes, they can be considered interchangeable in terms of value and precision,
but for strict type checking or highly optimized code, using one consistently might be preferable.
'''
#generate a single random float 64 bits (double deprecated)
numpy_random_random=numpy.random.random()
print(numpy_random_random)

#generate a 1 dimensional array data structure of 5 random floats 64 bits

n_dimensional_array_data_structure=numpy.random.random((3,3))
