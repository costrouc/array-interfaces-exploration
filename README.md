# Array Interfaces Exploration

Personal exploration meant reflect my understanding of the
problem. Want to discover the different array interfaces that exist in
order to determine what would be needed of an array interface that
would act as a glue between the wide variaty of the current array
frameworks out there.

# Libraries

Clasifications:

(D)ense array, (S)parse array, (R)agged array, (L)azy evalulation

 - D [numpy](https://github.com/numpy/numpy) 
 - DS [scipy](https://github.com/scipy/scipy)
 - S [sparse](https://github.com/pydata/sparse)
 - DL [tensorflow](https://github.com/tensorflow/tensorflow)
 - DL [pytorch](https://github.com/pytorch/pytorch)
 - DS [gumath](https://github.com/plures/gumath)
 - D [pillow](https://github.com/python-pillow/Pillow)

Not included?
 - [pandas](https://github.com/pandas-dev/pandas)

# Questions?

 - [ ] is pandas an array interface? It doesn't have uniform types.
 - [ ] array interface consists of uniform type dense, sparse, and ragged arrays?
 - [ ] shape + indexing function enough? 
 - [ ] how would one call column major -> sparse csr -> row major -> sparse block? 

# Concepts

 - shape: **assumption** any given array has a known shape when materialized
 - indexing: **assumption** any given array has a known indexing function (elaborate)
 - array storage:
   - dense array
   - sparse array
