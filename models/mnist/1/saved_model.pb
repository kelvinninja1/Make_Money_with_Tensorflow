∙А
в*Е*
9
Add
x"T
y"T
z"T"
Ttype:
2	
S
AddN
inputs"T*N
sum"T"
Nint(0"
Ttype:
2	АР
l
ArgMax

input"T
	dimension"Tidx

output	"
Ttype:
2	"
Tidxtype0:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
{
BiasAddGrad
out_backprop"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
╔
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
я
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
ю
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
A
Equal
x"T
y"T
z
"
Ttype:
2	
Р
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
<
	LessEqual
x"T
y"T
z
"
Ttype:
2		
+
Log
x"T
y"T"
Ttype:	
2


LogicalNot
x

y

o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
╛
MaxPool

input"T
output"T"
Ttype0:
2"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
ф
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	Р
К
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
:
Minimum
x"T
y"T
z"T"
Ttype:	
2	Р
<
Mul
x"T
y"T
z"T"
Ttype:
2	Р
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
D
NotEqual
x"T
y"T
z
"
Ttype:
2	
Р
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
К
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
4

Reciprocal
x"T
y"T"
Ttype:
	2	
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
8
Softmax
logits"T
softmax"T"
Ttype:
2
,
Sqrt
x"T
y"T"
Ttype:	
2
0
Square
x"T
y"T"
Ttype:
	2	
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
Й
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"serve*1.1.02
b'unknown'я╝
h
conv2d_1_inputPlaceholder*
dtype0*
shape: */
_output_shapes
:         
v
conv2d_1/random_uniform/shapeConst*
dtype0*%
valueB"             *
_output_shapes
:
`
conv2d_1/random_uniform/minConst*
dtype0*
valueB
 *ЗЛ╛*
_output_shapes
: 
`
conv2d_1/random_uniform/maxConst*
dtype0*
valueB
 *ЗЛ>*
_output_shapes
: 
▓
%conv2d_1/random_uniform/RandomUniformRandomUniformconv2d_1/random_uniform/shape*
seed▒ х)*
dtype0*
seed2ЦХ╝*
T0*&
_output_shapes
: 
}
conv2d_1/random_uniform/subSubconv2d_1/random_uniform/maxconv2d_1/random_uniform/min*
T0*
_output_shapes
: 
Ч
conv2d_1/random_uniform/mulMul%conv2d_1/random_uniform/RandomUniformconv2d_1/random_uniform/sub*
T0*&
_output_shapes
: 
Й
conv2d_1/random_uniformAddconv2d_1/random_uniform/mulconv2d_1/random_uniform/min*
T0*&
_output_shapes
: 
У
conv2d_1/kernel
VariableV2*
dtype0*
	container *
shape: *
shared_name *&
_output_shapes
: 
╚
conv2d_1/kernel/AssignAssignconv2d_1/kernelconv2d_1/random_uniform*"
_class
loc:@conv2d_1/kernel*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: 
Ж
conv2d_1/kernel/readIdentityconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: 
[
conv2d_1/ConstConst*
dtype0*
valueB *    *
_output_shapes
: 
y
conv2d_1/bias
VariableV2*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
н
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/Const* 
_class
loc:@conv2d_1/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
t
conv2d_1/bias/readIdentityconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
T0*
_output_shapes
: 
s
conv2d_1/convolution/ShapeConst*
dtype0*%
valueB"             *
_output_shapes
:
s
"conv2d_1/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
╓
conv2d_1/convolutionConv2Dconv2d_1_inputconv2d_1/kernel/read*
strides
*
use_cudnn_on_gpu(*
data_formatNHWC*/
_output_shapes
:          *
T0*
paddingVALID
Ц
conv2d_1/BiasAddBiasAddconv2d_1/convolutionconv2d_1/bias/read*/
_output_shapes
:          *
T0*
data_formatNHWC
a
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*/
_output_shapes
:          
v
conv2d_2/random_uniform/shapeConst*
dtype0*%
valueB"          @   *
_output_shapes
:
`
conv2d_2/random_uniform/minConst*
dtype0*
valueB
 *лкк╜*
_output_shapes
: 
`
conv2d_2/random_uniform/maxConst*
dtype0*
valueB
 *лкк=*
_output_shapes
: 
▓
%conv2d_2/random_uniform/RandomUniformRandomUniformconv2d_2/random_uniform/shape*
seed▒ х)*
dtype0*
seed2╙ЫЮ*
T0*&
_output_shapes
: @
}
conv2d_2/random_uniform/subSubconv2d_2/random_uniform/maxconv2d_2/random_uniform/min*
T0*
_output_shapes
: 
Ч
conv2d_2/random_uniform/mulMul%conv2d_2/random_uniform/RandomUniformconv2d_2/random_uniform/sub*
T0*&
_output_shapes
: @
Й
conv2d_2/random_uniformAddconv2d_2/random_uniform/mulconv2d_2/random_uniform/min*
T0*&
_output_shapes
: @
У
conv2d_2/kernel
VariableV2*
dtype0*
	container *
shape: @*
shared_name *&
_output_shapes
: @
╚
conv2d_2/kernel/AssignAssignconv2d_2/kernelconv2d_2/random_uniform*"
_class
loc:@conv2d_2/kernel*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: @
Ж
conv2d_2/kernel/readIdentityconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
T0*&
_output_shapes
: @
[
conv2d_2/ConstConst*
dtype0*
valueB@*    *
_output_shapes
:@
y
conv2d_2/bias
VariableV2*
dtype0*
	container *
shape:@*
shared_name *
_output_shapes
:@
н
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/Const* 
_class
loc:@conv2d_2/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes
:@
t
conv2d_2/bias/readIdentityconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
T0*
_output_shapes
:@
s
conv2d_2/convolution/ShapeConst*
dtype0*%
valueB"          @   *
_output_shapes
:
s
"conv2d_2/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
╒
conv2d_2/convolutionConv2Dconv2d_1/Reluconv2d_2/kernel/read*
strides
*
use_cudnn_on_gpu(*
data_formatNHWC*/
_output_shapes
:         @*
T0*
paddingVALID
Ц
conv2d_2/BiasAddBiasAddconv2d_2/convolutionconv2d_2/bias/read*/
_output_shapes
:         @*
T0*
data_formatNHWC
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:         @
╛
max_pooling2d_1/MaxPoolMaxPoolconv2d_2/Relu*
paddingVALID*
strides
*
data_formatNHWC*
ksize
*/
_output_shapes
:         @*
T0
q
dropout_1/IdentityIdentitymax_pooling2d_1/MaxPool*
T0*/
_output_shapes
:         @
a
flatten_1/ShapeShapedropout_1/Identity*
_output_shapes
:*
T0*
out_type0
g
flatten_1/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
i
flatten_1/strided_slice/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
i
flatten_1/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
п
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*

begin_mask *
new_axis_mask *
_output_shapes
:*
Index0*
ellipsis_mask *
end_mask*
shrink_axis_mask *
T0
Y
flatten_1/ConstConst*
dtype0*
valueB: *
_output_shapes
:
~
flatten_1/ProdProdflatten_1/strided_sliceflatten_1/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
\
flatten_1/stack/0Const*
dtype0*
valueB :
         *
_output_shapes
: 
t
flatten_1/stackPackflatten_1/stack/0flatten_1/Prod*

axis *
_output_shapes
:*
T0*
N
К
flatten_1/ReshapeReshapedropout_1/Identityflatten_1/stack*
Tshape0*
T0*0
_output_shapes
:                  
m
dense_1/random_uniform/shapeConst*
dtype0*
valueB" $  А   *
_output_shapes
:
_
dense_1/random_uniform/minConst*
dtype0*
valueB
 *&Ц╧╝*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
dtype0*
valueB
 *&Ц╧<*
_output_shapes
: 
й
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
seed▒ х)*
dtype0*
seed2ЄБ%*
T0* 
_output_shapes
:
АHА
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 
О
dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0* 
_output_shapes
:
АHА
А
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0* 
_output_shapes
:
АHА
Ж
dense_1/kernel
VariableV2*
dtype0*
	container *
shape:
АHА*
shared_name * 
_output_shapes
:
АHА
╛
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*!
_class
loc:@dense_1/kernel*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:
АHА
}
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:
АHА
\
dense_1/ConstConst*
dtype0*
valueBА*    *
_output_shapes	
:А
z
dense_1/bias
VariableV2*
dtype0*
	container *
shape:А*
shared_name *
_output_shapes	
:А
к
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
_class
loc:@dense_1/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:А
r
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
T0*
_output_shapes	
:А
Щ
dense_1/MatMulMatMulflatten_1/Reshapedense_1/kernel/read*(
_output_shapes
:         А*
transpose_a( *
T0*
transpose_b( 
З
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*(
_output_shapes
:         А*
T0*
data_formatNHWC
X
dense_1/ReluReludense_1/BiasAdd*
T0*(
_output_shapes
:         А
_
dropout_2/IdentityIdentitydense_1/Relu*
T0*(
_output_shapes
:         А
m
dense_2/random_uniform/shapeConst*
dtype0*
valueB"А   
   *
_output_shapes
:
_
dense_2/random_uniform/minConst*
dtype0*
valueB
 *═ДU╛*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
dtype0*
valueB
 *═ДU>*
_output_shapes
: 
й
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
seed▒ х)*
dtype0*
seed2ПЄ▐*
T0*
_output_shapes
:	А

z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 
Н
dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
T0*
_output_shapes
:	А


dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes
:	А

Д
dense_2/kernel
VariableV2*
dtype0*
	container *
shape:	А
*
shared_name *
_output_shapes
:	А

╜
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*!
_class
loc:@dense_2/kernel*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	А

|
dense_2/kernel/readIdentitydense_2/kernel*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes
:	А

Z
dense_2/ConstConst*
dtype0*
valueB
*    *
_output_shapes
:

x
dense_2/bias
VariableV2*
dtype0*
	container *
shape:
*
shared_name *
_output_shapes
:

й
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
_class
loc:@dense_2/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes
:

q
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
T0*
_output_shapes
:

Щ
dense_2/MatMulMatMuldropout_2/Identitydense_2/kernel/read*'
_output_shapes
:         
*
transpose_a( *
T0*
transpose_b( 
Ж
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*'
_output_shapes
:         
*
T0*
data_formatNHWC
]
dense_2/SoftmaxSoftmaxdense_2/BiasAdd*
T0*'
_output_shapes
:         

l
PlaceholderPlaceholder*
dtype0*
shape: *&
_output_shapes
: 
м
AssignAssignconv2d_1/kernelPlaceholder*"
_class
loc:@conv2d_1/kernel*
validate_shape(*
use_locking( *
T0*&
_output_shapes
: 
V
Placeholder_1Placeholder*
dtype0*
shape: *
_output_shapes
: 
а
Assign_1Assignconv2d_1/biasPlaceholder_1* 
_class
loc:@conv2d_1/bias*
validate_shape(*
use_locking( *
T0*
_output_shapes
: 
n
Placeholder_2Placeholder*
dtype0*
shape: @*&
_output_shapes
: @
░
Assign_2Assignconv2d_2/kernelPlaceholder_2*"
_class
loc:@conv2d_2/kernel*
validate_shape(*
use_locking( *
T0*&
_output_shapes
: @
V
Placeholder_3Placeholder*
dtype0*
shape:@*
_output_shapes
:@
а
Assign_3Assignconv2d_2/biasPlaceholder_3* 
_class
loc:@conv2d_2/bias*
validate_shape(*
use_locking( *
T0*
_output_shapes
:@
b
Placeholder_4Placeholder*
dtype0*
shape:
АHА* 
_output_shapes
:
АHА
и
Assign_4Assigndense_1/kernelPlaceholder_4*!
_class
loc:@dense_1/kernel*
validate_shape(*
use_locking( *
T0* 
_output_shapes
:
АHА
X
Placeholder_5Placeholder*
dtype0*
shape:А*
_output_shapes	
:А
Я
Assign_5Assigndense_1/biasPlaceholder_5*
_class
loc:@dense_1/bias*
validate_shape(*
use_locking( *
T0*
_output_shapes	
:А
`
Placeholder_6Placeholder*
dtype0*
shape:	А
*
_output_shapes
:	А

з
Assign_6Assigndense_2/kernelPlaceholder_6*!
_class
loc:@dense_2/kernel*
validate_shape(*
use_locking( *
T0*
_output_shapes
:	А

V
Placeholder_7Placeholder*
dtype0*
shape:
*
_output_shapes
:

Ю
Assign_7Assigndense_2/biasPlaceholder_7*
_class
loc:@dense_2/bias*
validate_shape(*
use_locking( *
T0*
_output_shapes
:

╚
initNoOp^conv2d_1/kernel/Assign^conv2d_1/bias/Assign^conv2d_2/kernel/Assign^conv2d_2/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign^dense_2/kernel/Assign^dense_2/bias/Assign
U
lr/initial_valueConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
f
lr
VariableV2*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
К
	lr/AssignAssignlrlr/initial_value*
_class
	loc:@lr*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
O
lr/readIdentitylr*
_class
	loc:@lr*
T0*
_output_shapes
: 
X
decay/initial_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
i
decay
VariableV2*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
Ц
decay/AssignAssigndecaydecay/initial_value*
_class

loc:@decay*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
X

decay/readIdentitydecay*
_class

loc:@decay*
T0*
_output_shapes
: 
]
iterations/initial_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
n

iterations
VariableV2*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
к
iterations/AssignAssign
iterationsiterations/initial_value*
_class
loc:@iterations*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
g
iterations/readIdentity
iterations*
_class
loc:@iterations*
T0*
_output_shapes
: 
d
dense_2_sample_weightsPlaceholder*
dtype0*
shape: *#
_output_shapes
:         
i
dense_2_targetPlaceholder*
dtype0*
shape: *0
_output_shapes
:                  
W
Sum/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 
Б
SumSumdense_2/SoftmaxSum/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:         
Z
truedivRealDivdense_2/SoftmaxSum*
T0*'
_output_shapes
:         

J
ConstConst*
dtype0*
valueB
 *Х┐╓3*
_output_shapes
: 
J
sub/xConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
9
subSubsub/xConst*
T0*
_output_shapes
: 
`
clip_by_value/MinimumMinimumtruedivsub*
T0*'
_output_shapes
:         

h
clip_by_valueMaximumclip_by_value/MinimumConst*
T0*'
_output_shapes
:         

K
LogLogclip_by_value*
T0*'
_output_shapes
:         

Q
mulMuldense_2_targetLog*
T0*'
_output_shapes
:         

Y
Sum_1/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 
u
Sum_1SummulSum_1/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:         
?
NegNegSum_1*
T0*#
_output_shapes
:         
Y
Mean/reduction_indicesConst*
dtype0*
valueB *
_output_shapes
: 
t
MeanMeanNegMean/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:         
X
mul_1MulMeandense_2_sample_weights*
T0*#
_output_shapes
:         
O

NotEqual/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
f
NotEqualNotEqualdense_2_sample_weights
NotEqual/y*
T0*#
_output_shapes
:         
S
CastCastNotEqual*

SrcT0
*

DstT0*#
_output_shapes
:         
Q
Const_1Const*
dtype0*
valueB: *
_output_shapes
:
[
Mean_1MeanCastConst_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
Q
	truediv_1RealDivmul_1Mean_1*
T0*#
_output_shapes
:         
Q
Const_2Const*
dtype0*
valueB: *
_output_shapes
:
`
Mean_2Mean	truediv_1Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
L
mul_2/xConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
>
mul_2Mulmul_2/xMean_2*
T0*
_output_shapes
: 
R
ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
l
ArgMaxArgMaxdense_2_targetArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:         
T
ArgMax_1/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
q
ArgMax_1ArgMaxdense_2/SoftmaxArgMax_1/dimension*

Tidx0*
T0*#
_output_shapes
:         
N
EqualEqualArgMaxArgMax_1*
T0	*#
_output_shapes
:         
R
Cast_1CastEqual*

SrcT0
*

DstT0*#
_output_shapes
:         
Q
Const_3Const*
dtype0*
valueB: *
_output_shapes
:
]
Mean_3MeanCast_1Const_3*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
l
gradients/ShapeConst*
_class

loc:@mul_2*
dtype0*
valueB *
_output_shapes
: 
n
gradients/ConstConst*
_class

loc:@mul_2*
dtype0*
valueB
 *  А?*
_output_shapes
: 
s
gradients/FillFillgradients/Shapegradients/Const*
_class

loc:@mul_2*
T0*
_output_shapes
: 
w
gradients/mul_2_grad/ShapeConst*
_class

loc:@mul_2*
dtype0*
valueB *
_output_shapes
: 
y
gradients/mul_2_grad/Shape_1Const*
_class

loc:@mul_2*
dtype0*
valueB *
_output_shapes
: 
╘
*gradients/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_2_grad/Shapegradients/mul_2_grad/Shape_1*
_class

loc:@mul_2*
T0*2
_output_shapes 
:         :         
r
gradients/mul_2_grad/mulMulgradients/FillMean_2*
_class

loc:@mul_2*
T0*
_output_shapes
: 
┐
gradients/mul_2_grad/SumSumgradients/mul_2_grad/mul*gradients/mul_2_grad/BroadcastGradientArgs*
_class

loc:@mul_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ж
gradients/mul_2_grad/ReshapeReshapegradients/mul_2_grad/Sumgradients/mul_2_grad/Shape*
_class

loc:@mul_2*
Tshape0*
T0*
_output_shapes
: 
u
gradients/mul_2_grad/mul_1Mulmul_2/xgradients/Fill*
_class

loc:@mul_2*
T0*
_output_shapes
: 
┼
gradients/mul_2_grad/Sum_1Sumgradients/mul_2_grad/mul_1,gradients/mul_2_grad/BroadcastGradientArgs:1*
_class

loc:@mul_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
м
gradients/mul_2_grad/Reshape_1Reshapegradients/mul_2_grad/Sum_1gradients/mul_2_grad/Shape_1*
_class

loc:@mul_2*
Tshape0*
T0*
_output_shapes
: 
И
#gradients/Mean_2_grad/Reshape/shapeConst*
_class
loc:@Mean_2*
dtype0*
valueB:*
_output_shapes
:
╗
gradients/Mean_2_grad/ReshapeReshapegradients/mul_2_grad/Reshape_1#gradients/Mean_2_grad/Reshape/shape*
_class
loc:@Mean_2*
Tshape0*
T0*
_output_shapes
:

gradients/Mean_2_grad/ShapeShape	truediv_1*
_class
loc:@Mean_2*
_output_shapes
:*
T0*
out_type0
╣
gradients/Mean_2_grad/TileTilegradients/Mean_2_grad/Reshapegradients/Mean_2_grad/Shape*
_class
loc:@Mean_2*

Tmultiples0*
T0*#
_output_shapes
:         
Б
gradients/Mean_2_grad/Shape_1Shape	truediv_1*
_class
loc:@Mean_2*
_output_shapes
:*
T0*
out_type0
{
gradients/Mean_2_grad/Shape_2Const*
_class
loc:@Mean_2*
dtype0*
valueB *
_output_shapes
: 
А
gradients/Mean_2_grad/ConstConst*
_class
loc:@Mean_2*
dtype0*
valueB: *
_output_shapes
:
╖
gradients/Mean_2_grad/ProdProdgradients/Mean_2_grad/Shape_1gradients/Mean_2_grad/Const*
_class
loc:@Mean_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
В
gradients/Mean_2_grad/Const_1Const*
_class
loc:@Mean_2*
dtype0*
valueB: *
_output_shapes
:
╗
gradients/Mean_2_grad/Prod_1Prodgradients/Mean_2_grad/Shape_2gradients/Mean_2_grad/Const_1*
_class
loc:@Mean_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
|
gradients/Mean_2_grad/Maximum/yConst*
_class
loc:@Mean_2*
dtype0*
value	B :*
_output_shapes
: 
г
gradients/Mean_2_grad/MaximumMaximumgradients/Mean_2_grad/Prod_1gradients/Mean_2_grad/Maximum/y*
_class
loc:@Mean_2*
T0*
_output_shapes
: 
б
gradients/Mean_2_grad/floordivFloorDivgradients/Mean_2_grad/Prodgradients/Mean_2_grad/Maximum*
_class
loc:@Mean_2*
T0*
_output_shapes
: 
Н
gradients/Mean_2_grad/CastCastgradients/Mean_2_grad/floordiv*
_class
loc:@Mean_2*

SrcT0*

DstT0*
_output_shapes
: 
й
gradients/Mean_2_grad/truedivRealDivgradients/Mean_2_grad/Tilegradients/Mean_2_grad/Cast*
_class
loc:@Mean_2*
T0*#
_output_shapes
:         
Б
gradients/truediv_1_grad/ShapeShapemul_1*
_class
loc:@truediv_1*
_output_shapes
:*
T0*
out_type0
Б
 gradients/truediv_1_grad/Shape_1Const*
_class
loc:@truediv_1*
dtype0*
valueB *
_output_shapes
: 
ф
.gradients/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_1_grad/Shape gradients/truediv_1_grad/Shape_1*
_class
loc:@truediv_1*
T0*2
_output_shapes 
:         :         
Ю
 gradients/truediv_1_grad/RealDivRealDivgradients/Mean_2_grad/truedivMean_1*
_class
loc:@truediv_1*
T0*#
_output_shapes
:         
╙
gradients/truediv_1_grad/SumSum gradients/truediv_1_grad/RealDiv.gradients/truediv_1_grad/BroadcastGradientArgs*
_class
loc:@truediv_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
├
 gradients/truediv_1_grad/ReshapeReshapegradients/truediv_1_grad/Sumgradients/truediv_1_grad/Shape*
_class
loc:@truediv_1*
Tshape0*
T0*#
_output_shapes
:         
v
gradients/truediv_1_grad/NegNegmul_1*
_class
loc:@truediv_1*
T0*#
_output_shapes
:         
Я
"gradients/truediv_1_grad/RealDiv_1RealDivgradients/truediv_1_grad/NegMean_1*
_class
loc:@truediv_1*
T0*#
_output_shapes
:         
е
"gradients/truediv_1_grad/RealDiv_2RealDiv"gradients/truediv_1_grad/RealDiv_1Mean_1*
_class
loc:@truediv_1*
T0*#
_output_shapes
:         
▓
gradients/truediv_1_grad/mulMulgradients/Mean_2_grad/truediv"gradients/truediv_1_grad/RealDiv_2*
_class
loc:@truediv_1*
T0*#
_output_shapes
:         
╙
gradients/truediv_1_grad/Sum_1Sumgradients/truediv_1_grad/mul0gradients/truediv_1_grad/BroadcastGradientArgs:1*
_class
loc:@truediv_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
╝
"gradients/truediv_1_grad/Reshape_1Reshapegradients/truediv_1_grad/Sum_1 gradients/truediv_1_grad/Shape_1*
_class
loc:@truediv_1*
Tshape0*
T0*
_output_shapes
: 
x
gradients/mul_1_grad/ShapeShapeMean*
_class

loc:@mul_1*
_output_shapes
:*
T0*
out_type0
М
gradients/mul_1_grad/Shape_1Shapedense_2_sample_weights*
_class

loc:@mul_1*
_output_shapes
:*
T0*
out_type0
╘
*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_1_grad/Shapegradients/mul_1_grad/Shape_1*
_class

loc:@mul_1*
T0*2
_output_shapes 
:         :         
б
gradients/mul_1_grad/mulMul gradients/truediv_1_grad/Reshapedense_2_sample_weights*
_class

loc:@mul_1*
T0*#
_output_shapes
:         
┐
gradients/mul_1_grad/SumSumgradients/mul_1_grad/mul*gradients/mul_1_grad/BroadcastGradientArgs*
_class

loc:@mul_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
│
gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
_class

loc:@mul_1*
Tshape0*
T0*#
_output_shapes
:         
С
gradients/mul_1_grad/mul_1MulMean gradients/truediv_1_grad/Reshape*
_class

loc:@mul_1*
T0*#
_output_shapes
:         
┼
gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*
_class

loc:@mul_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
╣
gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*
_class

loc:@mul_1*
Tshape0*
T0*#
_output_shapes
:         
u
gradients/Mean_grad/ShapeShapeNeg*
_class
	loc:@Mean*
_output_shapes
:*
T0*
out_type0
s
gradients/Mean_grad/SizeConst*
_class
	loc:@Mean*
dtype0*
value	B :*
_output_shapes
: 
М
gradients/Mean_grad/addAddMean/reduction_indicesgradients/Mean_grad/Size*
_class
	loc:@Mean*
T0*
_output_shapes
: 
Т
gradients/Mean_grad/modFloorModgradients/Mean_grad/addgradients/Mean_grad/Size*
_class
	loc:@Mean*
T0*
_output_shapes
: 
~
gradients/Mean_grad/Shape_1Const*
_class
	loc:@Mean*
dtype0*
valueB: *
_output_shapes
:
z
gradients/Mean_grad/range/startConst*
_class
	loc:@Mean*
dtype0*
value	B : *
_output_shapes
: 
z
gradients/Mean_grad/range/deltaConst*
_class
	loc:@Mean*
dtype0*
value	B :*
_output_shapes
: 
┐
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Sizegradients/Mean_grad/range/delta*
_class
	loc:@Mean*

Tidx0*
_output_shapes
:
y
gradients/Mean_grad/Fill/valueConst*
_class
	loc:@Mean*
dtype0*
value	B :*
_output_shapes
: 
Щ
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*
_class
	loc:@Mean*
T0*
_output_shapes
: 
ы
!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangegradients/Mean_grad/modgradients/Mean_grad/Shapegradients/Mean_grad/Fill*
_class
	loc:@Mean*#
_output_shapes
:         *
T0*
N
x
gradients/Mean_grad/Maximum/yConst*
_class
	loc:@Mean*
dtype0*
value	B :*
_output_shapes
: 
п
gradients/Mean_grad/MaximumMaximum!gradients/Mean_grad/DynamicStitchgradients/Mean_grad/Maximum/y*
_class
	loc:@Mean*
T0*#
_output_shapes
:         
з
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Shapegradients/Mean_grad/Maximum*
_class
	loc:@Mean*
T0*#
_output_shapes
:         
▒
gradients/Mean_grad/ReshapeReshapegradients/mul_1_grad/Reshape!gradients/Mean_grad/DynamicStitch*
_class
	loc:@Mean*
Tshape0*
T0*
_output_shapes
:
й
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv*
_class
	loc:@Mean*

Tmultiples0*
T0*
_output_shapes
:
w
gradients/Mean_grad/Shape_2ShapeNeg*
_class
	loc:@Mean*
_output_shapes
:*
T0*
out_type0
x
gradients/Mean_grad/Shape_3ShapeMean*
_class
	loc:@Mean*
_output_shapes
:*
T0*
out_type0
|
gradients/Mean_grad/ConstConst*
_class
	loc:@Mean*
dtype0*
valueB: *
_output_shapes
:
п
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/Const*
_class
	loc:@Mean*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
~
gradients/Mean_grad/Const_1Const*
_class
	loc:@Mean*
dtype0*
valueB: *
_output_shapes
:
│
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/Const_1*
_class
	loc:@Mean*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
z
gradients/Mean_grad/Maximum_1/yConst*
_class
	loc:@Mean*
dtype0*
value	B :*
_output_shapes
: 
Я
gradients/Mean_grad/Maximum_1Maximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum_1/y*
_class
	loc:@Mean*
T0*
_output_shapes
: 
Э
gradients/Mean_grad/floordiv_1FloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum_1*
_class
	loc:@Mean*
T0*
_output_shapes
: 
Й
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv_1*
_class
	loc:@Mean*

SrcT0*

DstT0*
_output_shapes
: 
б
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
_class
	loc:@Mean*
T0*#
_output_shapes
:         
А
gradients/Neg_grad/NegNeggradients/Mean_grad/truediv*
_class

loc:@Neg*
T0*#
_output_shapes
:         
w
gradients/Sum_1_grad/ShapeShapemul*
_class

loc:@Sum_1*
_output_shapes
:*
T0*
out_type0
u
gradients/Sum_1_grad/SizeConst*
_class

loc:@Sum_1*
dtype0*
value	B :*
_output_shapes
: 
О
gradients/Sum_1_grad/addAddSum_1/reduction_indicesgradients/Sum_1_grad/Size*
_class

loc:@Sum_1*
T0*
_output_shapes
: 
Ф
gradients/Sum_1_grad/modFloorModgradients/Sum_1_grad/addgradients/Sum_1_grad/Size*
_class

loc:@Sum_1*
T0*
_output_shapes
: 
y
gradients/Sum_1_grad/Shape_1Const*
_class

loc:@Sum_1*
dtype0*
valueB *
_output_shapes
: 
|
 gradients/Sum_1_grad/range/startConst*
_class

loc:@Sum_1*
dtype0*
value	B : *
_output_shapes
: 
|
 gradients/Sum_1_grad/range/deltaConst*
_class

loc:@Sum_1*
dtype0*
value	B :*
_output_shapes
: 
─
gradients/Sum_1_grad/rangeRange gradients/Sum_1_grad/range/startgradients/Sum_1_grad/Size gradients/Sum_1_grad/range/delta*
_class

loc:@Sum_1*

Tidx0*
_output_shapes
:
{
gradients/Sum_1_grad/Fill/valueConst*
_class

loc:@Sum_1*
dtype0*
value	B :*
_output_shapes
: 
Ы
gradients/Sum_1_grad/FillFillgradients/Sum_1_grad/Shape_1gradients/Sum_1_grad/Fill/value*
_class

loc:@Sum_1*
T0*
_output_shapes
: 
ё
"gradients/Sum_1_grad/DynamicStitchDynamicStitchgradients/Sum_1_grad/rangegradients/Sum_1_grad/modgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Fill*
_class

loc:@Sum_1*#
_output_shapes
:         *
T0*
N
z
gradients/Sum_1_grad/Maximum/yConst*
_class

loc:@Sum_1*
dtype0*
value	B :*
_output_shapes
: 
│
gradients/Sum_1_grad/MaximumMaximum"gradients/Sum_1_grad/DynamicStitchgradients/Sum_1_grad/Maximum/y*
_class

loc:@Sum_1*
T0*#
_output_shapes
:         
в
gradients/Sum_1_grad/floordivFloorDivgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Maximum*
_class

loc:@Sum_1*
T0*
_output_shapes
:
о
gradients/Sum_1_grad/ReshapeReshapegradients/Neg_grad/Neg"gradients/Sum_1_grad/DynamicStitch*
_class

loc:@Sum_1*
Tshape0*
T0*
_output_shapes
:
╝
gradients/Sum_1_grad/TileTilegradients/Sum_1_grad/Reshapegradients/Sum_1_grad/floordiv*
_class

loc:@Sum_1*

Tmultiples0*
T0*'
_output_shapes
:         

~
gradients/mul_grad/ShapeShapedense_2_target*
_class

loc:@mul*
_output_shapes
:*
T0*
out_type0
u
gradients/mul_grad/Shape_1ShapeLog*
_class

loc:@mul*
_output_shapes
:*
T0*
out_type0
╠
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
_class

loc:@mul*
T0*2
_output_shapes 
:         :         
З
gradients/mul_grad/mulMulgradients/Sum_1_grad/TileLog*
_class

loc:@mul*
T0*'
_output_shapes
:         

╖
gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*
_class

loc:@mul*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
╕
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
_class

loc:@mul*
Tshape0*
T0*0
_output_shapes
:                  
Ф
gradients/mul_grad/mul_1Muldense_2_targetgradients/Sum_1_grad/Tile*
_class

loc:@mul*
T0*'
_output_shapes
:         

╜
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
_class

loc:@mul*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
╡
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
_class

loc:@mul*
Tshape0*
T0*'
_output_shapes
:         

г
gradients/Log_grad/Reciprocal
Reciprocalclip_by_value^gradients/mul_grad/Reshape_1*
_class

loc:@Log*
T0*'
_output_shapes
:         

д
gradients/Log_grad/mulMulgradients/mul_grad/Reshape_1gradients/Log_grad/Reciprocal*
_class

loc:@Log*
T0*'
_output_shapes
:         

Щ
"gradients/clip_by_value_grad/ShapeShapeclip_by_value/Minimum* 
_class
loc:@clip_by_value*
_output_shapes
:*
T0*
out_type0
Й
$gradients/clip_by_value_grad/Shape_1Const* 
_class
loc:@clip_by_value*
dtype0*
valueB *
_output_shapes
: 
Ь
$gradients/clip_by_value_grad/Shape_2Shapegradients/Log_grad/mul* 
_class
loc:@clip_by_value*
_output_shapes
:*
T0*
out_type0
П
(gradients/clip_by_value_grad/zeros/ConstConst* 
_class
loc:@clip_by_value*
dtype0*
valueB
 *    *
_output_shapes
: 
╬
"gradients/clip_by_value_grad/zerosFill$gradients/clip_by_value_grad/Shape_2(gradients/clip_by_value_grad/zeros/Const* 
_class
loc:@clip_by_value*
T0*'
_output_shapes
:         

л
)gradients/clip_by_value_grad/GreaterEqualGreaterEqualclip_by_value/MinimumConst* 
_class
loc:@clip_by_value*
T0*'
_output_shapes
:         

Ї
2gradients/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/clip_by_value_grad/Shape$gradients/clip_by_value_grad/Shape_1* 
_class
loc:@clip_by_value*
T0*2
_output_shapes 
:         :         
ш
#gradients/clip_by_value_grad/SelectSelect)gradients/clip_by_value_grad/GreaterEqualgradients/Log_grad/mul"gradients/clip_by_value_grad/zeros* 
_class
loc:@clip_by_value*
T0*'
_output_shapes
:         

л
'gradients/clip_by_value_grad/LogicalNot
LogicalNot)gradients/clip_by_value_grad/GreaterEqual* 
_class
loc:@clip_by_value*'
_output_shapes
:         

ш
%gradients/clip_by_value_grad/Select_1Select'gradients/clip_by_value_grad/LogicalNotgradients/Log_grad/mul"gradients/clip_by_value_grad/zeros* 
_class
loc:@clip_by_value*
T0*'
_output_shapes
:         

т
 gradients/clip_by_value_grad/SumSum#gradients/clip_by_value_grad/Select2gradients/clip_by_value_grad/BroadcastGradientArgs* 
_class
loc:@clip_by_value*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
╫
$gradients/clip_by_value_grad/ReshapeReshape gradients/clip_by_value_grad/Sum"gradients/clip_by_value_grad/Shape* 
_class
loc:@clip_by_value*
Tshape0*
T0*'
_output_shapes
:         

ш
"gradients/clip_by_value_grad/Sum_1Sum%gradients/clip_by_value_grad/Select_14gradients/clip_by_value_grad/BroadcastGradientArgs:1* 
_class
loc:@clip_by_value*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
╠
&gradients/clip_by_value_grad/Reshape_1Reshape"gradients/clip_by_value_grad/Sum_1$gradients/clip_by_value_grad/Shape_1* 
_class
loc:@clip_by_value*
Tshape0*
T0*
_output_shapes
: 
Ы
*gradients/clip_by_value/Minimum_grad/ShapeShapetruediv*(
_class
loc:@clip_by_value/Minimum*
_output_shapes
:*
T0*
out_type0
Щ
,gradients/clip_by_value/Minimum_grad/Shape_1Const*(
_class
loc:@clip_by_value/Minimum*
dtype0*
valueB *
_output_shapes
: 
║
,gradients/clip_by_value/Minimum_grad/Shape_2Shape$gradients/clip_by_value_grad/Reshape*(
_class
loc:@clip_by_value/Minimum*
_output_shapes
:*
T0*
out_type0
Я
0gradients/clip_by_value/Minimum_grad/zeros/ConstConst*(
_class
loc:@clip_by_value/Minimum*
dtype0*
valueB
 *    *
_output_shapes
: 
ю
*gradients/clip_by_value/Minimum_grad/zerosFill,gradients/clip_by_value/Minimum_grad/Shape_20gradients/clip_by_value/Minimum_grad/zeros/Const*(
_class
loc:@clip_by_value/Minimum*
T0*'
_output_shapes
:         

е
.gradients/clip_by_value/Minimum_grad/LessEqual	LessEqualtruedivsub*(
_class
loc:@clip_by_value/Minimum*
T0*'
_output_shapes
:         

Ф
:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/clip_by_value/Minimum_grad/Shape,gradients/clip_by_value/Minimum_grad/Shape_1*(
_class
loc:@clip_by_value/Minimum*
T0*2
_output_shapes 
:         :         
У
+gradients/clip_by_value/Minimum_grad/SelectSelect.gradients/clip_by_value/Minimum_grad/LessEqual$gradients/clip_by_value_grad/Reshape*gradients/clip_by_value/Minimum_grad/zeros*(
_class
loc:@clip_by_value/Minimum*
T0*'
_output_shapes
:         

└
/gradients/clip_by_value/Minimum_grad/LogicalNot
LogicalNot.gradients/clip_by_value/Minimum_grad/LessEqual*(
_class
loc:@clip_by_value/Minimum*'
_output_shapes
:         

Ц
-gradients/clip_by_value/Minimum_grad/Select_1Select/gradients/clip_by_value/Minimum_grad/LogicalNot$gradients/clip_by_value_grad/Reshape*gradients/clip_by_value/Minimum_grad/zeros*(
_class
loc:@clip_by_value/Minimum*
T0*'
_output_shapes
:         

В
(gradients/clip_by_value/Minimum_grad/SumSum+gradients/clip_by_value/Minimum_grad/Select:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs*(
_class
loc:@clip_by_value/Minimum*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ў
,gradients/clip_by_value/Minimum_grad/ReshapeReshape(gradients/clip_by_value/Minimum_grad/Sum*gradients/clip_by_value/Minimum_grad/Shape*(
_class
loc:@clip_by_value/Minimum*
Tshape0*
T0*'
_output_shapes
:         

И
*gradients/clip_by_value/Minimum_grad/Sum_1Sum-gradients/clip_by_value/Minimum_grad/Select_1<gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*(
_class
loc:@clip_by_value/Minimum*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ь
.gradients/clip_by_value/Minimum_grad/Reshape_1Reshape*gradients/clip_by_value/Minimum_grad/Sum_1,gradients/clip_by_value/Minimum_grad/Shape_1*(
_class
loc:@clip_by_value/Minimum*
Tshape0*
T0*
_output_shapes
: 
З
gradients/truediv_grad/ShapeShapedense_2/Softmax*
_class
loc:@truediv*
_output_shapes
:*
T0*
out_type0
}
gradients/truediv_grad/Shape_1ShapeSum*
_class
loc:@truediv*
_output_shapes
:*
T0*
out_type0
▄
,gradients/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_grad/Shapegradients/truediv_grad/Shape_1*
_class
loc:@truediv*
T0*2
_output_shapes 
:         :         
к
gradients/truediv_grad/RealDivRealDiv,gradients/clip_by_value/Minimum_grad/ReshapeSum*
_class
loc:@truediv*
T0*'
_output_shapes
:         

╦
gradients/truediv_grad/SumSumgradients/truediv_grad/RealDiv,gradients/truediv_grad/BroadcastGradientArgs*
_class
loc:@truediv*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
┐
gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
_class
loc:@truediv*
Tshape0*
T0*'
_output_shapes
:         

А
gradients/truediv_grad/NegNegdense_2/Softmax*
_class
loc:@truediv*
T0*'
_output_shapes
:         

Ъ
 gradients/truediv_grad/RealDiv_1RealDivgradients/truediv_grad/NegSum*
_class
loc:@truediv*
T0*'
_output_shapes
:         

а
 gradients/truediv_grad/RealDiv_2RealDiv gradients/truediv_grad/RealDiv_1Sum*
_class
loc:@truediv*
T0*'
_output_shapes
:         

┐
gradients/truediv_grad/mulMul,gradients/clip_by_value/Minimum_grad/Reshape gradients/truediv_grad/RealDiv_2*
_class
loc:@truediv*
T0*'
_output_shapes
:         

╦
gradients/truediv_grad/Sum_1Sumgradients/truediv_grad/mul.gradients/truediv_grad/BroadcastGradientArgs:1*
_class
loc:@truediv*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
┼
 gradients/truediv_grad/Reshape_1Reshapegradients/truediv_grad/Sum_1gradients/truediv_grad/Shape_1*
_class
loc:@truediv*
Tshape0*
T0*'
_output_shapes
:         

gradients/Sum_grad/ShapeShapedense_2/Softmax*
_class

loc:@Sum*
_output_shapes
:*
T0*
out_type0
q
gradients/Sum_grad/SizeConst*
_class

loc:@Sum*
dtype0*
value	B :*
_output_shapes
: 
Ж
gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*
_class

loc:@Sum*
T0*
_output_shapes
: 
М
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
_class

loc:@Sum*
T0*
_output_shapes
: 
u
gradients/Sum_grad/Shape_1Const*
_class

loc:@Sum*
dtype0*
valueB *
_output_shapes
: 
x
gradients/Sum_grad/range/startConst*
_class

loc:@Sum*
dtype0*
value	B : *
_output_shapes
: 
x
gradients/Sum_grad/range/deltaConst*
_class

loc:@Sum*
dtype0*
value	B :*
_output_shapes
: 
║
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*
_class

loc:@Sum*

Tidx0*
_output_shapes
:
w
gradients/Sum_grad/Fill/valueConst*
_class

loc:@Sum*
dtype0*
value	B :*
_output_shapes
: 
У
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
_class

loc:@Sum*
T0*
_output_shapes
: 
х
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
_class

loc:@Sum*#
_output_shapes
:         *
T0*
N
v
gradients/Sum_grad/Maximum/yConst*
_class

loc:@Sum*
dtype0*
value	B :*
_output_shapes
: 
л
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
_class

loc:@Sum*
T0*#
_output_shapes
:         
Ъ
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
_class

loc:@Sum*
T0*
_output_shapes
:
▓
gradients/Sum_grad/ReshapeReshape gradients/truediv_grad/Reshape_1 gradients/Sum_grad/DynamicStitch*
_class

loc:@Sum*
Tshape0*
T0*
_output_shapes
:
┤
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*
_class

loc:@Sum*

Tmultiples0*
T0*'
_output_shapes
:         

ж
gradients/AddNAddNgradients/truediv_grad/Reshapegradients/Sum_grad/Tile*
_class
loc:@truediv*'
_output_shapes
:         
*
T0*
N
а
"gradients/dense_2/Softmax_grad/mulMulgradients/AddNdense_2/Softmax*"
_class
loc:@dense_2/Softmax*
T0*'
_output_shapes
:         

в
4gradients/dense_2/Softmax_grad/Sum/reduction_indicesConst*"
_class
loc:@dense_2/Softmax*
dtype0*
valueB:*
_output_shapes
:
Є
"gradients/dense_2/Softmax_grad/SumSum"gradients/dense_2/Softmax_grad/mul4gradients/dense_2/Softmax_grad/Sum/reduction_indices*"
_class
loc:@dense_2/Softmax*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:         
б
,gradients/dense_2/Softmax_grad/Reshape/shapeConst*"
_class
loc:@dense_2/Softmax*
dtype0*
valueB"       *
_output_shapes
:
ч
&gradients/dense_2/Softmax_grad/ReshapeReshape"gradients/dense_2/Softmax_grad/Sum,gradients/dense_2/Softmax_grad/Reshape/shape*"
_class
loc:@dense_2/Softmax*
Tshape0*
T0*'
_output_shapes
:         
╖
"gradients/dense_2/Softmax_grad/subSubgradients/AddN&gradients/dense_2/Softmax_grad/Reshape*"
_class
loc:@dense_2/Softmax*
T0*'
_output_shapes
:         

╢
$gradients/dense_2/Softmax_grad/mul_1Mul"gradients/dense_2/Softmax_grad/subdense_2/Softmax*"
_class
loc:@dense_2/Softmax*
T0*'
_output_shapes
:         

┐
*gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_2/Softmax_grad/mul_1*"
_class
loc:@dense_2/BiasAdd*
_output_shapes
:
*
T0*
data_formatNHWC
х
$gradients/dense_2/MatMul_grad/MatMulMatMul$gradients/dense_2/Softmax_grad/mul_1dense_2/kernel/read*!
_class
loc:@dense_2/MatMul*(
_output_shapes
:         А*
transpose_a( *
T0*
transpose_b(
▌
&gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_2/Identity$gradients/dense_2/Softmax_grad/mul_1*!
_class
loc:@dense_2/MatMul*
_output_shapes
:	А
*
transpose_a(*
T0*
transpose_b( 
╕
$gradients/dense_1/Relu_grad/ReluGradReluGrad$gradients/dense_2/MatMul_grad/MatMuldense_1/Relu*
_class
loc:@dense_1/Relu*
T0*(
_output_shapes
:         А
└
*gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_1/Relu_grad/ReluGrad*"
_class
loc:@dense_1/BiasAdd*
_output_shapes	
:А*
T0*
data_formatNHWC
х
$gradients/dense_1/MatMul_grad/MatMulMatMul$gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*!
_class
loc:@dense_1/MatMul*(
_output_shapes
:         АH*
transpose_a( *
T0*
transpose_b(
▌
&gradients/dense_1/MatMul_grad/MatMul_1MatMulflatten_1/Reshape$gradients/dense_1/Relu_grad/ReluGrad*!
_class
loc:@dense_1/MatMul* 
_output_shapes
:
АHА*
transpose_a(*
T0*
transpose_b( 
Ю
&gradients/flatten_1/Reshape_grad/ShapeShapedropout_1/Identity*$
_class
loc:@flatten_1/Reshape*
_output_shapes
:*
T0*
out_type0
я
(gradients/flatten_1/Reshape_grad/ReshapeReshape$gradients/dense_1/MatMul_grad/MatMul&gradients/flatten_1/Reshape_grad/Shape*$
_class
loc:@flatten_1/Reshape*
Tshape0*
T0*/
_output_shapes
:         @
╠
2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_2/Relumax_pooling2d_1/MaxPool(gradients/flatten_1/Reshape_grad/Reshape*
paddingVALID*
strides
*
data_formatNHWC**
_class 
loc:@max_pooling2d_1/MaxPool*
ksize
*/
_output_shapes
:         @*
T0
╨
%gradients/conv2d_2/Relu_grad/ReluGradReluGrad2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradconv2d_2/Relu* 
_class
loc:@conv2d_2/Relu*
T0*/
_output_shapes
:         @
┬
+gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_2/Relu_grad/ReluGrad*#
_class
loc:@conv2d_2/BiasAdd*
_output_shapes
:@*
T0*
data_formatNHWC
Я
)gradients/conv2d_2/convolution_grad/ShapeShapeconv2d_1/Relu*'
_class
loc:@conv2d_2/convolution*
_output_shapes
:*
T0*
out_type0
ё
7gradients/conv2d_2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput)gradients/conv2d_2/convolution_grad/Shapeconv2d_2/kernel/read%gradients/conv2d_2/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*
strides
*
data_formatNHWC*'
_class
loc:@conv2d_2/convolution*/
_output_shapes
:          *
T0*
paddingVALID
н
+gradients/conv2d_2/convolution_grad/Shape_1Const*'
_class
loc:@conv2d_2/convolution*
dtype0*%
valueB"          @   *
_output_shapes
:
х
8gradients/conv2d_2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_1/Relu+gradients/conv2d_2/convolution_grad/Shape_1%gradients/conv2d_2/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*
strides
*
data_formatNHWC*'
_class
loc:@conv2d_2/convolution*&
_output_shapes
: @*
T0*
paddingVALID
╒
%gradients/conv2d_1/Relu_grad/ReluGradReluGrad7gradients/conv2d_2/convolution_grad/Conv2DBackpropInputconv2d_1/Relu* 
_class
loc:@conv2d_1/Relu*
T0*/
_output_shapes
:          
┬
+gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_1/Relu_grad/ReluGrad*#
_class
loc:@conv2d_1/BiasAdd*
_output_shapes
: *
T0*
data_formatNHWC
а
)gradients/conv2d_1/convolution_grad/ShapeShapeconv2d_1_input*'
_class
loc:@conv2d_1/convolution*
_output_shapes
:*
T0*
out_type0
ё
7gradients/conv2d_1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput)gradients/conv2d_1/convolution_grad/Shapeconv2d_1/kernel/read%gradients/conv2d_1/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*
strides
*
data_formatNHWC*'
_class
loc:@conv2d_1/convolution*/
_output_shapes
:         *
T0*
paddingVALID
н
+gradients/conv2d_1/convolution_grad/Shape_1Const*'
_class
loc:@conv2d_1/convolution*
dtype0*%
valueB"             *
_output_shapes
:
ц
8gradients/conv2d_1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_1_input+gradients/conv2d_1/convolution_grad/Shape_1%gradients/conv2d_1/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*
strides
*
data_formatNHWC*'
_class
loc:@conv2d_1/convolution*&
_output_shapes
: *
T0*
paddingVALID
T
Const_4Const*
dtype0*
valueB *    *
_output_shapes
: 
t
Variable
VariableV2*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
Ч
Variable/AssignAssignVariableConst_4*
_class
loc:@Variable*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
e
Variable/readIdentityVariable*
_class
loc:@Variable*
T0*
_output_shapes
: 
l
Const_5Const*
dtype0*%
valueB *    *&
_output_shapes
: 
О

Variable_1
VariableV2*
dtype0*
	container *
shape: *
shared_name *&
_output_shapes
: 
й
Variable_1/AssignAssign
Variable_1Const_5*
_class
loc:@Variable_1*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: 
w
Variable_1/readIdentity
Variable_1*
_class
loc:@Variable_1*
T0*&
_output_shapes
: 
T
Const_6Const*
dtype0*
valueB@*    *
_output_shapes
:@
v

Variable_2
VariableV2*
dtype0*
	container *
shape:@*
shared_name *
_output_shapes
:@
Э
Variable_2/AssignAssign
Variable_2Const_6*
_class
loc:@Variable_2*
validate_shape(*
use_locking(*
T0*
_output_shapes
:@
k
Variable_2/readIdentity
Variable_2*
_class
loc:@Variable_2*
T0*
_output_shapes
:@
l
Const_7Const*
dtype0*%
valueB @*    *&
_output_shapes
: @
О

Variable_3
VariableV2*
dtype0*
	container *
shape: @*
shared_name *&
_output_shapes
: @
й
Variable_3/AssignAssign
Variable_3Const_7*
_class
loc:@Variable_3*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: @
w
Variable_3/readIdentity
Variable_3*
_class
loc:@Variable_3*
T0*&
_output_shapes
: @
V
Const_8Const*
dtype0*
valueBА*    *
_output_shapes	
:А
x

Variable_4
VariableV2*
dtype0*
	container *
shape:А*
shared_name *
_output_shapes	
:А
Ю
Variable_4/AssignAssign
Variable_4Const_8*
_class
loc:@Variable_4*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:А
l
Variable_4/readIdentity
Variable_4*
_class
loc:@Variable_4*
T0*
_output_shapes	
:А
`
Const_9Const*
dtype0*
valueB
АHА*    * 
_output_shapes
:
АHА
В

Variable_5
VariableV2*
dtype0*
	container *
shape:
АHА*
shared_name * 
_output_shapes
:
АHА
г
Variable_5/AssignAssign
Variable_5Const_9*
_class
loc:@Variable_5*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:
АHА
q
Variable_5/readIdentity
Variable_5*
_class
loc:@Variable_5*
T0* 
_output_shapes
:
АHА
U
Const_10Const*
dtype0*
valueB
*    *
_output_shapes
:

v

Variable_6
VariableV2*
dtype0*
	container *
shape:
*
shared_name *
_output_shapes
:

Ю
Variable_6/AssignAssign
Variable_6Const_10*
_class
loc:@Variable_6*
validate_shape(*
use_locking(*
T0*
_output_shapes
:

k
Variable_6/readIdentity
Variable_6*
_class
loc:@Variable_6*
T0*
_output_shapes
:

_
Const_11Const*
dtype0*
valueB	А
*    *
_output_shapes
:	А

А

Variable_7
VariableV2*
dtype0*
	container *
shape:	А
*
shared_name *
_output_shapes
:	А

г
Variable_7/AssignAssign
Variable_7Const_11*
_class
loc:@Variable_7*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	А

p
Variable_7/readIdentity
Variable_7*
_class
loc:@Variable_7*
T0*
_output_shapes
:	А

U
Const_12Const*
dtype0*
valueB *    *
_output_shapes
: 
v

Variable_8
VariableV2*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
Ю
Variable_8/AssignAssign
Variable_8Const_12*
_class
loc:@Variable_8*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
k
Variable_8/readIdentity
Variable_8*
_class
loc:@Variable_8*
T0*
_output_shapes
: 
m
Const_13Const*
dtype0*%
valueB *    *&
_output_shapes
: 
О

Variable_9
VariableV2*
dtype0*
	container *
shape: *
shared_name *&
_output_shapes
: 
к
Variable_9/AssignAssign
Variable_9Const_13*
_class
loc:@Variable_9*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: 
w
Variable_9/readIdentity
Variable_9*
_class
loc:@Variable_9*
T0*&
_output_shapes
: 
U
Const_14Const*
dtype0*
valueB@*    *
_output_shapes
:@
w
Variable_10
VariableV2*
dtype0*
	container *
shape:@*
shared_name *
_output_shapes
:@
б
Variable_10/AssignAssignVariable_10Const_14*
_class
loc:@Variable_10*
validate_shape(*
use_locking(*
T0*
_output_shapes
:@
n
Variable_10/readIdentityVariable_10*
_class
loc:@Variable_10*
T0*
_output_shapes
:@
m
Const_15Const*
dtype0*%
valueB @*    *&
_output_shapes
: @
П
Variable_11
VariableV2*
dtype0*
	container *
shape: @*
shared_name *&
_output_shapes
: @
н
Variable_11/AssignAssignVariable_11Const_15*
_class
loc:@Variable_11*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: @
z
Variable_11/readIdentityVariable_11*
_class
loc:@Variable_11*
T0*&
_output_shapes
: @
W
Const_16Const*
dtype0*
valueBА*    *
_output_shapes	
:А
y
Variable_12
VariableV2*
dtype0*
	container *
shape:А*
shared_name *
_output_shapes	
:А
в
Variable_12/AssignAssignVariable_12Const_16*
_class
loc:@Variable_12*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:А
o
Variable_12/readIdentityVariable_12*
_class
loc:@Variable_12*
T0*
_output_shapes	
:А
a
Const_17Const*
dtype0*
valueB
АHА*    * 
_output_shapes
:
АHА
Г
Variable_13
VariableV2*
dtype0*
	container *
shape:
АHА*
shared_name * 
_output_shapes
:
АHА
з
Variable_13/AssignAssignVariable_13Const_17*
_class
loc:@Variable_13*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:
АHА
t
Variable_13/readIdentityVariable_13*
_class
loc:@Variable_13*
T0* 
_output_shapes
:
АHА
U
Const_18Const*
dtype0*
valueB
*    *
_output_shapes
:

w
Variable_14
VariableV2*
dtype0*
	container *
shape:
*
shared_name *
_output_shapes
:

б
Variable_14/AssignAssignVariable_14Const_18*
_class
loc:@Variable_14*
validate_shape(*
use_locking(*
T0*
_output_shapes
:

n
Variable_14/readIdentityVariable_14*
_class
loc:@Variable_14*
T0*
_output_shapes
:

_
Const_19Const*
dtype0*
valueB	А
*    *
_output_shapes
:	А

Б
Variable_15
VariableV2*
dtype0*
	container *
shape:	А
*
shared_name *
_output_shapes
:	А

ж
Variable_15/AssignAssignVariable_15Const_19*
_class
loc:@Variable_15*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	А

s
Variable_15/readIdentityVariable_15*
_class
loc:@Variable_15*
T0*
_output_shapes
:	А

L
mul_3/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
I
mul_3Mulmul_3/xVariable/read*
T0*
_output_shapes
: 
b
SquareSquare+gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
L
mul_4/xConst*
dtype0*
valueB
 *═╠L=*
_output_shapes
: 
B
mul_4Mulmul_4/xSquare*
T0*
_output_shapes
: 
=
addAddmul_3mul_4*
T0*
_output_shapes
: 
М
Assign_8AssignVariableadd*
_class
loc:@Variable*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
L
add_1/yConst*
dtype0*
valueB
 *w╠+2*
_output_shapes
: 
K
add_1AddVariable_8/readadd_1/y*
T0*
_output_shapes
: 
M
Const_20Const*
dtype0*
valueB
 *    *
_output_shapes
: 
M
Const_21Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
X
clip_by_value_1/MinimumMinimumadd_1Const_21*
T0*
_output_shapes
: 
b
clip_by_value_1Maximumclip_by_value_1/MinimumConst_20*
T0*
_output_shapes
: 
B
SqrtSqrtclip_by_value_1*
T0*
_output_shapes
: 
d
mul_5Mul+gradients/conv2d_1/BiasAdd_grad/BiasAddGradSqrt*
T0*
_output_shapes
: 
L
add_2/yConst*
dtype0*
valueB
 *w╠+2*
_output_shapes
: 
?
add_2Addaddadd_2/y*
T0*
_output_shapes
: 
M
Const_22Const*
dtype0*
valueB
 *    *
_output_shapes
: 
M
Const_23Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
X
clip_by_value_2/MinimumMinimumadd_2Const_23*
T0*
_output_shapes
: 
b
clip_by_value_2Maximumclip_by_value_2/MinimumConst_22*
T0*
_output_shapes
: 
D
Sqrt_1Sqrtclip_by_value_2*
T0*
_output_shapes
: 
H
	truediv_2RealDivmul_5Sqrt_1*
T0*
_output_shapes
: 
E
mul_6Mullr/read	truediv_2*
T0*
_output_shapes
: 
L
sub_1Subconv2d_1/bias/readmul_6*
T0*
_output_shapes
: 
Ш
Assign_9Assignconv2d_1/biassub_1* 
_class
loc:@conv2d_1/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
L
mul_7/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
K
mul_7Mulmul_7/xVariable_8/read*
T0*
_output_shapes
: 
B
Square_1Square	truediv_2*
T0*
_output_shapes
: 
L
mul_8/xConst*
dtype0*
valueB
 *═╠L=*
_output_shapes
: 
D
mul_8Mulmul_8/xSquare_1*
T0*
_output_shapes
: 
?
add_3Addmul_7mul_8*
T0*
_output_shapes
: 
У
	Assign_10Assign
Variable_8add_3*
_class
loc:@Variable_8*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
L
mul_9/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
W
mul_9Mulmul_9/xVariable_1/read*
T0*&
_output_shapes
: 
}
Square_2Square8gradients/conv2d_1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: 
M
mul_10/xConst*
dtype0*
valueB
 *═╠L=*
_output_shapes
: 
R
mul_10Mulmul_10/xSquare_2*
T0*&
_output_shapes
: 
L
add_4Addmul_9mul_10*
T0*&
_output_shapes
: 
Я
	Assign_11Assign
Variable_1add_4*
_class
loc:@Variable_1*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: 
L
add_5/yConst*
dtype0*
valueB
 *w╠+2*
_output_shapes
: 
W
add_5AddVariable_9/readadd_5/y*
T0*&
_output_shapes
: 
M
Const_24Const*
dtype0*
valueB
 *    *
_output_shapes
: 
M
Const_25Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
d
clip_by_value_3/MinimumMinimumadd_5Const_25*
T0*&
_output_shapes
: 
n
clip_by_value_3Maximumclip_by_value_3/MinimumConst_24*
T0*&
_output_shapes
: 
P
Sqrt_2Sqrtclip_by_value_3*
T0*&
_output_shapes
: 
А
mul_11Mul8gradients/conv2d_1/convolution_grad/Conv2DBackpropFilterSqrt_2*
T0*&
_output_shapes
: 
L
add_6/yConst*
dtype0*
valueB
 *w╠+2*
_output_shapes
: 
M
add_6Addadd_4add_6/y*
T0*&
_output_shapes
: 
M
Const_26Const*
dtype0*
valueB
 *    *
_output_shapes
: 
M
Const_27Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
d
clip_by_value_4/MinimumMinimumadd_6Const_27*
T0*&
_output_shapes
: 
n
clip_by_value_4Maximumclip_by_value_4/MinimumConst_26*
T0*&
_output_shapes
: 
P
Sqrt_3Sqrtclip_by_value_4*
T0*&
_output_shapes
: 
U
	truediv_3RealDivmul_11Sqrt_3*
T0*&
_output_shapes
: 
R
mul_12Mullr/read	truediv_3*
T0*&
_output_shapes
: 
[
sub_2Subconv2d_1/kernel/readmul_12*
T0*&
_output_shapes
: 
й
	Assign_12Assignconv2d_1/kernelsub_2*"
_class
loc:@conv2d_1/kernel*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: 
M
mul_13/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
Y
mul_13Mulmul_13/xVariable_9/read*
T0*&
_output_shapes
: 
N
Square_3Square	truediv_3*
T0*&
_output_shapes
: 
M
mul_14/xConst*
dtype0*
valueB
 *═╠L=*
_output_shapes
: 
R
mul_14Mulmul_14/xSquare_3*
T0*&
_output_shapes
: 
M
add_7Addmul_13mul_14*
T0*&
_output_shapes
: 
Я
	Assign_13Assign
Variable_9add_7*
_class
loc:@Variable_9*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: 
M
mul_15/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
M
mul_15Mulmul_15/xVariable_2/read*
T0*
_output_shapes
:@
d
Square_4Square+gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
M
mul_16/xConst*
dtype0*
valueB
 *═╠L=*
_output_shapes
: 
F
mul_16Mulmul_16/xSquare_4*
T0*
_output_shapes
:@
A
add_8Addmul_15mul_16*
T0*
_output_shapes
:@
У
	Assign_14Assign
Variable_2add_8*
_class
loc:@Variable_2*
validate_shape(*
use_locking(*
T0*
_output_shapes
:@
L
add_9/yConst*
dtype0*
valueB
 *w╠+2*
_output_shapes
: 
L
add_9AddVariable_10/readadd_9/y*
T0*
_output_shapes
:@
M
Const_28Const*
dtype0*
valueB
 *    *
_output_shapes
: 
M
Const_29Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
X
clip_by_value_5/MinimumMinimumadd_9Const_29*
T0*
_output_shapes
:@
b
clip_by_value_5Maximumclip_by_value_5/MinimumConst_28*
T0*
_output_shapes
:@
D
Sqrt_4Sqrtclip_by_value_5*
T0*
_output_shapes
:@
g
mul_17Mul+gradients/conv2d_2/BiasAdd_grad/BiasAddGradSqrt_4*
T0*
_output_shapes
:@
M
add_10/yConst*
dtype0*
valueB
 *w╠+2*
_output_shapes
: 
C
add_10Addadd_8add_10/y*
T0*
_output_shapes
:@
M
Const_30Const*
dtype0*
valueB
 *    *
_output_shapes
: 
M
Const_31Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
Y
clip_by_value_6/MinimumMinimumadd_10Const_31*
T0*
_output_shapes
:@
b
clip_by_value_6Maximumclip_by_value_6/MinimumConst_30*
T0*
_output_shapes
:@
D
Sqrt_5Sqrtclip_by_value_6*
T0*
_output_shapes
:@
I
	truediv_4RealDivmul_17Sqrt_5*
T0*
_output_shapes
:@
F
mul_18Mullr/read	truediv_4*
T0*
_output_shapes
:@
M
sub_3Subconv2d_2/bias/readmul_18*
T0*
_output_shapes
:@
Щ
	Assign_15Assignconv2d_2/biassub_3* 
_class
loc:@conv2d_2/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes
:@
M
mul_19/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
N
mul_19Mulmul_19/xVariable_10/read*
T0*
_output_shapes
:@
B
Square_5Square	truediv_4*
T0*
_output_shapes
:@
M
mul_20/xConst*
dtype0*
valueB
 *═╠L=*
_output_shapes
: 
F
mul_20Mulmul_20/xSquare_5*
T0*
_output_shapes
:@
B
add_11Addmul_19mul_20*
T0*
_output_shapes
:@
Ц
	Assign_16AssignVariable_10add_11*
_class
loc:@Variable_10*
validate_shape(*
use_locking(*
T0*
_output_shapes
:@
M
mul_21/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
Y
mul_21Mulmul_21/xVariable_3/read*
T0*&
_output_shapes
: @
}
Square_6Square8gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: @
M
mul_22/xConst*
dtype0*
valueB
 *═╠L=*
_output_shapes
: 
R
mul_22Mulmul_22/xSquare_6*
T0*&
_output_shapes
: @
N
add_12Addmul_21mul_22*
T0*&
_output_shapes
: @
а
	Assign_17Assign
Variable_3add_12*
_class
loc:@Variable_3*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: @
M
add_13/yConst*
dtype0*
valueB
 *w╠+2*
_output_shapes
: 
Z
add_13AddVariable_11/readadd_13/y*
T0*&
_output_shapes
: @
M
Const_32Const*
dtype0*
valueB
 *    *
_output_shapes
: 
M
Const_33Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
e
clip_by_value_7/MinimumMinimumadd_13Const_33*
T0*&
_output_shapes
: @
n
clip_by_value_7Maximumclip_by_value_7/MinimumConst_32*
T0*&
_output_shapes
: @
P
Sqrt_6Sqrtclip_by_value_7*
T0*&
_output_shapes
: @
А
mul_23Mul8gradients/conv2d_2/convolution_grad/Conv2DBackpropFilterSqrt_6*
T0*&
_output_shapes
: @
M
add_14/yConst*
dtype0*
valueB
 *w╠+2*
_output_shapes
: 
P
add_14Addadd_12add_14/y*
T0*&
_output_shapes
: @
M
Const_34Const*
dtype0*
valueB
 *    *
_output_shapes
: 
M
Const_35Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
e
clip_by_value_8/MinimumMinimumadd_14Const_35*
T0*&
_output_shapes
: @
n
clip_by_value_8Maximumclip_by_value_8/MinimumConst_34*
T0*&
_output_shapes
: @
P
Sqrt_7Sqrtclip_by_value_8*
T0*&
_output_shapes
: @
U
	truediv_5RealDivmul_23Sqrt_7*
T0*&
_output_shapes
: @
R
mul_24Mullr/read	truediv_5*
T0*&
_output_shapes
: @
[
sub_4Subconv2d_2/kernel/readmul_24*
T0*&
_output_shapes
: @
й
	Assign_18Assignconv2d_2/kernelsub_4*"
_class
loc:@conv2d_2/kernel*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: @
M
mul_25/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
Z
mul_25Mulmul_25/xVariable_11/read*
T0*&
_output_shapes
: @
N
Square_7Square	truediv_5*
T0*&
_output_shapes
: @
M
mul_26/xConst*
dtype0*
valueB
 *═╠L=*
_output_shapes
: 
R
mul_26Mulmul_26/xSquare_7*
T0*&
_output_shapes
: @
N
add_15Addmul_25mul_26*
T0*&
_output_shapes
: @
в
	Assign_19AssignVariable_11add_15*
_class
loc:@Variable_11*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: @
M
mul_27/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
N
mul_27Mulmul_27/xVariable_4/read*
T0*
_output_shapes	
:А
d
Square_8Square*gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
M
mul_28/xConst*
dtype0*
valueB
 *═╠L=*
_output_shapes
: 
G
mul_28Mulmul_28/xSquare_8*
T0*
_output_shapes	
:А
C
add_16Addmul_27mul_28*
T0*
_output_shapes	
:А
Х
	Assign_20Assign
Variable_4add_16*
_class
loc:@Variable_4*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:А
M
add_17/yConst*
dtype0*
valueB
 *w╠+2*
_output_shapes
: 
O
add_17AddVariable_12/readadd_17/y*
T0*
_output_shapes	
:А
M
Const_36Const*
dtype0*
valueB
 *    *
_output_shapes
: 
M
Const_37Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
Z
clip_by_value_9/MinimumMinimumadd_17Const_37*
T0*
_output_shapes	
:А
c
clip_by_value_9Maximumclip_by_value_9/MinimumConst_36*
T0*
_output_shapes	
:А
E
Sqrt_8Sqrtclip_by_value_9*
T0*
_output_shapes	
:А
g
mul_29Mul*gradients/dense_1/BiasAdd_grad/BiasAddGradSqrt_8*
T0*
_output_shapes	
:А
M
add_18/yConst*
dtype0*
valueB
 *w╠+2*
_output_shapes
: 
E
add_18Addadd_16add_18/y*
T0*
_output_shapes	
:А
M
Const_38Const*
dtype0*
valueB
 *    *
_output_shapes
: 
M
Const_39Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
[
clip_by_value_10/MinimumMinimumadd_18Const_39*
T0*
_output_shapes	
:А
e
clip_by_value_10Maximumclip_by_value_10/MinimumConst_38*
T0*
_output_shapes	
:А
F
Sqrt_9Sqrtclip_by_value_10*
T0*
_output_shapes	
:А
J
	truediv_6RealDivmul_29Sqrt_9*
T0*
_output_shapes	
:А
G
mul_30Mullr/read	truediv_6*
T0*
_output_shapes	
:А
M
sub_5Subdense_1/bias/readmul_30*
T0*
_output_shapes	
:А
Ш
	Assign_21Assigndense_1/biassub_5*
_class
loc:@dense_1/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:А
M
mul_31/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
O
mul_31Mulmul_31/xVariable_12/read*
T0*
_output_shapes	
:А
C
Square_9Square	truediv_6*
T0*
_output_shapes	
:А
M
mul_32/xConst*
dtype0*
valueB
 *═╠L=*
_output_shapes
: 
G
mul_32Mulmul_32/xSquare_9*
T0*
_output_shapes	
:А
C
add_19Addmul_31mul_32*
T0*
_output_shapes	
:А
Ч
	Assign_22AssignVariable_12add_19*
_class
loc:@Variable_12*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:А
M
mul_33/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
S
mul_33Mulmul_33/xVariable_5/read*
T0* 
_output_shapes
:
АHА
f
	Square_10Square&gradients/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
АHА
M
mul_34/xConst*
dtype0*
valueB
 *═╠L=*
_output_shapes
: 
M
mul_34Mulmul_34/x	Square_10*
T0* 
_output_shapes
:
АHА
H
add_20Addmul_33mul_34*
T0* 
_output_shapes
:
АHА
Ъ
	Assign_23Assign
Variable_5add_20*
_class
loc:@Variable_5*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:
АHА
M
add_21/yConst*
dtype0*
valueB
 *w╠+2*
_output_shapes
: 
T
add_21AddVariable_13/readadd_21/y*
T0* 
_output_shapes
:
АHА
M
Const_40Const*
dtype0*
valueB
 *    *
_output_shapes
: 
M
Const_41Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
`
clip_by_value_11/MinimumMinimumadd_21Const_41*
T0* 
_output_shapes
:
АHА
j
clip_by_value_11Maximumclip_by_value_11/MinimumConst_40*
T0* 
_output_shapes
:
АHА
L
Sqrt_10Sqrtclip_by_value_11*
T0* 
_output_shapes
:
АHА
i
mul_35Mul&gradients/dense_1/MatMul_grad/MatMul_1Sqrt_10*
T0* 
_output_shapes
:
АHА
M
add_22/yConst*
dtype0*
valueB
 *w╠+2*
_output_shapes
: 
J
add_22Addadd_20add_22/y*
T0* 
_output_shapes
:
АHА
M
Const_42Const*
dtype0*
valueB
 *    *
_output_shapes
: 
M
Const_43Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
`
clip_by_value_12/MinimumMinimumadd_22Const_43*
T0* 
_output_shapes
:
АHА
j
clip_by_value_12Maximumclip_by_value_12/MinimumConst_42*
T0* 
_output_shapes
:
АHА
L
Sqrt_11Sqrtclip_by_value_12*
T0* 
_output_shapes
:
АHА
P
	truediv_7RealDivmul_35Sqrt_11*
T0* 
_output_shapes
:
АHА
L
mul_36Mullr/read	truediv_7*
T0* 
_output_shapes
:
АHА
T
sub_6Subdense_1/kernel/readmul_36*
T0* 
_output_shapes
:
АHА
б
	Assign_24Assigndense_1/kernelsub_6*!
_class
loc:@dense_1/kernel*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:
АHА
M
mul_37/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
T
mul_37Mulmul_37/xVariable_13/read*
T0* 
_output_shapes
:
АHА
I
	Square_11Square	truediv_7*
T0* 
_output_shapes
:
АHА
M
mul_38/xConst*
dtype0*
valueB
 *═╠L=*
_output_shapes
: 
M
mul_38Mulmul_38/x	Square_11*
T0* 
_output_shapes
:
АHА
H
add_23Addmul_37mul_38*
T0* 
_output_shapes
:
АHА
Ь
	Assign_25AssignVariable_13add_23*
_class
loc:@Variable_13*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:
АHА
M
mul_39/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
M
mul_39Mulmul_39/xVariable_6/read*
T0*
_output_shapes
:

d
	Square_12Square*gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

M
mul_40/xConst*
dtype0*
valueB
 *═╠L=*
_output_shapes
: 
G
mul_40Mulmul_40/x	Square_12*
T0*
_output_shapes
:

B
add_24Addmul_39mul_40*
T0*
_output_shapes
:

Ф
	Assign_26Assign
Variable_6add_24*
_class
loc:@Variable_6*
validate_shape(*
use_locking(*
T0*
_output_shapes
:

M
add_25/yConst*
dtype0*
valueB
 *w╠+2*
_output_shapes
: 
N
add_25AddVariable_14/readadd_25/y*
T0*
_output_shapes
:

M
Const_44Const*
dtype0*
valueB
 *    *
_output_shapes
: 
M
Const_45Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
Z
clip_by_value_13/MinimumMinimumadd_25Const_45*
T0*
_output_shapes
:

d
clip_by_value_13Maximumclip_by_value_13/MinimumConst_44*
T0*
_output_shapes
:

F
Sqrt_12Sqrtclip_by_value_13*
T0*
_output_shapes
:

g
mul_41Mul*gradients/dense_2/BiasAdd_grad/BiasAddGradSqrt_12*
T0*
_output_shapes
:

M
add_26/yConst*
dtype0*
valueB
 *w╠+2*
_output_shapes
: 
D
add_26Addadd_24add_26/y*
T0*
_output_shapes
:

M
Const_46Const*
dtype0*
valueB
 *    *
_output_shapes
: 
M
Const_47Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
Z
clip_by_value_14/MinimumMinimumadd_26Const_47*
T0*
_output_shapes
:

d
clip_by_value_14Maximumclip_by_value_14/MinimumConst_46*
T0*
_output_shapes
:

F
Sqrt_13Sqrtclip_by_value_14*
T0*
_output_shapes
:

J
	truediv_8RealDivmul_41Sqrt_13*
T0*
_output_shapes
:

F
mul_42Mullr/read	truediv_8*
T0*
_output_shapes
:

L
sub_7Subdense_2/bias/readmul_42*
T0*
_output_shapes
:

Ч
	Assign_27Assigndense_2/biassub_7*
_class
loc:@dense_2/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes
:

M
mul_43/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
N
mul_43Mulmul_43/xVariable_14/read*
T0*
_output_shapes
:

C
	Square_13Square	truediv_8*
T0*
_output_shapes
:

M
mul_44/xConst*
dtype0*
valueB
 *═╠L=*
_output_shapes
: 
G
mul_44Mulmul_44/x	Square_13*
T0*
_output_shapes
:

B
add_27Addmul_43mul_44*
T0*
_output_shapes
:

Ц
	Assign_28AssignVariable_14add_27*
_class
loc:@Variable_14*
validate_shape(*
use_locking(*
T0*
_output_shapes
:

M
mul_45/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
R
mul_45Mulmul_45/xVariable_7/read*
T0*
_output_shapes
:	А

e
	Square_14Square&gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	А

M
mul_46/xConst*
dtype0*
valueB
 *═╠L=*
_output_shapes
: 
L
mul_46Mulmul_46/x	Square_14*
T0*
_output_shapes
:	А

G
add_28Addmul_45mul_46*
T0*
_output_shapes
:	А

Щ
	Assign_29Assign
Variable_7add_28*
_class
loc:@Variable_7*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	А

M
add_29/yConst*
dtype0*
valueB
 *w╠+2*
_output_shapes
: 
S
add_29AddVariable_15/readadd_29/y*
T0*
_output_shapes
:	А

M
Const_48Const*
dtype0*
valueB
 *    *
_output_shapes
: 
M
Const_49Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
_
clip_by_value_15/MinimumMinimumadd_29Const_49*
T0*
_output_shapes
:	А

i
clip_by_value_15Maximumclip_by_value_15/MinimumConst_48*
T0*
_output_shapes
:	А

K
Sqrt_14Sqrtclip_by_value_15*
T0*
_output_shapes
:	А

h
mul_47Mul&gradients/dense_2/MatMul_grad/MatMul_1Sqrt_14*
T0*
_output_shapes
:	А

M
add_30/yConst*
dtype0*
valueB
 *w╠+2*
_output_shapes
: 
I
add_30Addadd_28add_30/y*
T0*
_output_shapes
:	А

M
Const_50Const*
dtype0*
valueB
 *    *
_output_shapes
: 
M
Const_51Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
_
clip_by_value_16/MinimumMinimumadd_30Const_51*
T0*
_output_shapes
:	А

i
clip_by_value_16Maximumclip_by_value_16/MinimumConst_50*
T0*
_output_shapes
:	А

K
Sqrt_15Sqrtclip_by_value_16*
T0*
_output_shapes
:	А

O
	truediv_9RealDivmul_47Sqrt_15*
T0*
_output_shapes
:	А

K
mul_48Mullr/read	truediv_9*
T0*
_output_shapes
:	А

S
sub_8Subdense_2/kernel/readmul_48*
T0*
_output_shapes
:	А

а
	Assign_30Assigndense_2/kernelsub_8*!
_class
loc:@dense_2/kernel*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	А

M
mul_49/xConst*
dtype0*
valueB
 *33s?*
_output_shapes
: 
S
mul_49Mulmul_49/xVariable_15/read*
T0*
_output_shapes
:	А

H
	Square_15Square	truediv_9*
T0*
_output_shapes
:	А

M
mul_50/xConst*
dtype0*
valueB
 *═╠L=*
_output_shapes
: 
L
mul_50Mulmul_50/x	Square_15*
T0*
_output_shapes
:	А

G
add_31Addmul_49mul_50*
T0*
_output_shapes
:	А

Ы
	Assign_31AssignVariable_15add_31*
_class
loc:@Variable_15*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	А

┴

group_depsNoOp^mul_2^Mean_3	^Assign_8	^Assign_9
^Assign_10
^Assign_11
^Assign_12
^Assign_13
^Assign_14
^Assign_15
^Assign_16
^Assign_17
^Assign_18
^Assign_19
^Assign_20
^Assign_21
^Assign_22
^Assign_23
^Assign_24
^Assign_25
^Assign_26
^Assign_27
^Assign_28
^Assign_29
^Assign_30
^Assign_31
Б
init_1NoOp
^lr/Assign^decay/Assign^iterations/Assign^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign^Variable_4/Assign^Variable_5/Assign^Variable_6/Assign^Variable_7/Assign^Variable_8/Assign^Variable_9/Assign^Variable_10/Assign^Variable_11/Assign^Variable_12/Assign^Variable_13/Assign^Variable_14/Assign^Variable_15/Assign
V
Placeholder_8Placeholder*
dtype0*
shape: *
_output_shapes
: 
Ч
	Assign_32AssignVariablePlaceholder_8*
_class
loc:@Variable*
validate_shape(*
use_locking( *
T0*
_output_shapes
: 
n
Placeholder_9Placeholder*
dtype0*
shape: *&
_output_shapes
: 
з
	Assign_33Assign
Variable_1Placeholder_9*
_class
loc:@Variable_1*
validate_shape(*
use_locking( *
T0*&
_output_shapes
: 
W
Placeholder_10Placeholder*
dtype0*
shape:@*
_output_shapes
:@
Ь
	Assign_34Assign
Variable_2Placeholder_10*
_class
loc:@Variable_2*
validate_shape(*
use_locking( *
T0*
_output_shapes
:@
o
Placeholder_11Placeholder*
dtype0*
shape: @*&
_output_shapes
: @
и
	Assign_35Assign
Variable_3Placeholder_11*
_class
loc:@Variable_3*
validate_shape(*
use_locking( *
T0*&
_output_shapes
: @
Y
Placeholder_12Placeholder*
dtype0*
shape:А*
_output_shapes	
:А
Э
	Assign_36Assign
Variable_4Placeholder_12*
_class
loc:@Variable_4*
validate_shape(*
use_locking( *
T0*
_output_shapes	
:А
c
Placeholder_13Placeholder*
dtype0*
shape:
АHА* 
_output_shapes
:
АHА
в
	Assign_37Assign
Variable_5Placeholder_13*
_class
loc:@Variable_5*
validate_shape(*
use_locking( *
T0* 
_output_shapes
:
АHА
W
Placeholder_14Placeholder*
dtype0*
shape:
*
_output_shapes
:

Ь
	Assign_38Assign
Variable_6Placeholder_14*
_class
loc:@Variable_6*
validate_shape(*
use_locking( *
T0*
_output_shapes
:

a
Placeholder_15Placeholder*
dtype0*
shape:	А
*
_output_shapes
:	А

б
	Assign_39Assign
Variable_7Placeholder_15*
_class
loc:@Variable_7*
validate_shape(*
use_locking( *
T0*
_output_shapes
:	А

W
Placeholder_16Placeholder*
dtype0*
shape: *
_output_shapes
: 
Ь
	Assign_40Assign
Variable_8Placeholder_16*
_class
loc:@Variable_8*
validate_shape(*
use_locking( *
T0*
_output_shapes
: 
o
Placeholder_17Placeholder*
dtype0*
shape: *&
_output_shapes
: 
и
	Assign_41Assign
Variable_9Placeholder_17*
_class
loc:@Variable_9*
validate_shape(*
use_locking( *
T0*&
_output_shapes
: 
W
Placeholder_18Placeholder*
dtype0*
shape:@*
_output_shapes
:@
Ю
	Assign_42AssignVariable_10Placeholder_18*
_class
loc:@Variable_10*
validate_shape(*
use_locking( *
T0*
_output_shapes
:@
o
Placeholder_19Placeholder*
dtype0*
shape: @*&
_output_shapes
: @
к
	Assign_43AssignVariable_11Placeholder_19*
_class
loc:@Variable_11*
validate_shape(*
use_locking( *
T0*&
_output_shapes
: @
Y
Placeholder_20Placeholder*
dtype0*
shape:А*
_output_shapes	
:А
Я
	Assign_44AssignVariable_12Placeholder_20*
_class
loc:@Variable_12*
validate_shape(*
use_locking( *
T0*
_output_shapes	
:А
c
Placeholder_21Placeholder*
dtype0*
shape:
АHА* 
_output_shapes
:
АHА
д
	Assign_45AssignVariable_13Placeholder_21*
_class
loc:@Variable_13*
validate_shape(*
use_locking( *
T0* 
_output_shapes
:
АHА
W
Placeholder_22Placeholder*
dtype0*
shape:
*
_output_shapes
:

Ю
	Assign_46AssignVariable_14Placeholder_22*
_class
loc:@Variable_14*
validate_shape(*
use_locking( *
T0*
_output_shapes
:

a
Placeholder_23Placeholder*
dtype0*
shape:	А
*
_output_shapes
:	А

г
	Assign_47AssignVariable_15Placeholder_23*
_class
loc:@Variable_15*
validate_shape(*
use_locking( *
T0*
_output_shapes
:	А

P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_eaf423ebae6b4ee2bde2970cc6489f3a/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
_output_shapes
: *
N
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
╣
save/SaveV2/tensor_namesConst*
dtype0*ь
valueтB▀BVariableB
Variable_1BVariable_10BVariable_11BVariable_12BVariable_13BVariable_14BVariable_15B
Variable_2B
Variable_3B
Variable_4B
Variable_5B
Variable_6B
Variable_7B
Variable_8B
Variable_9Bconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBdecayBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelB
iterationsBlr*
_output_shapes
:
Щ
save/SaveV2/shape_and_slicesConst*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:
х
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariable
Variable_1Variable_10Variable_11Variable_12Variable_13Variable_14Variable_15
Variable_2
Variable_3
Variable_4
Variable_5
Variable_6
Variable_7
Variable_8
Variable_9conv2d_1/biasconv2d_1/kernelconv2d_2/biasconv2d_2/kerneldecaydense_1/biasdense_1/kerneldense_2/biasdense_2/kernel
iterationslr*)
dtypes
2
С
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 
Э
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*

axis *
_output_shapes
:*
T0*
N
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
l
save/RestoreV2/tensor_namesConst*
dtype0*
valueBBVariable*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Р
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ъ
save/AssignAssignVariablesave/RestoreV2*
_class
loc:@Variable*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
p
save/RestoreV2_1/tensor_namesConst*
dtype0*
valueBB
Variable_1*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
о
save/Assign_1Assign
Variable_1save/RestoreV2_1*
_class
loc:@Variable_1*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: 
q
save/RestoreV2_2/tensor_namesConst*
dtype0* 
valueBBVariable_10*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
д
save/Assign_2AssignVariable_10save/RestoreV2_2*
_class
loc:@Variable_10*
validate_shape(*
use_locking(*
T0*
_output_shapes
:@
q
save/RestoreV2_3/tensor_namesConst*
dtype0* 
valueBBVariable_11*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
░
save/Assign_3AssignVariable_11save/RestoreV2_3*
_class
loc:@Variable_11*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: @
q
save/RestoreV2_4/tensor_namesConst*
dtype0* 
valueBBVariable_12*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save/Assign_4AssignVariable_12save/RestoreV2_4*
_class
loc:@Variable_12*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:А
q
save/RestoreV2_5/tensor_namesConst*
dtype0* 
valueBBVariable_13*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
к
save/Assign_5AssignVariable_13save/RestoreV2_5*
_class
loc:@Variable_13*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:
АHА
q
save/RestoreV2_6/tensor_namesConst*
dtype0* 
valueBBVariable_14*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
д
save/Assign_6AssignVariable_14save/RestoreV2_6*
_class
loc:@Variable_14*
validate_shape(*
use_locking(*
T0*
_output_shapes
:

q
save/RestoreV2_7/tensor_namesConst*
dtype0* 
valueBBVariable_15*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save/Assign_7AssignVariable_15save/RestoreV2_7*
_class
loc:@Variable_15*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	А

p
save/RestoreV2_8/tensor_namesConst*
dtype0*
valueBB
Variable_2*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
в
save/Assign_8Assign
Variable_2save/RestoreV2_8*
_class
loc:@Variable_2*
validate_shape(*
use_locking(*
T0*
_output_shapes
:@
p
save/RestoreV2_9/tensor_namesConst*
dtype0*
valueBB
Variable_3*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
о
save/Assign_9Assign
Variable_3save/RestoreV2_9*
_class
loc:@Variable_3*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: @
q
save/RestoreV2_10/tensor_namesConst*
dtype0*
valueBB
Variable_4*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save/Assign_10Assign
Variable_4save/RestoreV2_10*
_class
loc:@Variable_4*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:А
q
save/RestoreV2_11/tensor_namesConst*
dtype0*
valueBB
Variable_5*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
к
save/Assign_11Assign
Variable_5save/RestoreV2_11*
_class
loc:@Variable_5*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:
АHА
q
save/RestoreV2_12/tensor_namesConst*
dtype0*
valueBB
Variable_6*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
д
save/Assign_12Assign
Variable_6save/RestoreV2_12*
_class
loc:@Variable_6*
validate_shape(*
use_locking(*
T0*
_output_shapes
:

q
save/RestoreV2_13/tensor_namesConst*
dtype0*
valueBB
Variable_7*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save/Assign_13Assign
Variable_7save/RestoreV2_13*
_class
loc:@Variable_7*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	А

q
save/RestoreV2_14/tensor_namesConst*
dtype0*
valueBB
Variable_8*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
д
save/Assign_14Assign
Variable_8save/RestoreV2_14*
_class
loc:@Variable_8*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
q
save/RestoreV2_15/tensor_namesConst*
dtype0*
valueBB
Variable_9*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
░
save/Assign_15Assign
Variable_9save/RestoreV2_15*
_class
loc:@Variable_9*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: 
t
save/RestoreV2_16/tensor_namesConst*
dtype0*"
valueBBconv2d_1/bias*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
к
save/Assign_16Assignconv2d_1/biassave/RestoreV2_16* 
_class
loc:@conv2d_1/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
v
save/RestoreV2_17/tensor_namesConst*
dtype0*$
valueBBconv2d_1/kernel*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save/Assign_17Assignconv2d_1/kernelsave/RestoreV2_17*"
_class
loc:@conv2d_1/kernel*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: 
t
save/RestoreV2_18/tensor_namesConst*
dtype0*"
valueBBconv2d_2/bias*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
к
save/Assign_18Assignconv2d_2/biassave/RestoreV2_18* 
_class
loc:@conv2d_2/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes
:@
v
save/RestoreV2_19/tensor_namesConst*
dtype0*$
valueBBconv2d_2/kernel*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save/Assign_19Assignconv2d_2/kernelsave/RestoreV2_19*"
_class
loc:@conv2d_2/kernel*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: @
l
save/RestoreV2_20/tensor_namesConst*
dtype0*
valueBBdecay*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
Ц
save/Assign_20Assigndecaysave/RestoreV2_20*
_class

loc:@decay*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
s
save/RestoreV2_21/tensor_namesConst*
dtype0*!
valueBBdense_1/bias*
_output_shapes
:
k
"save/RestoreV2_21/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save/Assign_21Assigndense_1/biassave/RestoreV2_21*
_class
loc:@dense_1/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:А
u
save/RestoreV2_22/tensor_namesConst*
dtype0*#
valueBBdense_1/kernel*
_output_shapes
:
k
"save/RestoreV2_22/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
▓
save/Assign_22Assigndense_1/kernelsave/RestoreV2_22*!
_class
loc:@dense_1/kernel*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:
АHА
s
save/RestoreV2_23/tensor_namesConst*
dtype0*!
valueBBdense_2/bias*
_output_shapes
:
k
"save/RestoreV2_23/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
и
save/Assign_23Assigndense_2/biassave/RestoreV2_23*
_class
loc:@dense_2/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes
:

u
save/RestoreV2_24/tensor_namesConst*
dtype0*#
valueBBdense_2/kernel*
_output_shapes
:
k
"save/RestoreV2_24/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
▒
save/Assign_24Assigndense_2/kernelsave/RestoreV2_24*!
_class
loc:@dense_2/kernel*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	А

q
save/RestoreV2_25/tensor_namesConst*
dtype0*
valueBB
iterations*
_output_shapes
:
k
"save/RestoreV2_25/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
а
save/Assign_25Assign
iterationssave/RestoreV2_25*
_class
loc:@iterations*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
i
save/RestoreV2_26/tensor_namesConst*
dtype0*
valueBBlr*
_output_shapes
:
k
"save/RestoreV2_26/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
Р
save/Assign_26Assignlrsave/RestoreV2_26*
_class
	loc:@lr*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
┘
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"№
	variablesюы
C
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:0
=
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:0
C
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:0
=
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:0
@
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:0
:
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:0
@
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:0
:
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:0

lr:0	lr/Assign	lr/read:0
%
decay:0decay/Assigndecay/read:0
4
iterations:0iterations/Assigniterations/read:0
.

Variable:0Variable/AssignVariable/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0
4
Variable_2:0Variable_2/AssignVariable_2/read:0
4
Variable_3:0Variable_3/AssignVariable_3/read:0
4
Variable_4:0Variable_4/AssignVariable_4/read:0
4
Variable_5:0Variable_5/AssignVariable_5/read:0
4
Variable_6:0Variable_6/AssignVariable_6/read:0
4
Variable_7:0Variable_7/AssignVariable_7/read:0
4
Variable_8:0Variable_8/AssignVariable_8/read:0
4
Variable_9:0Variable_9/AssignVariable_9/read:0
7
Variable_10:0Variable_10/AssignVariable_10/read:0
7
Variable_11:0Variable_11/AssignVariable_11/read:0
7
Variable_12:0Variable_12/AssignVariable_12/read:0
7
Variable_13:0Variable_13/AssignVariable_13/read:0
7
Variable_14:0Variable_14/AssignVariable_14/read:0
7
Variable_15:0Variable_15/AssignVariable_15/read:0"Ж
trainable_variablesюы
C
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:0
=
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:0
C
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:0
=
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:0
@
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:0
:
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:0
@
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:0
:
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:0

lr:0	lr/Assign	lr/read:0
%
decay:0decay/Assigndecay/read:0
4
iterations:0iterations/Assigniterations/read:0
.

Variable:0Variable/AssignVariable/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0
4
Variable_2:0Variable_2/AssignVariable_2/read:0
4
Variable_3:0Variable_3/AssignVariable_3/read:0
4
Variable_4:0Variable_4/AssignVariable_4/read:0
4
Variable_5:0Variable_5/AssignVariable_5/read:0
4
Variable_6:0Variable_6/AssignVariable_6/read:0
4
Variable_7:0Variable_7/AssignVariable_7/read:0
4
Variable_8:0Variable_8/AssignVariable_8/read:0
4
Variable_9:0Variable_9/AssignVariable_9/read:0
7
Variable_10:0Variable_10/AssignVariable_10/read:0
7
Variable_11:0Variable_11/AssignVariable_11/read:0
7
Variable_12:0Variable_12/AssignVariable_12/read:0
7
Variable_13:0Variable_13/AssignVariable_13/read:0
7
Variable_14:0Variable_14/AssignVariable_14/read:0
7
Variable_15:0Variable_15/AssignVariable_15/read:0*Ш
predictМ
9
inputs/
conv2d_1_input:0         3
outputs(
dense_2/Softmax:0         
tensorflow/serving/predict