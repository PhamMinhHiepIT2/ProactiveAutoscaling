ê6
¶
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
n
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8ç4
¿
3Adam/bidirectional/backward_lstm/lstm_cell_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*D
shared_name53Adam/bidirectional/backward_lstm/lstm_cell_2/bias/v
¸
GAdam/bidirectional/backward_lstm/lstm_cell_2/bias/v/Read/ReadVariableOpReadVariableOp3Adam/bidirectional/backward_lstm/lstm_cell_2/bias/v*
_output_shapes	
:*
dtype0
Û
?Adam/bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *P
shared_nameA?Adam/bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel/v
Ô
SAdam/bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp?Adam/bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel/v*
_output_shapes
:	 *
dtype0
Ç
5Adam/bidirectional/backward_lstm/lstm_cell_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*F
shared_name75Adam/bidirectional/backward_lstm/lstm_cell_2/kernel/v
À
IAdam/bidirectional/backward_lstm/lstm_cell_2/kernel/v/Read/ReadVariableOpReadVariableOp5Adam/bidirectional/backward_lstm/lstm_cell_2/kernel/v*
_output_shapes
:	
*
dtype0
½
2Adam/bidirectional/forward_lstm/lstm_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42Adam/bidirectional/forward_lstm/lstm_cell_1/bias/v
¶
FAdam/bidirectional/forward_lstm/lstm_cell_1/bias/v/Read/ReadVariableOpReadVariableOp2Adam/bidirectional/forward_lstm/lstm_cell_1/bias/v*
_output_shapes	
:*
dtype0
Ù
>Adam/bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *O
shared_name@>Adam/bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel/v
Ò
RAdam/bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp>Adam/bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel/v*
_output_shapes
:	 *
dtype0
Å
4Adam/bidirectional/forward_lstm/lstm_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*E
shared_name64Adam/bidirectional/forward_lstm/lstm_cell_1/kernel/v
¾
HAdam/bidirectional/forward_lstm/lstm_cell_1/kernel/v/Read/ReadVariableOpReadVariableOp4Adam/bidirectional/forward_lstm/lstm_cell_1/kernel/v*
_output_shapes
:	
*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:@*
dtype0
¿
3Adam/bidirectional/backward_lstm/lstm_cell_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*D
shared_name53Adam/bidirectional/backward_lstm/lstm_cell_2/bias/m
¸
GAdam/bidirectional/backward_lstm/lstm_cell_2/bias/m/Read/ReadVariableOpReadVariableOp3Adam/bidirectional/backward_lstm/lstm_cell_2/bias/m*
_output_shapes	
:*
dtype0
Û
?Adam/bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *P
shared_nameA?Adam/bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel/m
Ô
SAdam/bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp?Adam/bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel/m*
_output_shapes
:	 *
dtype0
Ç
5Adam/bidirectional/backward_lstm/lstm_cell_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*F
shared_name75Adam/bidirectional/backward_lstm/lstm_cell_2/kernel/m
À
IAdam/bidirectional/backward_lstm/lstm_cell_2/kernel/m/Read/ReadVariableOpReadVariableOp5Adam/bidirectional/backward_lstm/lstm_cell_2/kernel/m*
_output_shapes
:	
*
dtype0
½
2Adam/bidirectional/forward_lstm/lstm_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42Adam/bidirectional/forward_lstm/lstm_cell_1/bias/m
¶
FAdam/bidirectional/forward_lstm/lstm_cell_1/bias/m/Read/ReadVariableOpReadVariableOp2Adam/bidirectional/forward_lstm/lstm_cell_1/bias/m*
_output_shapes	
:*
dtype0
Ù
>Adam/bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *O
shared_name@>Adam/bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel/m
Ò
RAdam/bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp>Adam/bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel/m*
_output_shapes
:	 *
dtype0
Å
4Adam/bidirectional/forward_lstm/lstm_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*E
shared_name64Adam/bidirectional/forward_lstm/lstm_cell_1/kernel/m
¾
HAdam/bidirectional/forward_lstm/lstm_cell_1/kernel/m/Read/ReadVariableOpReadVariableOp4Adam/bidirectional/forward_lstm/lstm_cell_1/kernel/m*
_output_shapes
:	
*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:@*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
±
,bidirectional/backward_lstm/lstm_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bidirectional/backward_lstm/lstm_cell_2/bias
ª
@bidirectional/backward_lstm/lstm_cell_2/bias/Read/ReadVariableOpReadVariableOp,bidirectional/backward_lstm/lstm_cell_2/bias*
_output_shapes	
:*
dtype0
Í
8bidirectional/backward_lstm/lstm_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *I
shared_name:8bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel
Æ
Lbidirectional/backward_lstm/lstm_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp8bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel*
_output_shapes
:	 *
dtype0
¹
.bidirectional/backward_lstm/lstm_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*?
shared_name0.bidirectional/backward_lstm/lstm_cell_2/kernel
²
Bbidirectional/backward_lstm/lstm_cell_2/kernel/Read/ReadVariableOpReadVariableOp.bidirectional/backward_lstm/lstm_cell_2/kernel*
_output_shapes
:	
*
dtype0
¯
+bidirectional/forward_lstm/lstm_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+bidirectional/forward_lstm/lstm_cell_1/bias
¨
?bidirectional/forward_lstm/lstm_cell_1/bias/Read/ReadVariableOpReadVariableOp+bidirectional/forward_lstm/lstm_cell_1/bias*
_output_shapes	
:*
dtype0
Ë
7bidirectional/forward_lstm/lstm_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *H
shared_name97bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel
Ä
Kbidirectional/forward_lstm/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp7bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel*
_output_shapes
:	 *
dtype0
·
-bidirectional/forward_lstm/lstm_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*>
shared_name/-bidirectional/forward_lstm/lstm_cell_1/kernel
°
Abidirectional/forward_lstm/lstm_cell_1/kernel/Read/ReadVariableOpReadVariableOp-bidirectional/forward_lstm/lstm_cell_1/kernel*
_output_shapes
:	
*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@*
dtype0

#serving_default_bidirectional_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

»
StatefulPartitionedCallStatefulPartitionedCall#serving_default_bidirectional_input-bidirectional/forward_lstm/lstm_cell_1/kernel7bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel+bidirectional/forward_lstm/lstm_cell_1/bias.bidirectional/backward_lstm/lstm_cell_2/kernel8bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel,bidirectional/backward_lstm/lstm_cell_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_1217184

NoOpNoOp
¨\
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ã[
valueÙ[BÖ[ BÏ[
Î
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
·
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
forward_layer
backward_layer*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
¦
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias*
¦
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias*
J
,0
-1
.2
/3
04
15
"6
#7
*8
+9*
J
,0
-1
.2
/3
04
15
"6
#7
*8
+9*
* 
°
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
6
7trace_0
8trace_1
9trace_2
:trace_3* 
6
;trace_0
<trace_1
=trace_2
>trace_3* 
* 

?iter

@beta_1

Abeta_2
	Bdecay
Clearning_rate"mÈ#mÉ*mÊ+mË,mÌ-mÍ.mÎ/mÏ0mÐ1mÑ"vÒ#vÓ*vÔ+vÕ,vÖ-v×.vØ/vÙ0vÚ1vÛ*

Dserving_default* 
.
,0
-1
.2
/3
04
15*
.
,0
-1
.2
/3
04
15*
* 

Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Jtrace_0
Ktrace_1
Ltrace_2
Mtrace_3* 
6
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_3* 
Á
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses
X_random_generator
Ycell
Z
state_spec*
Á
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
a_random_generator
bcell
c
state_spec*
* 
* 
* 

dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

itrace_0* 

jtrace_0* 

"0
#1*

"0
#1*
* 

knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

ptrace_0* 

qtrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

*0
+1*

*0
+1*
* 

rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

wtrace_0* 

xtrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE-bidirectional/forward_lstm/lstm_cell_1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE+bidirectional/forward_lstm/lstm_cell_1/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE.bidirectional/backward_lstm/lstm_cell_2/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE,bidirectional/backward_lstm/lstm_cell_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

y0
z1
{2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

,0
-1
.2*

,0
-1
.2*
* 
¡

|states
}non_trainable_variables

~layers
metrics
 layer_regularization_losses
layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 
ë
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator

state_size

,kernel
-recurrent_kernel
.bias*
* 

/0
01
12*

/0
01
12*
* 
¥
states
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 
ë
 	variables
¡trainable_variables
¢regularization_losses
£	keras_api
¤__call__
+¥&call_and_return_all_conditional_losses
¦_random_generator
§
state_size

/kernel
0recurrent_kernel
1bias*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
¨	variables
©	keras_api

ªtotal

«count*
M
¬	variables
­	keras_api

®total

¯count
°
_fn_kwargs*
M
±	variables
²	keras_api

³total

´count
µ
_fn_kwargs*
* 
* 

Y0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

,0
-1
.2*

,0
-1
.2*
* 

¶non_trainable_variables
·layers
¸metrics
 ¹layer_regularization_losses
ºlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

»trace_0
¼trace_1* 

½trace_0
¾trace_1* 
* 
* 
* 
* 

b0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

/0
01
12*

/0
01
12*
* 

¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
 	variables
¡trainable_variables
¢regularization_losses
¤__call__
+¥&call_and_return_all_conditional_losses
'¥"call_and_return_conditional_losses*

Ätrace_0
Åtrace_1* 

Ætrace_0
Çtrace_1* 
* 
* 

ª0
«1*

¨	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

®0
¯1*

¬	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

³0
´1*

±	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE4Adam/bidirectional/forward_lstm/lstm_cell_1/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE2Adam/bidirectional/forward_lstm/lstm_cell_1/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE5Adam/bidirectional/backward_lstm/lstm_cell_2/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE?Adam/bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE3Adam/bidirectional/backward_lstm/lstm_cell_2/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE4Adam/bidirectional/forward_lstm/lstm_cell_1/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE2Adam/bidirectional/forward_lstm/lstm_cell_1/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE5Adam/bidirectional/backward_lstm/lstm_cell_2/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE?Adam/bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE3Adam/bidirectional/backward_lstm/lstm_cell_2/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
®
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAbidirectional/forward_lstm/lstm_cell_1/kernel/Read/ReadVariableOpKbidirectional/forward_lstm/lstm_cell_1/recurrent_kernel/Read/ReadVariableOp?bidirectional/forward_lstm/lstm_cell_1/bias/Read/ReadVariableOpBbidirectional/backward_lstm/lstm_cell_2/kernel/Read/ReadVariableOpLbidirectional/backward_lstm/lstm_cell_2/recurrent_kernel/Read/ReadVariableOp@bidirectional/backward_lstm/lstm_cell_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOpHAdam/bidirectional/forward_lstm/lstm_cell_1/kernel/m/Read/ReadVariableOpRAdam/bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOpFAdam/bidirectional/forward_lstm/lstm_cell_1/bias/m/Read/ReadVariableOpIAdam/bidirectional/backward_lstm/lstm_cell_2/kernel/m/Read/ReadVariableOpSAdam/bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel/m/Read/ReadVariableOpGAdam/bidirectional/backward_lstm/lstm_cell_2/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpHAdam/bidirectional/forward_lstm/lstm_cell_1/kernel/v/Read/ReadVariableOpRAdam/bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOpFAdam/bidirectional/forward_lstm/lstm_cell_1/bias/v/Read/ReadVariableOpIAdam/bidirectional/backward_lstm/lstm_cell_2/kernel/v/Read/ReadVariableOpSAdam/bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel/v/Read/ReadVariableOpGAdam/bidirectional/backward_lstm/lstm_cell_2/bias/v/Read/ReadVariableOpConst*6
Tin/
-2+	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_save_1220692
õ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/bias-bidirectional/forward_lstm/lstm_cell_1/kernel7bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel+bidirectional/forward_lstm/lstm_cell_1/bias.bidirectional/backward_lstm/lstm_cell_2/kernel8bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel,bidirectional/backward_lstm/lstm_cell_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_2count_2total_1count_1totalcountAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/m4Adam/bidirectional/forward_lstm/lstm_cell_1/kernel/m>Adam/bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel/m2Adam/bidirectional/forward_lstm/lstm_cell_1/bias/m5Adam/bidirectional/backward_lstm/lstm_cell_2/kernel/m?Adam/bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel/m3Adam/bidirectional/backward_lstm/lstm_cell_2/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v4Adam/bidirectional/forward_lstm/lstm_cell_1/kernel/v>Adam/bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel/v2Adam/bidirectional/forward_lstm/lstm_cell_1/bias/v5Adam/bidirectional/backward_lstm/lstm_cell_2/kernel/v?Adam/bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel/v3Adam/bidirectional/backward_lstm/lstm_cell_2/bias/v*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__traced_restore_1220825¡2
Õ

H__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1215286

inputs

states
states_11
matmul_readvariableop_resource:	
3
 matmul_1_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates
Õ

H__inference_lstm_cell_1_layer_call_and_return_conditional_losses_1214934

inputs

states
states_11
matmul_readvariableop_resource:	
3
 matmul_1_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates
¨d

8sequential_bidirectional_forward_lstm_while_body_1214623h
dsequential_bidirectional_forward_lstm_while_sequential_bidirectional_forward_lstm_while_loop_countern
jsequential_bidirectional_forward_lstm_while_sequential_bidirectional_forward_lstm_while_maximum_iterations;
7sequential_bidirectional_forward_lstm_while_placeholder=
9sequential_bidirectional_forward_lstm_while_placeholder_1=
9sequential_bidirectional_forward_lstm_while_placeholder_2=
9sequential_bidirectional_forward_lstm_while_placeholder_3g
csequential_bidirectional_forward_lstm_while_sequential_bidirectional_forward_lstm_strided_slice_1_0¤
sequential_bidirectional_forward_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_bidirectional_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0k
Xsequential_bidirectional_forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0:	
m
Zsequential_bidirectional_forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 h
Ysequential_bidirectional_forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0:	8
4sequential_bidirectional_forward_lstm_while_identity:
6sequential_bidirectional_forward_lstm_while_identity_1:
6sequential_bidirectional_forward_lstm_while_identity_2:
6sequential_bidirectional_forward_lstm_while_identity_3:
6sequential_bidirectional_forward_lstm_while_identity_4:
6sequential_bidirectional_forward_lstm_while_identity_5e
asequential_bidirectional_forward_lstm_while_sequential_bidirectional_forward_lstm_strided_slice_1¢
sequential_bidirectional_forward_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_bidirectional_forward_lstm_tensorarrayunstack_tensorlistfromtensori
Vsequential_bidirectional_forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource:	
k
Xsequential_bidirectional_forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource:	 f
Wsequential_bidirectional_forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource:	¢Nsequential/bidirectional/forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp¢Msequential/bidirectional/forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp¢Osequential/bidirectional/forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp®
]sequential/bidirectional/forward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   å
Osequential/bidirectional/forward_lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_bidirectional_forward_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_bidirectional_forward_lstm_tensorarrayunstack_tensorlistfromtensor_07sequential_bidirectional_forward_lstm_while_placeholderfsequential/bidirectional/forward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0ç
Msequential/bidirectional/forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpXsequential_bidirectional_forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0ª
>sequential/bidirectional/forward_lstm/while/lstm_cell_1/MatMulMatMulVsequential/bidirectional/forward_lstm/while/TensorArrayV2Read/TensorListGetItem:item:0Usequential/bidirectional/forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿë
Osequential/bidirectional/forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpZsequential_bidirectional_forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0
@sequential/bidirectional/forward_lstm/while/lstm_cell_1/MatMul_1MatMul9sequential_bidirectional_forward_lstm_while_placeholder_2Wsequential/bidirectional/forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
;sequential/bidirectional/forward_lstm/while/lstm_cell_1/addAddV2Hsequential/bidirectional/forward_lstm/while/lstm_cell_1/MatMul:product:0Jsequential/bidirectional/forward_lstm/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿå
Nsequential/bidirectional/forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpYsequential_bidirectional_forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
?sequential/bidirectional/forward_lstm/while/lstm_cell_1/BiasAddBiasAdd?sequential/bidirectional/forward_lstm/while/lstm_cell_1/add:z:0Vsequential/bidirectional/forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Gsequential/bidirectional/forward_lstm/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Þ
=sequential/bidirectional/forward_lstm/while/lstm_cell_1/splitSplitPsequential/bidirectional/forward_lstm/while/lstm_cell_1/split/split_dim:output:0Hsequential/bidirectional/forward_lstm/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitÄ
?sequential/bidirectional/forward_lstm/while/lstm_cell_1/SigmoidSigmoidFsequential/bidirectional/forward_lstm/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Æ
Asequential/bidirectional/forward_lstm/while/lstm_cell_1/Sigmoid_1SigmoidFsequential/bidirectional/forward_lstm/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ö
;sequential/bidirectional/forward_lstm/while/lstm_cell_1/mulMulEsequential/bidirectional/forward_lstm/while/lstm_cell_1/Sigmoid_1:y:09sequential_bidirectional_forward_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¾
<sequential/bidirectional/forward_lstm/while/lstm_cell_1/ReluReluFsequential/bidirectional/forward_lstm/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
=sequential/bidirectional/forward_lstm/while/lstm_cell_1/mul_1MulCsequential/bidirectional/forward_lstm/while/lstm_cell_1/Sigmoid:y:0Jsequential/bidirectional/forward_lstm/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ü
=sequential/bidirectional/forward_lstm/while/lstm_cell_1/add_1AddV2?sequential/bidirectional/forward_lstm/while/lstm_cell_1/mul:z:0Asequential/bidirectional/forward_lstm/while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Æ
Asequential/bidirectional/forward_lstm/while/lstm_cell_1/Sigmoid_2SigmoidFsequential/bidirectional/forward_lstm/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ »
>sequential/bidirectional/forward_lstm/while/lstm_cell_1/Relu_1ReluAsequential/bidirectional/forward_lstm/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
=sequential/bidirectional/forward_lstm/while/lstm_cell_1/mul_2MulEsequential/bidirectional/forward_lstm/while/lstm_cell_1/Sigmoid_2:y:0Lsequential/bidirectional/forward_lstm/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ü
Psequential/bidirectional/forward_lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem9sequential_bidirectional_forward_lstm_while_placeholder_17sequential_bidirectional_forward_lstm_while_placeholderAsequential/bidirectional/forward_lstm/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒs
1sequential/bidirectional/forward_lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Î
/sequential/bidirectional/forward_lstm/while/addAddV27sequential_bidirectional_forward_lstm_while_placeholder:sequential/bidirectional/forward_lstm/while/add/y:output:0*
T0*
_output_shapes
: u
3sequential/bidirectional/forward_lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ÿ
1sequential/bidirectional/forward_lstm/while/add_1AddV2dsequential_bidirectional_forward_lstm_while_sequential_bidirectional_forward_lstm_while_loop_counter<sequential/bidirectional/forward_lstm/while/add_1/y:output:0*
T0*
_output_shapes
: Ë
4sequential/bidirectional/forward_lstm/while/IdentityIdentity5sequential/bidirectional/forward_lstm/while/add_1:z:01^sequential/bidirectional/forward_lstm/while/NoOp*
T0*
_output_shapes
: 
6sequential/bidirectional/forward_lstm/while/Identity_1Identityjsequential_bidirectional_forward_lstm_while_sequential_bidirectional_forward_lstm_while_maximum_iterations1^sequential/bidirectional/forward_lstm/while/NoOp*
T0*
_output_shapes
: Ë
6sequential/bidirectional/forward_lstm/while/Identity_2Identity3sequential/bidirectional/forward_lstm/while/add:z:01^sequential/bidirectional/forward_lstm/while/NoOp*
T0*
_output_shapes
: ø
6sequential/bidirectional/forward_lstm/while/Identity_3Identity`sequential/bidirectional/forward_lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^sequential/bidirectional/forward_lstm/while/NoOp*
T0*
_output_shapes
: ê
6sequential/bidirectional/forward_lstm/while/Identity_4IdentityAsequential/bidirectional/forward_lstm/while/lstm_cell_1/mul_2:z:01^sequential/bidirectional/forward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ê
6sequential/bidirectional/forward_lstm/while/Identity_5IdentityAsequential/bidirectional/forward_lstm/while/lstm_cell_1/add_1:z:01^sequential/bidirectional/forward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ å
0sequential/bidirectional/forward_lstm/while/NoOpNoOpO^sequential/bidirectional/forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOpN^sequential/bidirectional/forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOpP^sequential/bidirectional/forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "u
4sequential_bidirectional_forward_lstm_while_identity=sequential/bidirectional/forward_lstm/while/Identity:output:0"y
6sequential_bidirectional_forward_lstm_while_identity_1?sequential/bidirectional/forward_lstm/while/Identity_1:output:0"y
6sequential_bidirectional_forward_lstm_while_identity_2?sequential/bidirectional/forward_lstm/while/Identity_2:output:0"y
6sequential_bidirectional_forward_lstm_while_identity_3?sequential/bidirectional/forward_lstm/while/Identity_3:output:0"y
6sequential_bidirectional_forward_lstm_while_identity_4?sequential/bidirectional/forward_lstm/while/Identity_4:output:0"y
6sequential_bidirectional_forward_lstm_while_identity_5?sequential/bidirectional/forward_lstm/while/Identity_5:output:0"´
Wsequential_bidirectional_forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resourceYsequential_bidirectional_forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0"¶
Xsequential_bidirectional_forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resourceZsequential_bidirectional_forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0"²
Vsequential_bidirectional_forward_lstm_while_lstm_cell_1_matmul_readvariableop_resourceXsequential_bidirectional_forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0"È
asequential_bidirectional_forward_lstm_while_sequential_bidirectional_forward_lstm_strided_slice_1csequential_bidirectional_forward_lstm_while_sequential_bidirectional_forward_lstm_strided_slice_1_0"Â
sequential_bidirectional_forward_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_bidirectional_forward_lstm_tensorarrayunstack_tensorlistfromtensorsequential_bidirectional_forward_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_bidirectional_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2 
Nsequential/bidirectional/forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOpNsequential/bidirectional/forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp2
Msequential/bidirectional/forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOpMsequential/bidirectional/forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp2¢
Osequential/bidirectional/forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOpOsequential/bidirectional/forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
Ý

H__inference_lstm_cell_1_layer_call_and_return_conditional_losses_1220416

inputs
states_0
states_11
matmul_readvariableop_resource:	
3
 matmul_1_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/1
Ï	

/__inference_bidirectional_layer_call_fn_1217857
inputs_0
unknown:	

	unknown_0:	 
	unknown_1:	
	unknown_2:	

	unknown_3:	 
	unknown_4:	
identity¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_bidirectional_layer_call_and_return_conditional_losses_1215885|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
º
È
while_cond_1215973
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1215973___redundant_placeholder05
1while_while_cond_1215973___redundant_placeholder15
1while_while_cond_1215973___redundant_placeholder25
1while_while_cond_1215973___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
æê
©
G__inference_sequential_layer_call_and_return_conditional_losses_1217840

inputsX
Ebidirectional_forward_lstm_lstm_cell_1_matmul_readvariableop_resource:	
Z
Gbidirectional_forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource:	 U
Fbidirectional_forward_lstm_lstm_cell_1_biasadd_readvariableop_resource:	Y
Fbidirectional_backward_lstm_lstm_cell_2_matmul_readvariableop_resource:	
[
Hbidirectional_backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource:	 V
Gbidirectional_backward_lstm_lstm_cell_2_biasadd_readvariableop_resource:	6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity¢>bidirectional/backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp¢=bidirectional/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp¢?bidirectional/backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp¢!bidirectional/backward_lstm/while¢=bidirectional/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp¢<bidirectional/forward_lstm/lstm_cell_1/MatMul/ReadVariableOp¢>bidirectional/forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp¢ bidirectional/forward_lstm/while¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOpV
 bidirectional/forward_lstm/ShapeShapeinputs*
T0*
_output_shapes
:x
.bidirectional/forward_lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0bidirectional/forward_lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0bidirectional/forward_lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
(bidirectional/forward_lstm/strided_sliceStridedSlice)bidirectional/forward_lstm/Shape:output:07bidirectional/forward_lstm/strided_slice/stack:output:09bidirectional/forward_lstm/strided_slice/stack_1:output:09bidirectional/forward_lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)bidirectional/forward_lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : Ä
'bidirectional/forward_lstm/zeros/packedPack1bidirectional/forward_lstm/strided_slice:output:02bidirectional/forward_lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:k
&bidirectional/forward_lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
 bidirectional/forward_lstm/zerosFill0bidirectional/forward_lstm/zeros/packed:output:0/bidirectional/forward_lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
+bidirectional/forward_lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : È
)bidirectional/forward_lstm/zeros_1/packedPack1bidirectional/forward_lstm/strided_slice:output:04bidirectional/forward_lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:m
(bidirectional/forward_lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ã
"bidirectional/forward_lstm/zeros_1Fill2bidirectional/forward_lstm/zeros_1/packed:output:01bidirectional/forward_lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ~
)bidirectional/forward_lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
$bidirectional/forward_lstm/transpose	Transposeinputs2bidirectional/forward_lstm/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
"bidirectional/forward_lstm/Shape_1Shape(bidirectional/forward_lstm/transpose:y:0*
T0*
_output_shapes
:z
0bidirectional/forward_lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2bidirectional/forward_lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2bidirectional/forward_lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*bidirectional/forward_lstm/strided_slice_1StridedSlice+bidirectional/forward_lstm/Shape_1:output:09bidirectional/forward_lstm/strided_slice_1/stack:output:0;bidirectional/forward_lstm/strided_slice_1/stack_1:output:0;bidirectional/forward_lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
6bidirectional/forward_lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
(bidirectional/forward_lstm/TensorArrayV2TensorListReserve?bidirectional/forward_lstm/TensorArrayV2/element_shape:output:03bidirectional/forward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ¡
Pbidirectional/forward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ±
Bbidirectional/forward_lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(bidirectional/forward_lstm/transpose:y:0Ybidirectional/forward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒz
0bidirectional/forward_lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2bidirectional/forward_lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2bidirectional/forward_lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ð
*bidirectional/forward_lstm/strided_slice_2StridedSlice(bidirectional/forward_lstm/transpose:y:09bidirectional/forward_lstm/strided_slice_2/stack:output:0;bidirectional/forward_lstm/strided_slice_2/stack_1:output:0;bidirectional/forward_lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskÃ
<bidirectional/forward_lstm/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpEbidirectional_forward_lstm_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0å
-bidirectional/forward_lstm/lstm_cell_1/MatMulMatMul3bidirectional/forward_lstm/strided_slice_2:output:0Dbidirectional/forward_lstm/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
>bidirectional/forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGbidirectional_forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0ß
/bidirectional/forward_lstm/lstm_cell_1/MatMul_1MatMul)bidirectional/forward_lstm/zeros:output:0Fbidirectional/forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
*bidirectional/forward_lstm/lstm_cell_1/addAddV27bidirectional/forward_lstm/lstm_cell_1/MatMul:product:09bidirectional/forward_lstm/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
=bidirectional/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpFbidirectional_forward_lstm_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ã
.bidirectional/forward_lstm/lstm_cell_1/BiasAddBiasAdd.bidirectional/forward_lstm/lstm_cell_1/add:z:0Ebidirectional/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
6bidirectional/forward_lstm/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :«
,bidirectional/forward_lstm/lstm_cell_1/splitSplit?bidirectional/forward_lstm/lstm_cell_1/split/split_dim:output:07bidirectional/forward_lstm/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split¢
.bidirectional/forward_lstm/lstm_cell_1/SigmoidSigmoid5bidirectional/forward_lstm/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¤
0bidirectional/forward_lstm/lstm_cell_1/Sigmoid_1Sigmoid5bidirectional/forward_lstm/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Æ
*bidirectional/forward_lstm/lstm_cell_1/mulMul4bidirectional/forward_lstm/lstm_cell_1/Sigmoid_1:y:0+bidirectional/forward_lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+bidirectional/forward_lstm/lstm_cell_1/ReluRelu5bidirectional/forward_lstm/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ô
,bidirectional/forward_lstm/lstm_cell_1/mul_1Mul2bidirectional/forward_lstm/lstm_cell_1/Sigmoid:y:09bidirectional/forward_lstm/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ É
,bidirectional/forward_lstm/lstm_cell_1/add_1AddV2.bidirectional/forward_lstm/lstm_cell_1/mul:z:00bidirectional/forward_lstm/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¤
0bidirectional/forward_lstm/lstm_cell_1/Sigmoid_2Sigmoid5bidirectional/forward_lstm/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-bidirectional/forward_lstm/lstm_cell_1/Relu_1Relu0bidirectional/forward_lstm/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ø
,bidirectional/forward_lstm/lstm_cell_1/mul_2Mul4bidirectional/forward_lstm/lstm_cell_1/Sigmoid_2:y:0;bidirectional/forward_lstm/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
8bidirectional/forward_lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
*bidirectional/forward_lstm/TensorArrayV2_1TensorListReserveAbidirectional/forward_lstm/TensorArrayV2_1/element_shape:output:03bidirectional/forward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒa
bidirectional/forward_lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : ~
3bidirectional/forward_lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿo
-bidirectional/forward_lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : û
 bidirectional/forward_lstm/whileWhile6bidirectional/forward_lstm/while/loop_counter:output:0<bidirectional/forward_lstm/while/maximum_iterations:output:0(bidirectional/forward_lstm/time:output:03bidirectional/forward_lstm/TensorArrayV2_1:handle:0)bidirectional/forward_lstm/zeros:output:0+bidirectional/forward_lstm/zeros_1:output:03bidirectional/forward_lstm/strided_slice_1:output:0Rbidirectional/forward_lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ebidirectional_forward_lstm_lstm_cell_1_matmul_readvariableop_resourceGbidirectional_forward_lstm_lstm_cell_1_matmul_1_readvariableop_resourceFbidirectional_forward_lstm_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *9
body1R/
-bidirectional_forward_lstm_while_body_1217596*9
cond1R/
-bidirectional_forward_lstm_while_cond_1217595*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
Kbidirectional/forward_lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
=bidirectional/forward_lstm/TensorArrayV2Stack/TensorListStackTensorListStack)bidirectional/forward_lstm/while:output:3Tbidirectional/forward_lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0
0bidirectional/forward_lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ|
2bidirectional/forward_lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: |
2bidirectional/forward_lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
*bidirectional/forward_lstm/strided_slice_3StridedSliceFbidirectional/forward_lstm/TensorArrayV2Stack/TensorListStack:tensor:09bidirectional/forward_lstm/strided_slice_3/stack:output:0;bidirectional/forward_lstm/strided_slice_3/stack_1:output:0;bidirectional/forward_lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask
+bidirectional/forward_lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ç
&bidirectional/forward_lstm/transpose_1	TransposeFbidirectional/forward_lstm/TensorArrayV2Stack/TensorListStack:tensor:04bidirectional/forward_lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ v
"bidirectional/forward_lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    W
!bidirectional/backward_lstm/ShapeShapeinputs*
T0*
_output_shapes
:y
/bidirectional/backward_lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1bidirectional/backward_lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1bidirectional/backward_lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
)bidirectional/backward_lstm/strided_sliceStridedSlice*bidirectional/backward_lstm/Shape:output:08bidirectional/backward_lstm/strided_slice/stack:output:0:bidirectional/backward_lstm/strided_slice/stack_1:output:0:bidirectional/backward_lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*bidirectional/backward_lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : Ç
(bidirectional/backward_lstm/zeros/packedPack2bidirectional/backward_lstm/strided_slice:output:03bidirectional/backward_lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:l
'bidirectional/backward_lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    À
!bidirectional/backward_lstm/zerosFill1bidirectional/backward_lstm/zeros/packed:output:00bidirectional/backward_lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
,bidirectional/backward_lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : Ë
*bidirectional/backward_lstm/zeros_1/packedPack2bidirectional/backward_lstm/strided_slice:output:05bidirectional/backward_lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:n
)bidirectional/backward_lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Æ
#bidirectional/backward_lstm/zeros_1Fill3bidirectional/backward_lstm/zeros_1/packed:output:02bidirectional/backward_lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
*bidirectional/backward_lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¥
%bidirectional/backward_lstm/transpose	Transposeinputs3bidirectional/backward_lstm/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
#bidirectional/backward_lstm/Shape_1Shape)bidirectional/backward_lstm/transpose:y:0*
T0*
_output_shapes
:{
1bidirectional/backward_lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3bidirectional/backward_lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3bidirectional/backward_lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+bidirectional/backward_lstm/strided_slice_1StridedSlice,bidirectional/backward_lstm/Shape_1:output:0:bidirectional/backward_lstm/strided_slice_1/stack:output:0<bidirectional/backward_lstm/strided_slice_1/stack_1:output:0<bidirectional/backward_lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
7bidirectional/backward_lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
)bidirectional/backward_lstm/TensorArrayV2TensorListReserve@bidirectional/backward_lstm/TensorArrayV2/element_shape:output:04bidirectional/backward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒt
*bidirectional/backward_lstm/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: È
%bidirectional/backward_lstm/ReverseV2	ReverseV2)bidirectional/backward_lstm/transpose:y:03bidirectional/backward_lstm/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
Qbidirectional/backward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ¹
Cbidirectional/backward_lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor.bidirectional/backward_lstm/ReverseV2:output:0Zbidirectional/backward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ{
1bidirectional/backward_lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3bidirectional/backward_lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3bidirectional/backward_lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
+bidirectional/backward_lstm/strided_slice_2StridedSlice)bidirectional/backward_lstm/transpose:y:0:bidirectional/backward_lstm/strided_slice_2/stack:output:0<bidirectional/backward_lstm/strided_slice_2/stack_1:output:0<bidirectional/backward_lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskÅ
=bidirectional/backward_lstm/lstm_cell_2/MatMul/ReadVariableOpReadVariableOpFbidirectional_backward_lstm_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0è
.bidirectional/backward_lstm/lstm_cell_2/MatMulMatMul4bidirectional/backward_lstm/strided_slice_2:output:0Ebidirectional/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
?bidirectional/backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpHbidirectional_backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0â
0bidirectional/backward_lstm/lstm_cell_2/MatMul_1MatMul*bidirectional/backward_lstm/zeros:output:0Gbidirectional/backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÝ
+bidirectional/backward_lstm/lstm_cell_2/addAddV28bidirectional/backward_lstm/lstm_cell_2/MatMul:product:0:bidirectional/backward_lstm/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
>bidirectional/backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpGbidirectional_backward_lstm_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0æ
/bidirectional/backward_lstm/lstm_cell_2/BiasAddBiasAdd/bidirectional/backward_lstm/lstm_cell_2/add:z:0Fbidirectional/backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
7bidirectional/backward_lstm/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :®
-bidirectional/backward_lstm/lstm_cell_2/splitSplit@bidirectional/backward_lstm/lstm_cell_2/split/split_dim:output:08bidirectional/backward_lstm/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split¤
/bidirectional/backward_lstm/lstm_cell_2/SigmoidSigmoid6bidirectional/backward_lstm/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
1bidirectional/backward_lstm/lstm_cell_2/Sigmoid_1Sigmoid6bidirectional/backward_lstm/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ É
+bidirectional/backward_lstm/lstm_cell_2/mulMul5bidirectional/backward_lstm/lstm_cell_2/Sigmoid_1:y:0,bidirectional/backward_lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
,bidirectional/backward_lstm/lstm_cell_2/ReluRelu6bidirectional/backward_lstm/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ×
-bidirectional/backward_lstm/lstm_cell_2/mul_1Mul3bidirectional/backward_lstm/lstm_cell_2/Sigmoid:y:0:bidirectional/backward_lstm/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ì
-bidirectional/backward_lstm/lstm_cell_2/add_1AddV2/bidirectional/backward_lstm/lstm_cell_2/mul:z:01bidirectional/backward_lstm/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
1bidirectional/backward_lstm/lstm_cell_2/Sigmoid_2Sigmoid6bidirectional/backward_lstm/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
.bidirectional/backward_lstm/lstm_cell_2/Relu_1Relu1bidirectional/backward_lstm/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Û
-bidirectional/backward_lstm/lstm_cell_2/mul_2Mul5bidirectional/backward_lstm/lstm_cell_2/Sigmoid_2:y:0<bidirectional/backward_lstm/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
9bidirectional/backward_lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
+bidirectional/backward_lstm/TensorArrayV2_1TensorListReserveBbidirectional/backward_lstm/TensorArrayV2_1/element_shape:output:04bidirectional/backward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒb
 bidirectional/backward_lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 
4bidirectional/backward_lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿp
.bidirectional/backward_lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
!bidirectional/backward_lstm/whileWhile7bidirectional/backward_lstm/while/loop_counter:output:0=bidirectional/backward_lstm/while/maximum_iterations:output:0)bidirectional/backward_lstm/time:output:04bidirectional/backward_lstm/TensorArrayV2_1:handle:0*bidirectional/backward_lstm/zeros:output:0,bidirectional/backward_lstm/zeros_1:output:04bidirectional/backward_lstm/strided_slice_1:output:0Sbidirectional/backward_lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fbidirectional_backward_lstm_lstm_cell_2_matmul_readvariableop_resourceHbidirectional_backward_lstm_lstm_cell_2_matmul_1_readvariableop_resourceGbidirectional_backward_lstm_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *:
body2R0
.bidirectional_backward_lstm_while_body_1217737*:
cond2R0
.bidirectional_backward_lstm_while_cond_1217736*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
Lbidirectional/backward_lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
>bidirectional/backward_lstm/TensorArrayV2Stack/TensorListStackTensorListStack*bidirectional/backward_lstm/while:output:3Ubidirectional/backward_lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0
1bidirectional/backward_lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ}
3bidirectional/backward_lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3bidirectional/backward_lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
+bidirectional/backward_lstm/strided_slice_3StridedSliceGbidirectional/backward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0:bidirectional/backward_lstm/strided_slice_3/stack:output:0<bidirectional/backward_lstm/strided_slice_3/stack_1:output:0<bidirectional/backward_lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask
,bidirectional/backward_lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ê
'bidirectional/backward_lstm/transpose_1	TransposeGbidirectional/backward_lstm/TensorArrayV2Stack/TensorListStack:tensor:05bidirectional/backward_lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
#bidirectional/backward_lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    f
bidirectional/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:®
bidirectional/ReverseV2	ReverseV2+bidirectional/backward_lstm/transpose_1:y:0%bidirectional/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
bidirectional/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ñ
bidirectional/concatConcatV2*bidirectional/forward_lstm/transpose_1:y:0 bidirectional/ReverseV2:output:0"bidirectional/concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
flatten/ReshapeReshapebidirectional/concat:output:0flatten/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp?^bidirectional/backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp>^bidirectional/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp@^bidirectional/backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp"^bidirectional/backward_lstm/while>^bidirectional/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp=^bidirectional/forward_lstm/lstm_cell_1/MatMul/ReadVariableOp?^bidirectional/forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp!^bidirectional/forward_lstm/while^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 2
>bidirectional/backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp>bidirectional/backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp2~
=bidirectional/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp=bidirectional/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp2
?bidirectional/backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp?bidirectional/backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp2F
!bidirectional/backward_lstm/while!bidirectional/backward_lstm/while2~
=bidirectional/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp=bidirectional/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp2|
<bidirectional/forward_lstm/lstm_cell_1/MatMul/ReadVariableOp<bidirectional/forward_lstm/lstm_cell_1/MatMul/ReadVariableOp2
>bidirectional/forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp>bidirectional/forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp2D
 bidirectional/forward_lstm/while bidirectional/forward_lstm/while2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
	

/__inference_bidirectional_layer_call_fn_1217908

inputs
unknown:	

	unknown_0:	 
	unknown_1:	
	unknown_2:	

	unknown_3:	 
	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_bidirectional_layer_call_and_return_conditional_losses_1216977s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
É7
È
while_body_1219356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	
G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	
E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	 @
1while_lstm_cell_1_biasadd_readvariableop_resource:	¢(while/lstm_cell_1/BiasAdd/ReadVariableOp¢'while/lstm_cell_1/MatMul/ReadVariableOp¢)while/lstm_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0¸
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Í

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
æê
©
G__inference_sequential_layer_call_and_return_conditional_losses_1217537

inputsX
Ebidirectional_forward_lstm_lstm_cell_1_matmul_readvariableop_resource:	
Z
Gbidirectional_forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource:	 U
Fbidirectional_forward_lstm_lstm_cell_1_biasadd_readvariableop_resource:	Y
Fbidirectional_backward_lstm_lstm_cell_2_matmul_readvariableop_resource:	
[
Hbidirectional_backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource:	 V
Gbidirectional_backward_lstm_lstm_cell_2_biasadd_readvariableop_resource:	6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity¢>bidirectional/backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp¢=bidirectional/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp¢?bidirectional/backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp¢!bidirectional/backward_lstm/while¢=bidirectional/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp¢<bidirectional/forward_lstm/lstm_cell_1/MatMul/ReadVariableOp¢>bidirectional/forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp¢ bidirectional/forward_lstm/while¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOpV
 bidirectional/forward_lstm/ShapeShapeinputs*
T0*
_output_shapes
:x
.bidirectional/forward_lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0bidirectional/forward_lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0bidirectional/forward_lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
(bidirectional/forward_lstm/strided_sliceStridedSlice)bidirectional/forward_lstm/Shape:output:07bidirectional/forward_lstm/strided_slice/stack:output:09bidirectional/forward_lstm/strided_slice/stack_1:output:09bidirectional/forward_lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)bidirectional/forward_lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : Ä
'bidirectional/forward_lstm/zeros/packedPack1bidirectional/forward_lstm/strided_slice:output:02bidirectional/forward_lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:k
&bidirectional/forward_lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
 bidirectional/forward_lstm/zerosFill0bidirectional/forward_lstm/zeros/packed:output:0/bidirectional/forward_lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
+bidirectional/forward_lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : È
)bidirectional/forward_lstm/zeros_1/packedPack1bidirectional/forward_lstm/strided_slice:output:04bidirectional/forward_lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:m
(bidirectional/forward_lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ã
"bidirectional/forward_lstm/zeros_1Fill2bidirectional/forward_lstm/zeros_1/packed:output:01bidirectional/forward_lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ~
)bidirectional/forward_lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
$bidirectional/forward_lstm/transpose	Transposeinputs2bidirectional/forward_lstm/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
"bidirectional/forward_lstm/Shape_1Shape(bidirectional/forward_lstm/transpose:y:0*
T0*
_output_shapes
:z
0bidirectional/forward_lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2bidirectional/forward_lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2bidirectional/forward_lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*bidirectional/forward_lstm/strided_slice_1StridedSlice+bidirectional/forward_lstm/Shape_1:output:09bidirectional/forward_lstm/strided_slice_1/stack:output:0;bidirectional/forward_lstm/strided_slice_1/stack_1:output:0;bidirectional/forward_lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
6bidirectional/forward_lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
(bidirectional/forward_lstm/TensorArrayV2TensorListReserve?bidirectional/forward_lstm/TensorArrayV2/element_shape:output:03bidirectional/forward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ¡
Pbidirectional/forward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ±
Bbidirectional/forward_lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(bidirectional/forward_lstm/transpose:y:0Ybidirectional/forward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒz
0bidirectional/forward_lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2bidirectional/forward_lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2bidirectional/forward_lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ð
*bidirectional/forward_lstm/strided_slice_2StridedSlice(bidirectional/forward_lstm/transpose:y:09bidirectional/forward_lstm/strided_slice_2/stack:output:0;bidirectional/forward_lstm/strided_slice_2/stack_1:output:0;bidirectional/forward_lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskÃ
<bidirectional/forward_lstm/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpEbidirectional_forward_lstm_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0å
-bidirectional/forward_lstm/lstm_cell_1/MatMulMatMul3bidirectional/forward_lstm/strided_slice_2:output:0Dbidirectional/forward_lstm/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
>bidirectional/forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGbidirectional_forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0ß
/bidirectional/forward_lstm/lstm_cell_1/MatMul_1MatMul)bidirectional/forward_lstm/zeros:output:0Fbidirectional/forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
*bidirectional/forward_lstm/lstm_cell_1/addAddV27bidirectional/forward_lstm/lstm_cell_1/MatMul:product:09bidirectional/forward_lstm/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
=bidirectional/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpFbidirectional_forward_lstm_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ã
.bidirectional/forward_lstm/lstm_cell_1/BiasAddBiasAdd.bidirectional/forward_lstm/lstm_cell_1/add:z:0Ebidirectional/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
6bidirectional/forward_lstm/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :«
,bidirectional/forward_lstm/lstm_cell_1/splitSplit?bidirectional/forward_lstm/lstm_cell_1/split/split_dim:output:07bidirectional/forward_lstm/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split¢
.bidirectional/forward_lstm/lstm_cell_1/SigmoidSigmoid5bidirectional/forward_lstm/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¤
0bidirectional/forward_lstm/lstm_cell_1/Sigmoid_1Sigmoid5bidirectional/forward_lstm/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Æ
*bidirectional/forward_lstm/lstm_cell_1/mulMul4bidirectional/forward_lstm/lstm_cell_1/Sigmoid_1:y:0+bidirectional/forward_lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+bidirectional/forward_lstm/lstm_cell_1/ReluRelu5bidirectional/forward_lstm/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ô
,bidirectional/forward_lstm/lstm_cell_1/mul_1Mul2bidirectional/forward_lstm/lstm_cell_1/Sigmoid:y:09bidirectional/forward_lstm/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ É
,bidirectional/forward_lstm/lstm_cell_1/add_1AddV2.bidirectional/forward_lstm/lstm_cell_1/mul:z:00bidirectional/forward_lstm/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¤
0bidirectional/forward_lstm/lstm_cell_1/Sigmoid_2Sigmoid5bidirectional/forward_lstm/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-bidirectional/forward_lstm/lstm_cell_1/Relu_1Relu0bidirectional/forward_lstm/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ø
,bidirectional/forward_lstm/lstm_cell_1/mul_2Mul4bidirectional/forward_lstm/lstm_cell_1/Sigmoid_2:y:0;bidirectional/forward_lstm/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
8bidirectional/forward_lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
*bidirectional/forward_lstm/TensorArrayV2_1TensorListReserveAbidirectional/forward_lstm/TensorArrayV2_1/element_shape:output:03bidirectional/forward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒa
bidirectional/forward_lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : ~
3bidirectional/forward_lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿo
-bidirectional/forward_lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : û
 bidirectional/forward_lstm/whileWhile6bidirectional/forward_lstm/while/loop_counter:output:0<bidirectional/forward_lstm/while/maximum_iterations:output:0(bidirectional/forward_lstm/time:output:03bidirectional/forward_lstm/TensorArrayV2_1:handle:0)bidirectional/forward_lstm/zeros:output:0+bidirectional/forward_lstm/zeros_1:output:03bidirectional/forward_lstm/strided_slice_1:output:0Rbidirectional/forward_lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ebidirectional_forward_lstm_lstm_cell_1_matmul_readvariableop_resourceGbidirectional_forward_lstm_lstm_cell_1_matmul_1_readvariableop_resourceFbidirectional_forward_lstm_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *9
body1R/
-bidirectional_forward_lstm_while_body_1217293*9
cond1R/
-bidirectional_forward_lstm_while_cond_1217292*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
Kbidirectional/forward_lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
=bidirectional/forward_lstm/TensorArrayV2Stack/TensorListStackTensorListStack)bidirectional/forward_lstm/while:output:3Tbidirectional/forward_lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0
0bidirectional/forward_lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ|
2bidirectional/forward_lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: |
2bidirectional/forward_lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
*bidirectional/forward_lstm/strided_slice_3StridedSliceFbidirectional/forward_lstm/TensorArrayV2Stack/TensorListStack:tensor:09bidirectional/forward_lstm/strided_slice_3/stack:output:0;bidirectional/forward_lstm/strided_slice_3/stack_1:output:0;bidirectional/forward_lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask
+bidirectional/forward_lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ç
&bidirectional/forward_lstm/transpose_1	TransposeFbidirectional/forward_lstm/TensorArrayV2Stack/TensorListStack:tensor:04bidirectional/forward_lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ v
"bidirectional/forward_lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    W
!bidirectional/backward_lstm/ShapeShapeinputs*
T0*
_output_shapes
:y
/bidirectional/backward_lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1bidirectional/backward_lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1bidirectional/backward_lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
)bidirectional/backward_lstm/strided_sliceStridedSlice*bidirectional/backward_lstm/Shape:output:08bidirectional/backward_lstm/strided_slice/stack:output:0:bidirectional/backward_lstm/strided_slice/stack_1:output:0:bidirectional/backward_lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*bidirectional/backward_lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : Ç
(bidirectional/backward_lstm/zeros/packedPack2bidirectional/backward_lstm/strided_slice:output:03bidirectional/backward_lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:l
'bidirectional/backward_lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    À
!bidirectional/backward_lstm/zerosFill1bidirectional/backward_lstm/zeros/packed:output:00bidirectional/backward_lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
,bidirectional/backward_lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : Ë
*bidirectional/backward_lstm/zeros_1/packedPack2bidirectional/backward_lstm/strided_slice:output:05bidirectional/backward_lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:n
)bidirectional/backward_lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Æ
#bidirectional/backward_lstm/zeros_1Fill3bidirectional/backward_lstm/zeros_1/packed:output:02bidirectional/backward_lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
*bidirectional/backward_lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¥
%bidirectional/backward_lstm/transpose	Transposeinputs3bidirectional/backward_lstm/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
#bidirectional/backward_lstm/Shape_1Shape)bidirectional/backward_lstm/transpose:y:0*
T0*
_output_shapes
:{
1bidirectional/backward_lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3bidirectional/backward_lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3bidirectional/backward_lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+bidirectional/backward_lstm/strided_slice_1StridedSlice,bidirectional/backward_lstm/Shape_1:output:0:bidirectional/backward_lstm/strided_slice_1/stack:output:0<bidirectional/backward_lstm/strided_slice_1/stack_1:output:0<bidirectional/backward_lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
7bidirectional/backward_lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
)bidirectional/backward_lstm/TensorArrayV2TensorListReserve@bidirectional/backward_lstm/TensorArrayV2/element_shape:output:04bidirectional/backward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒt
*bidirectional/backward_lstm/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: È
%bidirectional/backward_lstm/ReverseV2	ReverseV2)bidirectional/backward_lstm/transpose:y:03bidirectional/backward_lstm/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
Qbidirectional/backward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ¹
Cbidirectional/backward_lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor.bidirectional/backward_lstm/ReverseV2:output:0Zbidirectional/backward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ{
1bidirectional/backward_lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3bidirectional/backward_lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3bidirectional/backward_lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
+bidirectional/backward_lstm/strided_slice_2StridedSlice)bidirectional/backward_lstm/transpose:y:0:bidirectional/backward_lstm/strided_slice_2/stack:output:0<bidirectional/backward_lstm/strided_slice_2/stack_1:output:0<bidirectional/backward_lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskÅ
=bidirectional/backward_lstm/lstm_cell_2/MatMul/ReadVariableOpReadVariableOpFbidirectional_backward_lstm_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0è
.bidirectional/backward_lstm/lstm_cell_2/MatMulMatMul4bidirectional/backward_lstm/strided_slice_2:output:0Ebidirectional/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
?bidirectional/backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpHbidirectional_backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0â
0bidirectional/backward_lstm/lstm_cell_2/MatMul_1MatMul*bidirectional/backward_lstm/zeros:output:0Gbidirectional/backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÝ
+bidirectional/backward_lstm/lstm_cell_2/addAddV28bidirectional/backward_lstm/lstm_cell_2/MatMul:product:0:bidirectional/backward_lstm/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
>bidirectional/backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpGbidirectional_backward_lstm_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0æ
/bidirectional/backward_lstm/lstm_cell_2/BiasAddBiasAdd/bidirectional/backward_lstm/lstm_cell_2/add:z:0Fbidirectional/backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
7bidirectional/backward_lstm/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :®
-bidirectional/backward_lstm/lstm_cell_2/splitSplit@bidirectional/backward_lstm/lstm_cell_2/split/split_dim:output:08bidirectional/backward_lstm/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split¤
/bidirectional/backward_lstm/lstm_cell_2/SigmoidSigmoid6bidirectional/backward_lstm/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
1bidirectional/backward_lstm/lstm_cell_2/Sigmoid_1Sigmoid6bidirectional/backward_lstm/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ É
+bidirectional/backward_lstm/lstm_cell_2/mulMul5bidirectional/backward_lstm/lstm_cell_2/Sigmoid_1:y:0,bidirectional/backward_lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
,bidirectional/backward_lstm/lstm_cell_2/ReluRelu6bidirectional/backward_lstm/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ×
-bidirectional/backward_lstm/lstm_cell_2/mul_1Mul3bidirectional/backward_lstm/lstm_cell_2/Sigmoid:y:0:bidirectional/backward_lstm/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ì
-bidirectional/backward_lstm/lstm_cell_2/add_1AddV2/bidirectional/backward_lstm/lstm_cell_2/mul:z:01bidirectional/backward_lstm/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
1bidirectional/backward_lstm/lstm_cell_2/Sigmoid_2Sigmoid6bidirectional/backward_lstm/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
.bidirectional/backward_lstm/lstm_cell_2/Relu_1Relu1bidirectional/backward_lstm/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Û
-bidirectional/backward_lstm/lstm_cell_2/mul_2Mul5bidirectional/backward_lstm/lstm_cell_2/Sigmoid_2:y:0<bidirectional/backward_lstm/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
9bidirectional/backward_lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
+bidirectional/backward_lstm/TensorArrayV2_1TensorListReserveBbidirectional/backward_lstm/TensorArrayV2_1/element_shape:output:04bidirectional/backward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒb
 bidirectional/backward_lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 
4bidirectional/backward_lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿp
.bidirectional/backward_lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
!bidirectional/backward_lstm/whileWhile7bidirectional/backward_lstm/while/loop_counter:output:0=bidirectional/backward_lstm/while/maximum_iterations:output:0)bidirectional/backward_lstm/time:output:04bidirectional/backward_lstm/TensorArrayV2_1:handle:0*bidirectional/backward_lstm/zeros:output:0,bidirectional/backward_lstm/zeros_1:output:04bidirectional/backward_lstm/strided_slice_1:output:0Sbidirectional/backward_lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fbidirectional_backward_lstm_lstm_cell_2_matmul_readvariableop_resourceHbidirectional_backward_lstm_lstm_cell_2_matmul_1_readvariableop_resourceGbidirectional_backward_lstm_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *:
body2R0
.bidirectional_backward_lstm_while_body_1217434*:
cond2R0
.bidirectional_backward_lstm_while_cond_1217433*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
Lbidirectional/backward_lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
>bidirectional/backward_lstm/TensorArrayV2Stack/TensorListStackTensorListStack*bidirectional/backward_lstm/while:output:3Ubidirectional/backward_lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0
1bidirectional/backward_lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ}
3bidirectional/backward_lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3bidirectional/backward_lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
+bidirectional/backward_lstm/strided_slice_3StridedSliceGbidirectional/backward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0:bidirectional/backward_lstm/strided_slice_3/stack:output:0<bidirectional/backward_lstm/strided_slice_3/stack_1:output:0<bidirectional/backward_lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask
,bidirectional/backward_lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ê
'bidirectional/backward_lstm/transpose_1	TransposeGbidirectional/backward_lstm/TensorArrayV2Stack/TensorListStack:tensor:05bidirectional/backward_lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
#bidirectional/backward_lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    f
bidirectional/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:®
bidirectional/ReverseV2	ReverseV2+bidirectional/backward_lstm/transpose_1:y:0%bidirectional/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
bidirectional/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ñ
bidirectional/concatConcatV2*bidirectional/forward_lstm/transpose_1:y:0 bidirectional/ReverseV2:output:0"bidirectional/concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
flatten/ReshapeReshapebidirectional/concat:output:0flatten/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp?^bidirectional/backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp>^bidirectional/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp@^bidirectional/backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp"^bidirectional/backward_lstm/while>^bidirectional/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp=^bidirectional/forward_lstm/lstm_cell_1/MatMul/ReadVariableOp?^bidirectional/forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp!^bidirectional/forward_lstm/while^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 2
>bidirectional/backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp>bidirectional/backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp2~
=bidirectional/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp=bidirectional/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp2
?bidirectional/backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp?bidirectional/backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp2F
!bidirectional/backward_lstm/while!bidirectional/backward_lstm/while2~
=bidirectional/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp=bidirectional/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp2|
<bidirectional/forward_lstm/lstm_cell_1/MatMul/ReadVariableOp<bidirectional/forward_lstm/lstm_cell_1/MatMul/ReadVariableOp2
>bidirectional/forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp>bidirectional/forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp2D
 bidirectional/forward_lstm/while bidirectional/forward_lstm/while2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
³L

J__inference_backward_lstm_layer_call_and_return_conditional_losses_1216058

inputs=
*lstm_cell_2_matmul_readvariableop_resource:	
?
,lstm_cell_2_matmul_1_readvariableop_resource:	 :
+lstm_cell_2_biasadd_readvariableop_resource:	
identity¢"lstm_cell_2/BiasAdd/ReadVariableOp¢!lstm_cell_2/MatMul/ReadVariableOp¢#lstm_cell_2/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿå
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1215974*
condR
while_cond_1215973*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ½
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ

H__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1215432

inputs

states
states_11
matmul_readvariableop_resource:	
3
 matmul_1_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates
Ý

H__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1220514

inputs
states_0
states_11
matmul_readvariableop_resource:	
3
 matmul_1_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/1
ÿF
è
forward_lstm_while_body_12182556
2forward_lstm_while_forward_lstm_while_loop_counter<
8forward_lstm_while_forward_lstm_while_maximum_iterations"
forward_lstm_while_placeholder$
 forward_lstm_while_placeholder_1$
 forward_lstm_while_placeholder_2$
 forward_lstm_while_placeholder_35
1forward_lstm_while_forward_lstm_strided_slice_1_0q
mforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0R
?forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0:	
T
Aforward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 O
@forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0:	
forward_lstm_while_identity!
forward_lstm_while_identity_1!
forward_lstm_while_identity_2!
forward_lstm_while_identity_3!
forward_lstm_while_identity_4!
forward_lstm_while_identity_53
/forward_lstm_while_forward_lstm_strided_slice_1o
kforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensorP
=forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource:	
R
?forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource:	 M
>forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource:	¢5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp¢4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp¢6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp
Dforward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿð
6forward_lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0forward_lstm_while_placeholderMforward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0µ
4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp?forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0ß
%forward_lstm/while/lstm_cell_1/MatMulMatMul=forward_lstm/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpAforward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0Æ
'forward_lstm/while/lstm_cell_1/MatMul_1MatMul forward_lstm_while_placeholder_2>forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
"forward_lstm/while/lstm_cell_1/addAddV2/forward_lstm/while/lstm_cell_1/MatMul:product:01forward_lstm/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp@forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ë
&forward_lstm/while/lstm_cell_1/BiasAddBiasAdd&forward_lstm/while/lstm_cell_1/add:z:0=forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
.forward_lstm/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$forward_lstm/while/lstm_cell_1/splitSplit7forward_lstm/while/lstm_cell_1/split/split_dim:output:0/forward_lstm/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
&forward_lstm/while/lstm_cell_1/SigmoidSigmoid-forward_lstm/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(forward_lstm/while/lstm_cell_1/Sigmoid_1Sigmoid-forward_lstm/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ «
"forward_lstm/while/lstm_cell_1/mulMul,forward_lstm/while/lstm_cell_1/Sigmoid_1:y:0 forward_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#forward_lstm/while/lstm_cell_1/ReluRelu-forward_lstm/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼
$forward_lstm/while/lstm_cell_1/mul_1Mul*forward_lstm/while/lstm_cell_1/Sigmoid:y:01forward_lstm/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ±
$forward_lstm/while/lstm_cell_1/add_1AddV2&forward_lstm/while/lstm_cell_1/mul:z:0(forward_lstm/while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(forward_lstm/while/lstm_cell_1/Sigmoid_2Sigmoid-forward_lstm/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
%forward_lstm/while/lstm_cell_1/Relu_1Relu(forward_lstm/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
$forward_lstm/while/lstm_cell_1/mul_2Mul,forward_lstm/while/lstm_cell_1/Sigmoid_2:y:03forward_lstm/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ø
7forward_lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem forward_lstm_while_placeholder_1forward_lstm_while_placeholder(forward_lstm/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒZ
forward_lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm/while/addAddV2forward_lstm_while_placeholder!forward_lstm/while/add/y:output:0*
T0*
_output_shapes
: \
forward_lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm/while/add_1AddV22forward_lstm_while_forward_lstm_while_loop_counter#forward_lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm/while/IdentityIdentityforward_lstm/while/add_1:z:0^forward_lstm/while/NoOp*
T0*
_output_shapes
: 
forward_lstm/while/Identity_1Identity8forward_lstm_while_forward_lstm_while_maximum_iterations^forward_lstm/while/NoOp*
T0*
_output_shapes
: 
forward_lstm/while/Identity_2Identityforward_lstm/while/add:z:0^forward_lstm/while/NoOp*
T0*
_output_shapes
: ­
forward_lstm/while/Identity_3IdentityGforward_lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm/while/NoOp*
T0*
_output_shapes
: 
forward_lstm/while/Identity_4Identity(forward_lstm/while/lstm_cell_1/mul_2:z:0^forward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/while/Identity_5Identity(forward_lstm/while/lstm_cell_1/add_1:z:0^forward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/while/NoOpNoOp6^forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp5^forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp7^forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/forward_lstm_while_forward_lstm_strided_slice_11forward_lstm_while_forward_lstm_strided_slice_1_0"C
forward_lstm_while_identity$forward_lstm/while/Identity:output:0"G
forward_lstm_while_identity_1&forward_lstm/while/Identity_1:output:0"G
forward_lstm_while_identity_2&forward_lstm/while/Identity_2:output:0"G
forward_lstm_while_identity_3&forward_lstm/while/Identity_3:output:0"G
forward_lstm_while_identity_4&forward_lstm/while/Identity_4:output:0"G
forward_lstm_while_identity_5&forward_lstm/while/Identity_5:output:0"
>forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource@forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0"
?forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resourceAforward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0"
=forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource?forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0"Ü
kforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensormforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2n
5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp2l
4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp2p
6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
§
Ì
forward_lstm_while_cond_12179666
2forward_lstm_while_forward_lstm_while_loop_counter<
8forward_lstm_while_forward_lstm_while_maximum_iterations"
forward_lstm_while_placeholder$
 forward_lstm_while_placeholder_1$
 forward_lstm_while_placeholder_2$
 forward_lstm_while_placeholder_38
4forward_lstm_while_less_forward_lstm_strided_slice_1O
Kforward_lstm_while_forward_lstm_while_cond_1217966___redundant_placeholder0O
Kforward_lstm_while_forward_lstm_while_cond_1217966___redundant_placeholder1O
Kforward_lstm_while_forward_lstm_while_cond_1217966___redundant_placeholder2O
Kforward_lstm_while_forward_lstm_while_cond_1217966___redundant_placeholder3
forward_lstm_while_identity

forward_lstm/while/LessLessforward_lstm_while_placeholder4forward_lstm_while_less_forward_lstm_strided_slice_1*
T0*
_output_shapes
: e
forward_lstm/while/IdentityIdentityforward_lstm/while/Less:z:0*
T0
*
_output_shapes
: "C
forward_lstm_while_identity$forward_lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
º
È
while_cond_1219355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1219355___redundant_placeholder05
1while_while_cond_1219355___redundant_placeholder15
1while_while_cond_1219355___redundant_placeholder25
1while_while_cond_1219355___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
°
ä
-bidirectional_forward_lstm_while_cond_1217595R
Nbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_loop_counterX
Tbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_maximum_iterations0
,bidirectional_forward_lstm_while_placeholder2
.bidirectional_forward_lstm_while_placeholder_12
.bidirectional_forward_lstm_while_placeholder_22
.bidirectional_forward_lstm_while_placeholder_3T
Pbidirectional_forward_lstm_while_less_bidirectional_forward_lstm_strided_slice_1k
gbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_cond_1217595___redundant_placeholder0k
gbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_cond_1217595___redundant_placeholder1k
gbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_cond_1217595___redundant_placeholder2k
gbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_cond_1217595___redundant_placeholder3-
)bidirectional_forward_lstm_while_identity
Î
%bidirectional/forward_lstm/while/LessLess,bidirectional_forward_lstm_while_placeholderPbidirectional_forward_lstm_while_less_bidirectional_forward_lstm_strided_slice_1*
T0*
_output_shapes
: 
)bidirectional/forward_lstm/while/IdentityIdentity)bidirectional/forward_lstm/while/Less:z:0*
T0
*
_output_shapes
: "_
)bidirectional_forward_lstm_while_identity2bidirectional/forward_lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
ª
©
J__inference_bidirectional_layer_call_and_return_conditional_losses_1215885

inputs'
forward_lstm_1215721:	
'
forward_lstm_1215723:	 #
forward_lstm_1215725:	(
backward_lstm_1215873:	
(
backward_lstm_1215875:	 $
backward_lstm_1215877:	
identity¢%backward_lstm/StatefulPartitionedCall¢$forward_lstm/StatefulPartitionedCall«
$forward_lstm/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_1215721forward_lstm_1215723forward_lstm_1215725*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_forward_lstm_layer_call_and_return_conditional_losses_1215720°
%backward_lstm/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_1215873backward_lstm_1215875backward_lstm_1215877*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_backward_lstm_layer_call_and_return_conditional_losses_1215872X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
	ReverseV2	ReverseV2.backward_lstm/StatefulPartitionedCall:output:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :³
concatConcatV2-forward_lstm/StatefulPartitionedCall:output:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@k
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
NoOpNoOp&^backward_lstm/StatefulPartitionedCall%^forward_lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 2N
%backward_lstm/StatefulPartitionedCall%backward_lstm/StatefulPartitionedCall2L
$forward_lstm/StatefulPartitionedCall$forward_lstm/StatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â"
ã
while_body_1214948
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_1_1214972_0:	
.
while_lstm_cell_1_1214974_0:	 *
while_lstm_cell_1_1214976_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_1_1214972:	
,
while_lstm_cell_1_1214974:	 (
while_lstm_cell_1_1214976:	¢)while/lstm_cell_1/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0µ
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_1214972_0while_lstm_cell_1_1214974_0while_lstm_cell_1_1214976_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_1_layer_call_and_return_conditional_losses_1214934Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x

while/NoOpNoOp*^while/lstm_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_1_1214972while_lstm_cell_1_1214972_0"8
while_lstm_cell_1_1214974while_lstm_cell_1_1214974_0"8
while_lstm_cell_1_1214976while_lstm_cell_1_1214976_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
®J

I__inference_forward_lstm_layer_call_and_return_conditional_losses_1219440
inputs_0=
*lstm_cell_1_matmul_readvariableop_resource:	
?
,lstm_cell_1_matmul_1_readvariableop_resource:	 :
+lstm_cell_1_biasadd_readvariableop_resource:	
identity¢"lstm_cell_1/BiasAdd/ReadVariableOp¢!lstm_cell_1/MatMul/ReadVariableOp¢#lstm_cell_1/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1219356*
condR
while_cond_1219355*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ½
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
inputs/0
ËX
Ì
.bidirectional_backward_lstm_while_body_1217434T
Pbidirectional_backward_lstm_while_bidirectional_backward_lstm_while_loop_counterZ
Vbidirectional_backward_lstm_while_bidirectional_backward_lstm_while_maximum_iterations1
-bidirectional_backward_lstm_while_placeholder3
/bidirectional_backward_lstm_while_placeholder_13
/bidirectional_backward_lstm_while_placeholder_23
/bidirectional_backward_lstm_while_placeholder_3S
Obidirectional_backward_lstm_while_bidirectional_backward_lstm_strided_slice_1_0
bidirectional_backward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0a
Nbidirectional_backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0:	
c
Pbidirectional_backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 ^
Obidirectional_backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0:	.
*bidirectional_backward_lstm_while_identity0
,bidirectional_backward_lstm_while_identity_10
,bidirectional_backward_lstm_while_identity_20
,bidirectional_backward_lstm_while_identity_30
,bidirectional_backward_lstm_while_identity_40
,bidirectional_backward_lstm_while_identity_5Q
Mbidirectional_backward_lstm_while_bidirectional_backward_lstm_strided_slice_1
bidirectional_backward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_backward_lstm_tensorarrayunstack_tensorlistfromtensor_
Lbidirectional_backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource:	
a
Nbidirectional_backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource:	 \
Mbidirectional_backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource:	¢Dbidirectional/backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp¢Cbidirectional/backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp¢Ebidirectional/backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp¤
Sbidirectional/backward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ³
Ebidirectional/backward_lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_backward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0-bidirectional_backward_lstm_while_placeholder\bidirectional/backward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0Ó
Cbidirectional/backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOpNbidirectional_backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0
4bidirectional/backward_lstm/while/lstm_cell_2/MatMulMatMulLbidirectional/backward_lstm/while/TensorArrayV2Read/TensorListGetItem:item:0Kbidirectional/backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
Ebidirectional/backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpPbidirectional_backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0ó
6bidirectional/backward_lstm/while/lstm_cell_2/MatMul_1MatMul/bidirectional_backward_lstm_while_placeholder_2Mbidirectional/backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿï
1bidirectional/backward_lstm/while/lstm_cell_2/addAddV2>bidirectional/backward_lstm/while/lstm_cell_2/MatMul:product:0@bidirectional/backward_lstm/while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
Dbidirectional/backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpObidirectional_backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ø
5bidirectional/backward_lstm/while/lstm_cell_2/BiasAddBiasAdd5bidirectional/backward_lstm/while/lstm_cell_2/add:z:0Lbidirectional/backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=bidirectional/backward_lstm/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :À
3bidirectional/backward_lstm/while/lstm_cell_2/splitSplitFbidirectional/backward_lstm/while/lstm_cell_2/split/split_dim:output:0>bidirectional/backward_lstm/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split°
5bidirectional/backward_lstm/while/lstm_cell_2/SigmoidSigmoid<bidirectional/backward_lstm/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ²
7bidirectional/backward_lstm/while/lstm_cell_2/Sigmoid_1Sigmoid<bidirectional/backward_lstm/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ø
1bidirectional/backward_lstm/while/lstm_cell_2/mulMul;bidirectional/backward_lstm/while/lstm_cell_2/Sigmoid_1:y:0/bidirectional_backward_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ª
2bidirectional/backward_lstm/while/lstm_cell_2/ReluRelu<bidirectional/backward_lstm/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ é
3bidirectional/backward_lstm/while/lstm_cell_2/mul_1Mul9bidirectional/backward_lstm/while/lstm_cell_2/Sigmoid:y:0@bidirectional/backward_lstm/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Þ
3bidirectional/backward_lstm/while/lstm_cell_2/add_1AddV25bidirectional/backward_lstm/while/lstm_cell_2/mul:z:07bidirectional/backward_lstm/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ²
7bidirectional/backward_lstm/while/lstm_cell_2/Sigmoid_2Sigmoid<bidirectional/backward_lstm/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ §
4bidirectional/backward_lstm/while/lstm_cell_2/Relu_1Relu7bidirectional/backward_lstm/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ í
3bidirectional/backward_lstm/while/lstm_cell_2/mul_2Mul;bidirectional/backward_lstm/while/lstm_cell_2/Sigmoid_2:y:0Bbidirectional/backward_lstm/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ´
Fbidirectional/backward_lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/bidirectional_backward_lstm_while_placeholder_1-bidirectional_backward_lstm_while_placeholder7bidirectional/backward_lstm/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒi
'bidirectional/backward_lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :°
%bidirectional/backward_lstm/while/addAddV2-bidirectional_backward_lstm_while_placeholder0bidirectional/backward_lstm/while/add/y:output:0*
T0*
_output_shapes
: k
)bidirectional/backward_lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :×
'bidirectional/backward_lstm/while/add_1AddV2Pbidirectional_backward_lstm_while_bidirectional_backward_lstm_while_loop_counter2bidirectional/backward_lstm/while/add_1/y:output:0*
T0*
_output_shapes
: ­
*bidirectional/backward_lstm/while/IdentityIdentity+bidirectional/backward_lstm/while/add_1:z:0'^bidirectional/backward_lstm/while/NoOp*
T0*
_output_shapes
: Ú
,bidirectional/backward_lstm/while/Identity_1IdentityVbidirectional_backward_lstm_while_bidirectional_backward_lstm_while_maximum_iterations'^bidirectional/backward_lstm/while/NoOp*
T0*
_output_shapes
: ­
,bidirectional/backward_lstm/while/Identity_2Identity)bidirectional/backward_lstm/while/add:z:0'^bidirectional/backward_lstm/while/NoOp*
T0*
_output_shapes
: Ú
,bidirectional/backward_lstm/while/Identity_3IdentityVbidirectional/backward_lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^bidirectional/backward_lstm/while/NoOp*
T0*
_output_shapes
: Ì
,bidirectional/backward_lstm/while/Identity_4Identity7bidirectional/backward_lstm/while/lstm_cell_2/mul_2:z:0'^bidirectional/backward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ì
,bidirectional/backward_lstm/while/Identity_5Identity7bidirectional/backward_lstm/while/lstm_cell_2/add_1:z:0'^bidirectional/backward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ½
&bidirectional/backward_lstm/while/NoOpNoOpE^bidirectional/backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpD^bidirectional/backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOpF^bidirectional/backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 " 
Mbidirectional_backward_lstm_while_bidirectional_backward_lstm_strided_slice_1Obidirectional_backward_lstm_while_bidirectional_backward_lstm_strided_slice_1_0"a
*bidirectional_backward_lstm_while_identity3bidirectional/backward_lstm/while/Identity:output:0"e
,bidirectional_backward_lstm_while_identity_15bidirectional/backward_lstm/while/Identity_1:output:0"e
,bidirectional_backward_lstm_while_identity_25bidirectional/backward_lstm/while/Identity_2:output:0"e
,bidirectional_backward_lstm_while_identity_35bidirectional/backward_lstm/while/Identity_3:output:0"e
,bidirectional_backward_lstm_while_identity_45bidirectional/backward_lstm/while/Identity_4:output:0"e
,bidirectional_backward_lstm_while_identity_55bidirectional/backward_lstm/while/Identity_5:output:0" 
Mbidirectional_backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resourceObidirectional_backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0"¢
Nbidirectional_backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resourcePbidirectional_backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0"
Lbidirectional_backward_lstm_while_lstm_cell_2_matmul_readvariableop_resourceNbidirectional_backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0"
bidirectional_backward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_backward_lstm_tensorarrayunstack_tensorlistfromtensorbidirectional_backward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2
Dbidirectional/backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpDbidirectional/backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp2
Cbidirectional/backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOpCbidirectional/backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp2
Ebidirectional/backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOpEbidirectional/backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
®J

I__inference_forward_lstm_layer_call_and_return_conditional_losses_1219297
inputs_0=
*lstm_cell_1_matmul_readvariableop_resource:	
?
,lstm_cell_1_matmul_1_readvariableop_resource:	 :
+lstm_cell_1_biasadd_readvariableop_resource:	
identity¢"lstm_cell_1/BiasAdd/ReadVariableOp¢!lstm_cell_1/MatMul/ReadVariableOp¢#lstm_cell_1/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1219213*
condR
while_cond_1219212*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ½
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
inputs/0
Ä
»
.__inference_forward_lstm_layer_call_fn_1219154

inputs
unknown:	

	unknown_0:	 
	unknown_1:	
identity¢StatefulPartitionedCallû
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_forward_lstm_layer_call_and_return_conditional_losses_1216223|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
öF
è
forward_lstm_while_body_12185436
2forward_lstm_while_forward_lstm_while_loop_counter<
8forward_lstm_while_forward_lstm_while_maximum_iterations"
forward_lstm_while_placeholder$
 forward_lstm_while_placeholder_1$
 forward_lstm_while_placeholder_2$
 forward_lstm_while_placeholder_35
1forward_lstm_while_forward_lstm_strided_slice_1_0q
mforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0R
?forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0:	
T
Aforward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 O
@forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0:	
forward_lstm_while_identity!
forward_lstm_while_identity_1!
forward_lstm_while_identity_2!
forward_lstm_while_identity_3!
forward_lstm_while_identity_4!
forward_lstm_while_identity_53
/forward_lstm_while_forward_lstm_strided_slice_1o
kforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensorP
=forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource:	
R
?forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource:	 M
>forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource:	¢5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp¢4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp¢6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp
Dforward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ç
6forward_lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0forward_lstm_while_placeholderMforward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0µ
4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp?forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0ß
%forward_lstm/while/lstm_cell_1/MatMulMatMul=forward_lstm/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpAforward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0Æ
'forward_lstm/while/lstm_cell_1/MatMul_1MatMul forward_lstm_while_placeholder_2>forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
"forward_lstm/while/lstm_cell_1/addAddV2/forward_lstm/while/lstm_cell_1/MatMul:product:01forward_lstm/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp@forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ë
&forward_lstm/while/lstm_cell_1/BiasAddBiasAdd&forward_lstm/while/lstm_cell_1/add:z:0=forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
.forward_lstm/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$forward_lstm/while/lstm_cell_1/splitSplit7forward_lstm/while/lstm_cell_1/split/split_dim:output:0/forward_lstm/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
&forward_lstm/while/lstm_cell_1/SigmoidSigmoid-forward_lstm/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(forward_lstm/while/lstm_cell_1/Sigmoid_1Sigmoid-forward_lstm/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ «
"forward_lstm/while/lstm_cell_1/mulMul,forward_lstm/while/lstm_cell_1/Sigmoid_1:y:0 forward_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#forward_lstm/while/lstm_cell_1/ReluRelu-forward_lstm/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼
$forward_lstm/while/lstm_cell_1/mul_1Mul*forward_lstm/while/lstm_cell_1/Sigmoid:y:01forward_lstm/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ±
$forward_lstm/while/lstm_cell_1/add_1AddV2&forward_lstm/while/lstm_cell_1/mul:z:0(forward_lstm/while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(forward_lstm/while/lstm_cell_1/Sigmoid_2Sigmoid-forward_lstm/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
%forward_lstm/while/lstm_cell_1/Relu_1Relu(forward_lstm/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
$forward_lstm/while/lstm_cell_1/mul_2Mul,forward_lstm/while/lstm_cell_1/Sigmoid_2:y:03forward_lstm/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ø
7forward_lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem forward_lstm_while_placeholder_1forward_lstm_while_placeholder(forward_lstm/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒZ
forward_lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm/while/addAddV2forward_lstm_while_placeholder!forward_lstm/while/add/y:output:0*
T0*
_output_shapes
: \
forward_lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm/while/add_1AddV22forward_lstm_while_forward_lstm_while_loop_counter#forward_lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm/while/IdentityIdentityforward_lstm/while/add_1:z:0^forward_lstm/while/NoOp*
T0*
_output_shapes
: 
forward_lstm/while/Identity_1Identity8forward_lstm_while_forward_lstm_while_maximum_iterations^forward_lstm/while/NoOp*
T0*
_output_shapes
: 
forward_lstm/while/Identity_2Identityforward_lstm/while/add:z:0^forward_lstm/while/NoOp*
T0*
_output_shapes
: ­
forward_lstm/while/Identity_3IdentityGforward_lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm/while/NoOp*
T0*
_output_shapes
: 
forward_lstm/while/Identity_4Identity(forward_lstm/while/lstm_cell_1/mul_2:z:0^forward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/while/Identity_5Identity(forward_lstm/while/lstm_cell_1/add_1:z:0^forward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/while/NoOpNoOp6^forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp5^forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp7^forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/forward_lstm_while_forward_lstm_strided_slice_11forward_lstm_while_forward_lstm_strided_slice_1_0"C
forward_lstm_while_identity$forward_lstm/while/Identity:output:0"G
forward_lstm_while_identity_1&forward_lstm/while/Identity_1:output:0"G
forward_lstm_while_identity_2&forward_lstm/while/Identity_2:output:0"G
forward_lstm_while_identity_3&forward_lstm/while/Identity_3:output:0"G
forward_lstm_while_identity_4&forward_lstm/while/Identity_4:output:0"G
forward_lstm_while_identity_5&forward_lstm/while/Identity_5:output:0"
>forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource@forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0"
?forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resourceAforward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0"
=forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource?forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0"Ü
kforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensormforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2n
5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp2l
4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp2p
6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
Ã
à
 backward_lstm_while_cond_12186838
4backward_lstm_while_backward_lstm_while_loop_counter>
:backward_lstm_while_backward_lstm_while_maximum_iterations#
backward_lstm_while_placeholder%
!backward_lstm_while_placeholder_1%
!backward_lstm_while_placeholder_2%
!backward_lstm_while_placeholder_3:
6backward_lstm_while_less_backward_lstm_strided_slice_1Q
Mbackward_lstm_while_backward_lstm_while_cond_1218683___redundant_placeholder0Q
Mbackward_lstm_while_backward_lstm_while_cond_1218683___redundant_placeholder1Q
Mbackward_lstm_while_backward_lstm_while_cond_1218683___redundant_placeholder2Q
Mbackward_lstm_while_backward_lstm_while_cond_1218683___redundant_placeholder3 
backward_lstm_while_identity

backward_lstm/while/LessLessbackward_lstm_while_placeholder6backward_lstm_while_less_backward_lstm_strided_slice_1*
T0*
_output_shapes
: g
backward_lstm/while/IdentityIdentitybackward_lstm/while/Less:z:0*
T0
*
_output_shapes
: "E
backward_lstm_while_identity%backward_lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
Ã
à
 backward_lstm_while_cond_12164768
4backward_lstm_while_backward_lstm_while_loop_counter>
:backward_lstm_while_backward_lstm_while_maximum_iterations#
backward_lstm_while_placeholder%
!backward_lstm_while_placeholder_1%
!backward_lstm_while_placeholder_2%
!backward_lstm_while_placeholder_3:
6backward_lstm_while_less_backward_lstm_strided_slice_1Q
Mbackward_lstm_while_backward_lstm_while_cond_1216476___redundant_placeholder0Q
Mbackward_lstm_while_backward_lstm_while_cond_1216476___redundant_placeholder1Q
Mbackward_lstm_while_backward_lstm_while_cond_1216476___redundant_placeholder2Q
Mbackward_lstm_while_backward_lstm_while_cond_1216476___redundant_placeholder3 
backward_lstm_while_identity

backward_lstm/while/LessLessbackward_lstm_while_placeholder6backward_lstm_while_less_backward_lstm_strided_slice_1*
T0*
_output_shapes
: g
backward_lstm/while/IdentityIdentitybackward_lstm/while/Less:z:0*
T0
*
_output_shapes
: "E
backward_lstm_while_identity%backward_lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
º
¾
/__inference_backward_lstm_layer_call_fn_1219748
inputs_0
unknown:	

	unknown_0:	 
	unknown_1:	
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_backward_lstm_layer_call_and_return_conditional_losses_1215562|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
inputs/0
H

 backward_lstm_while_body_12168898
4backward_lstm_while_backward_lstm_while_loop_counter>
:backward_lstm_while_backward_lstm_while_maximum_iterations#
backward_lstm_while_placeholder%
!backward_lstm_while_placeholder_1%
!backward_lstm_while_placeholder_2%
!backward_lstm_while_placeholder_37
3backward_lstm_while_backward_lstm_strided_slice_1_0s
obackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0S
@backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0:	
U
Bbackward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 P
Abackward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0:	 
backward_lstm_while_identity"
backward_lstm_while_identity_1"
backward_lstm_while_identity_2"
backward_lstm_while_identity_3"
backward_lstm_while_identity_4"
backward_lstm_while_identity_55
1backward_lstm_while_backward_lstm_strided_slice_1q
mbackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensorQ
>backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource:	
S
@backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource:	 N
?backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource:	¢6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp¢5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp¢7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp
Ebackward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ì
7backward_lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemobackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0backward_lstm_while_placeholderNbackward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0·
5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp@backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0â
&backward_lstm/while/lstm_cell_2/MatMulMatMul>backward_lstm/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpBbackward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0É
(backward_lstm/while/lstm_cell_2/MatMul_1MatMul!backward_lstm_while_placeholder_2?backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
#backward_lstm/while/lstm_cell_2/addAddV20backward_lstm/while/lstm_cell_2/MatMul:product:02backward_lstm/while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpAbackward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
'backward_lstm/while/lstm_cell_2/BiasAddBiasAdd'backward_lstm/while/lstm_cell_2/add:z:0>backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
/backward_lstm/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%backward_lstm/while/lstm_cell_2/splitSplit8backward_lstm/while/lstm_cell_2/split/split_dim:output:00backward_lstm/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
'backward_lstm/while/lstm_cell_2/SigmoidSigmoid.backward_lstm/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)backward_lstm/while/lstm_cell_2/Sigmoid_1Sigmoid.backward_lstm/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ®
#backward_lstm/while/lstm_cell_2/mulMul-backward_lstm/while/lstm_cell_2/Sigmoid_1:y:0!backward_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
$backward_lstm/while/lstm_cell_2/ReluRelu.backward_lstm/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¿
%backward_lstm/while/lstm_cell_2/mul_1Mul+backward_lstm/while/lstm_cell_2/Sigmoid:y:02backward_lstm/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ´
%backward_lstm/while/lstm_cell_2/add_1AddV2'backward_lstm/while/lstm_cell_2/mul:z:0)backward_lstm/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)backward_lstm/while/lstm_cell_2/Sigmoid_2Sigmoid.backward_lstm/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&backward_lstm/while/lstm_cell_2/Relu_1Relu)backward_lstm/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ã
%backward_lstm/while/lstm_cell_2/mul_2Mul-backward_lstm/while/lstm_cell_2/Sigmoid_2:y:04backward_lstm/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ü
8backward_lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!backward_lstm_while_placeholder_1backward_lstm_while_placeholder)backward_lstm/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒ[
backward_lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm/while/addAddV2backward_lstm_while_placeholder"backward_lstm/while/add/y:output:0*
T0*
_output_shapes
: ]
backward_lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm/while/add_1AddV24backward_lstm_while_backward_lstm_while_loop_counter$backward_lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm/while/IdentityIdentitybackward_lstm/while/add_1:z:0^backward_lstm/while/NoOp*
T0*
_output_shapes
: ¢
backward_lstm/while/Identity_1Identity:backward_lstm_while_backward_lstm_while_maximum_iterations^backward_lstm/while/NoOp*
T0*
_output_shapes
: 
backward_lstm/while/Identity_2Identitybackward_lstm/while/add:z:0^backward_lstm/while/NoOp*
T0*
_output_shapes
: °
backward_lstm/while/Identity_3IdentityHbackward_lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm/while/NoOp*
T0*
_output_shapes
: ¢
backward_lstm/while/Identity_4Identity)backward_lstm/while/lstm_cell_2/mul_2:z:0^backward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
backward_lstm/while/Identity_5Identity)backward_lstm/while/lstm_cell_2/add_1:z:0^backward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
backward_lstm/while/NoOpNoOp7^backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp6^backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp8^backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1backward_lstm_while_backward_lstm_strided_slice_13backward_lstm_while_backward_lstm_strided_slice_1_0"E
backward_lstm_while_identity%backward_lstm/while/Identity:output:0"I
backward_lstm_while_identity_1'backward_lstm/while/Identity_1:output:0"I
backward_lstm_while_identity_2'backward_lstm/while/Identity_2:output:0"I
backward_lstm_while_identity_3'backward_lstm/while/Identity_3:output:0"I
backward_lstm_while_identity_4'backward_lstm/while/Identity_4:output:0"I
backward_lstm_while_identity_5'backward_lstm/while/Identity_5:output:0"
?backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resourceAbackward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0"
@backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resourceBbackward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0"
>backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource@backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0"à
mbackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensorobackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2p
6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp2n
5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp2r
7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
É7
È
while_body_1219213
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	
G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	
E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	 @
1while_lstm_cell_1_biasadd_readvariableop_resource:	¢(while/lstm_cell_1/BiasAdd/ReadVariableOp¢'while/lstm_cell_1/MatMul/ReadVariableOp¢)while/lstm_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0¸
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Í

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
öF
è
forward_lstm_while_body_12188316
2forward_lstm_while_forward_lstm_while_loop_counter<
8forward_lstm_while_forward_lstm_while_maximum_iterations"
forward_lstm_while_placeholder$
 forward_lstm_while_placeholder_1$
 forward_lstm_while_placeholder_2$
 forward_lstm_while_placeholder_35
1forward_lstm_while_forward_lstm_strided_slice_1_0q
mforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0R
?forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0:	
T
Aforward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 O
@forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0:	
forward_lstm_while_identity!
forward_lstm_while_identity_1!
forward_lstm_while_identity_2!
forward_lstm_while_identity_3!
forward_lstm_while_identity_4!
forward_lstm_while_identity_53
/forward_lstm_while_forward_lstm_strided_slice_1o
kforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensorP
=forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource:	
R
?forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource:	 M
>forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource:	¢5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp¢4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp¢6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp
Dforward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ç
6forward_lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0forward_lstm_while_placeholderMforward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0µ
4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp?forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0ß
%forward_lstm/while/lstm_cell_1/MatMulMatMul=forward_lstm/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpAforward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0Æ
'forward_lstm/while/lstm_cell_1/MatMul_1MatMul forward_lstm_while_placeholder_2>forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
"forward_lstm/while/lstm_cell_1/addAddV2/forward_lstm/while/lstm_cell_1/MatMul:product:01forward_lstm/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp@forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ë
&forward_lstm/while/lstm_cell_1/BiasAddBiasAdd&forward_lstm/while/lstm_cell_1/add:z:0=forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
.forward_lstm/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$forward_lstm/while/lstm_cell_1/splitSplit7forward_lstm/while/lstm_cell_1/split/split_dim:output:0/forward_lstm/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
&forward_lstm/while/lstm_cell_1/SigmoidSigmoid-forward_lstm/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(forward_lstm/while/lstm_cell_1/Sigmoid_1Sigmoid-forward_lstm/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ «
"forward_lstm/while/lstm_cell_1/mulMul,forward_lstm/while/lstm_cell_1/Sigmoid_1:y:0 forward_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#forward_lstm/while/lstm_cell_1/ReluRelu-forward_lstm/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼
$forward_lstm/while/lstm_cell_1/mul_1Mul*forward_lstm/while/lstm_cell_1/Sigmoid:y:01forward_lstm/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ±
$forward_lstm/while/lstm_cell_1/add_1AddV2&forward_lstm/while/lstm_cell_1/mul:z:0(forward_lstm/while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(forward_lstm/while/lstm_cell_1/Sigmoid_2Sigmoid-forward_lstm/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
%forward_lstm/while/lstm_cell_1/Relu_1Relu(forward_lstm/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
$forward_lstm/while/lstm_cell_1/mul_2Mul,forward_lstm/while/lstm_cell_1/Sigmoid_2:y:03forward_lstm/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ø
7forward_lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem forward_lstm_while_placeholder_1forward_lstm_while_placeholder(forward_lstm/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒZ
forward_lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm/while/addAddV2forward_lstm_while_placeholder!forward_lstm/while/add/y:output:0*
T0*
_output_shapes
: \
forward_lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm/while/add_1AddV22forward_lstm_while_forward_lstm_while_loop_counter#forward_lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm/while/IdentityIdentityforward_lstm/while/add_1:z:0^forward_lstm/while/NoOp*
T0*
_output_shapes
: 
forward_lstm/while/Identity_1Identity8forward_lstm_while_forward_lstm_while_maximum_iterations^forward_lstm/while/NoOp*
T0*
_output_shapes
: 
forward_lstm/while/Identity_2Identityforward_lstm/while/add:z:0^forward_lstm/while/NoOp*
T0*
_output_shapes
: ­
forward_lstm/while/Identity_3IdentityGforward_lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm/while/NoOp*
T0*
_output_shapes
: 
forward_lstm/while/Identity_4Identity(forward_lstm/while/lstm_cell_1/mul_2:z:0^forward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/while/Identity_5Identity(forward_lstm/while/lstm_cell_1/add_1:z:0^forward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/while/NoOpNoOp6^forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp5^forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp7^forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/forward_lstm_while_forward_lstm_strided_slice_11forward_lstm_while_forward_lstm_strided_slice_1_0"C
forward_lstm_while_identity$forward_lstm/while/Identity:output:0"G
forward_lstm_while_identity_1&forward_lstm/while/Identity_1:output:0"G
forward_lstm_while_identity_2&forward_lstm/while/Identity_2:output:0"G
forward_lstm_while_identity_3&forward_lstm/while/Identity_3:output:0"G
forward_lstm_while_identity_4&forward_lstm/while/Identity_4:output:0"G
forward_lstm_while_identity_5&forward_lstm/while/Identity_5:output:0"
>forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource@forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0"
?forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resourceAforward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0"
=forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource?forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0"Ü
kforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensormforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2n
5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp2l
4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp2p
6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
î
ö
-__inference_lstm_cell_2_layer_call_fn_1220465

inputs
states_0
states_1
unknown:	

	unknown_0:	 
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1215286o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/1


ó
B__inference_dense_layer_call_and_return_conditional_losses_1216598

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
â"
ã
while_body_1215493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_2_1215517_0:	
.
while_lstm_cell_2_1215519_0:	 *
while_lstm_cell_2_1215521_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_2_1215517:	
,
while_lstm_cell_2_1215519:	 (
while_lstm_cell_2_1215521:	¢)while/lstm_cell_2/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0µ
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_1215517_0while_lstm_cell_2_1215519_0while_lstm_cell_2_1215521_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1215432Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x

while/NoOpNoOp*^while/lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_2_1215517while_lstm_cell_2_1215517_0"8
while_lstm_cell_2_1215519while_lstm_cell_2_1215519_0"8
while_lstm_cell_2_1215521while_lstm_cell_2_1215521_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
³L

J__inference_backward_lstm_layer_call_and_return_conditional_losses_1215872

inputs=
*lstm_cell_2_matmul_readvariableop_resource:	
?
,lstm_cell_2_matmul_1_readvariableop_resource:	 :
+lstm_cell_2_biasadd_readvariableop_resource:	
identity¢"lstm_cell_2/BiasAdd/ReadVariableOp¢!lstm_cell_2/MatMul/ReadVariableOp¢#lstm_cell_2/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿå
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1215788*
condR
while_cond_1215787*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ½
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿF
è
forward_lstm_while_body_12179676
2forward_lstm_while_forward_lstm_while_loop_counter<
8forward_lstm_while_forward_lstm_while_maximum_iterations"
forward_lstm_while_placeholder$
 forward_lstm_while_placeholder_1$
 forward_lstm_while_placeholder_2$
 forward_lstm_while_placeholder_35
1forward_lstm_while_forward_lstm_strided_slice_1_0q
mforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0R
?forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0:	
T
Aforward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 O
@forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0:	
forward_lstm_while_identity!
forward_lstm_while_identity_1!
forward_lstm_while_identity_2!
forward_lstm_while_identity_3!
forward_lstm_while_identity_4!
forward_lstm_while_identity_53
/forward_lstm_while_forward_lstm_strided_slice_1o
kforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensorP
=forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource:	
R
?forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource:	 M
>forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource:	¢5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp¢4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp¢6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp
Dforward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿð
6forward_lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0forward_lstm_while_placeholderMforward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0µ
4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp?forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0ß
%forward_lstm/while/lstm_cell_1/MatMulMatMul=forward_lstm/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpAforward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0Æ
'forward_lstm/while/lstm_cell_1/MatMul_1MatMul forward_lstm_while_placeholder_2>forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
"forward_lstm/while/lstm_cell_1/addAddV2/forward_lstm/while/lstm_cell_1/MatMul:product:01forward_lstm/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp@forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ë
&forward_lstm/while/lstm_cell_1/BiasAddBiasAdd&forward_lstm/while/lstm_cell_1/add:z:0=forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
.forward_lstm/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$forward_lstm/while/lstm_cell_1/splitSplit7forward_lstm/while/lstm_cell_1/split/split_dim:output:0/forward_lstm/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
&forward_lstm/while/lstm_cell_1/SigmoidSigmoid-forward_lstm/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(forward_lstm/while/lstm_cell_1/Sigmoid_1Sigmoid-forward_lstm/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ «
"forward_lstm/while/lstm_cell_1/mulMul,forward_lstm/while/lstm_cell_1/Sigmoid_1:y:0 forward_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#forward_lstm/while/lstm_cell_1/ReluRelu-forward_lstm/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼
$forward_lstm/while/lstm_cell_1/mul_1Mul*forward_lstm/while/lstm_cell_1/Sigmoid:y:01forward_lstm/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ±
$forward_lstm/while/lstm_cell_1/add_1AddV2&forward_lstm/while/lstm_cell_1/mul:z:0(forward_lstm/while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(forward_lstm/while/lstm_cell_1/Sigmoid_2Sigmoid-forward_lstm/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
%forward_lstm/while/lstm_cell_1/Relu_1Relu(forward_lstm/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
$forward_lstm/while/lstm_cell_1/mul_2Mul,forward_lstm/while/lstm_cell_1/Sigmoid_2:y:03forward_lstm/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ø
7forward_lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem forward_lstm_while_placeholder_1forward_lstm_while_placeholder(forward_lstm/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒZ
forward_lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm/while/addAddV2forward_lstm_while_placeholder!forward_lstm/while/add/y:output:0*
T0*
_output_shapes
: \
forward_lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm/while/add_1AddV22forward_lstm_while_forward_lstm_while_loop_counter#forward_lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm/while/IdentityIdentityforward_lstm/while/add_1:z:0^forward_lstm/while/NoOp*
T0*
_output_shapes
: 
forward_lstm/while/Identity_1Identity8forward_lstm_while_forward_lstm_while_maximum_iterations^forward_lstm/while/NoOp*
T0*
_output_shapes
: 
forward_lstm/while/Identity_2Identityforward_lstm/while/add:z:0^forward_lstm/while/NoOp*
T0*
_output_shapes
: ­
forward_lstm/while/Identity_3IdentityGforward_lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm/while/NoOp*
T0*
_output_shapes
: 
forward_lstm/while/Identity_4Identity(forward_lstm/while/lstm_cell_1/mul_2:z:0^forward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/while/Identity_5Identity(forward_lstm/while/lstm_cell_1/add_1:z:0^forward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/while/NoOpNoOp6^forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp5^forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp7^forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/forward_lstm_while_forward_lstm_strided_slice_11forward_lstm_while_forward_lstm_strided_slice_1_0"C
forward_lstm_while_identity$forward_lstm/while/Identity:output:0"G
forward_lstm_while_identity_1&forward_lstm/while/Identity_1:output:0"G
forward_lstm_while_identity_2&forward_lstm/while/Identity_2:output:0"G
forward_lstm_while_identity_3&forward_lstm/while/Identity_3:output:0"G
forward_lstm_while_identity_4&forward_lstm/while/Identity_4:output:0"G
forward_lstm_while_identity_5&forward_lstm/while/Identity_5:output:0"
>forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource@forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0"
?forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resourceAforward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0"
=forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource?forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0"Ü
kforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensormforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2n
5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp2l
4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp2p
6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
L

J__inference_backward_lstm_layer_call_and_return_conditional_losses_1220060
inputs_0=
*lstm_cell_2_matmul_readvariableop_resource:	
?
,lstm_cell_2_matmul_1_readvariableop_resource:	 :
+lstm_cell_2_biasadd_readvariableop_resource:	
identity¢"lstm_cell_2/BiasAdd/ReadVariableOp¢!lstm_cell_2/MatMul/ReadVariableOp¢#lstm_cell_2/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   å
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1219976*
condR
while_cond_1219975*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ½
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
inputs/0
º
È
while_cond_1219641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1219641___redundant_placeholder05
1while_while_cond_1219641___redundant_placeholder15
1while_while_cond_1219641___redundant_placeholder25
1while_while_cond_1219641___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
ª
©
J__inference_bidirectional_layer_call_and_return_conditional_losses_1216256

inputs'
forward_lstm_1216237:	
'
forward_lstm_1216239:	 #
forward_lstm_1216241:	(
backward_lstm_1216244:	
(
backward_lstm_1216246:	 $
backward_lstm_1216248:	
identity¢%backward_lstm/StatefulPartitionedCall¢$forward_lstm/StatefulPartitionedCall«
$forward_lstm/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_1216237forward_lstm_1216239forward_lstm_1216241*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_forward_lstm_layer_call_and_return_conditional_losses_1216223°
%backward_lstm/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_1216244backward_lstm_1216246backward_lstm_1216248*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_backward_lstm_layer_call_and_return_conditional_losses_1216058X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
	ReverseV2	ReverseV2.backward_lstm/StatefulPartitionedCall:output:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :³
concatConcatV2-forward_lstm/StatefulPartitionedCall:output:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@k
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
NoOpNoOp&^backward_lstm/StatefulPartitionedCall%^forward_lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 2N
%backward_lstm/StatefulPartitionedCall%backward_lstm/StatefulPartitionedCall2L
$forward_lstm/StatefulPartitionedCall$forward_lstm/StatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò7
È
while_body_1220121
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	
G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	
E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	 @
1while_lstm_cell_2_biasadd_readvariableop_resource:	¢(while/lstm_cell_2/BiasAdd/ReadVariableOp¢'while/lstm_cell_2/MatMul/ReadVariableOp¢)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0¸
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Í

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
¨


%__inference_signature_wrapper_1217184
bidirectional_input
unknown:	

	unknown_0:	 
	unknown_1:	
	unknown_2:	

	unknown_3:	 
	unknown_4:	
	unknown_5:@
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCall¯
StatefulPartitionedCallStatefulPartitionedCallbidirectional_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_1214867o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

-
_user_specified_namebidirectional_input
È¶

J__inference_bidirectional_layer_call_and_return_conditional_losses_1219060

inputsJ
7forward_lstm_lstm_cell_1_matmul_readvariableop_resource:	
L
9forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource:	 G
8forward_lstm_lstm_cell_1_biasadd_readvariableop_resource:	K
8backward_lstm_lstm_cell_2_matmul_readvariableop_resource:	
M
:backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource:	 H
9backward_lstm_lstm_cell_2_biasadd_readvariableop_resource:	
identity¢0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp¢/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp¢1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp¢backward_lstm/while¢/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp¢.forward_lstm/lstm_cell_1/MatMul/ReadVariableOp¢0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp¢forward_lstm/whileH
forward_lstm/ShapeShapeinputs*
T0*
_output_shapes
:j
 forward_lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"forward_lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"forward_lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
forward_lstm/strided_sliceStridedSliceforward_lstm/Shape:output:0)forward_lstm/strided_slice/stack:output:0+forward_lstm/strided_slice/stack_1:output:0+forward_lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
forward_lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
forward_lstm/zeros/packedPack#forward_lstm/strided_slice:output:0$forward_lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
forward_lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm/zerosFill"forward_lstm/zeros/packed:output:0!forward_lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
forward_lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
forward_lstm/zeros_1/packedPack#forward_lstm/strided_slice:output:0&forward_lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm/zeros_1Fill$forward_lstm/zeros_1/packed:output:0#forward_lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
forward_lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm/transpose	Transposeinputs$forward_lstm/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
^
forward_lstm/Shape_1Shapeforward_lstm/transpose:y:0*
T0*
_output_shapes
:l
"forward_lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
forward_lstm/strided_slice_1StridedSliceforward_lstm/Shape_1:output:0+forward_lstm/strided_slice_1/stack:output:0-forward_lstm/strided_slice_1/stack_1:output:0-forward_lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(forward_lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÛ
forward_lstm/TensorArrayV2TensorListReserve1forward_lstm/TensorArrayV2/element_shape:output:0%forward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Bforward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   
4forward_lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm/transpose:y:0Kforward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒl
"forward_lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ª
forward_lstm/strided_slice_2StridedSliceforward_lstm/transpose:y:0+forward_lstm/strided_slice_2/stack:output:0-forward_lstm/strided_slice_2/stack_1:output:0-forward_lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask§
.forward_lstm/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp7forward_lstm_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0»
forward_lstm/lstm_cell_1/MatMulMatMul%forward_lstm/strided_slice_2:output:06forward_lstm/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp9forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0µ
!forward_lstm/lstm_cell_1/MatMul_1MatMulforward_lstm/zeros:output:08forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
forward_lstm/lstm_cell_1/addAddV2)forward_lstm/lstm_cell_1/MatMul:product:0+forward_lstm/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp8forward_lstm_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¹
 forward_lstm/lstm_cell_1/BiasAddBiasAdd forward_lstm/lstm_cell_1/add:z:07forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
(forward_lstm/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm/lstm_cell_1/splitSplit1forward_lstm/lstm_cell_1/split/split_dim:output:0)forward_lstm/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
 forward_lstm/lstm_cell_1/SigmoidSigmoid'forward_lstm/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"forward_lstm/lstm_cell_1/Sigmoid_1Sigmoid'forward_lstm/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/lstm_cell_1/mulMul&forward_lstm/lstm_cell_1/Sigmoid_1:y:0forward_lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/lstm_cell_1/ReluRelu'forward_lstm/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ª
forward_lstm/lstm_cell_1/mul_1Mul$forward_lstm/lstm_cell_1/Sigmoid:y:0+forward_lstm/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/lstm_cell_1/add_1AddV2 forward_lstm/lstm_cell_1/mul:z:0"forward_lstm/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"forward_lstm/lstm_cell_1/Sigmoid_2Sigmoid'forward_lstm/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
forward_lstm/lstm_cell_1/Relu_1Relu"forward_lstm/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ®
forward_lstm/lstm_cell_1/mul_2Mul&forward_lstm/lstm_cell_1/Sigmoid_2:y:0-forward_lstm/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ {
*forward_lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ß
forward_lstm/TensorArrayV2_1TensorListReserve3forward_lstm/TensorArrayV2_1/element_shape:output:0%forward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒS
forward_lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%forward_lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿa
forward_lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
forward_lstm/whileWhile(forward_lstm/while/loop_counter:output:0.forward_lstm/while/maximum_iterations:output:0forward_lstm/time:output:0%forward_lstm/TensorArrayV2_1:handle:0forward_lstm/zeros:output:0forward_lstm/zeros_1:output:0%forward_lstm/strided_slice_1:output:0Dforward_lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:07forward_lstm_lstm_cell_1_matmul_readvariableop_resource9forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource8forward_lstm_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *+
body#R!
forward_lstm_while_body_1218831*+
cond#R!
forward_lstm_while_cond_1218830*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
=forward_lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    é
/forward_lstm/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm/while:output:3Fforward_lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0u
"forward_lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿn
$forward_lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:È
forward_lstm/strided_slice_3StridedSlice8forward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0+forward_lstm/strided_slice_3/stack:output:0-forward_lstm/strided_slice_3/stack_1:output:0-forward_lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maskr
forward_lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ½
forward_lstm/transpose_1	Transpose8forward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0&forward_lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
forward_lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    I
backward_lstm/ShapeShapeinputs*
T0*
_output_shapes
:k
!backward_lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#backward_lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#backward_lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
backward_lstm/strided_sliceStridedSlicebackward_lstm/Shape:output:0*backward_lstm/strided_slice/stack:output:0,backward_lstm/strided_slice/stack_1:output:0,backward_lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
backward_lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
backward_lstm/zeros/packedPack$backward_lstm/strided_slice:output:0%backward_lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
backward_lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm/zerosFill#backward_lstm/zeros/packed:output:0"backward_lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
backward_lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : ¡
backward_lstm/zeros_1/packedPack$backward_lstm/strided_slice:output:0'backward_lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm/zeros_1Fill%backward_lstm/zeros_1/packed:output:0$backward_lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
backward_lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm/transpose	Transposeinputs%backward_lstm/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
backward_lstm/Shape_1Shapebackward_lstm/transpose:y:0*
T0*
_output_shapes
:m
#backward_lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
backward_lstm/strided_slice_1StridedSlicebackward_lstm/Shape_1:output:0,backward_lstm/strided_slice_1/stack:output:0.backward_lstm/strided_slice_1/stack_1:output:0.backward_lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)backward_lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÞ
backward_lstm/TensorArrayV2TensorListReserve2backward_lstm/TensorArrayV2/element_shape:output:0&backward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
backward_lstm/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
backward_lstm/ReverseV2	ReverseV2backward_lstm/transpose:y:0%backward_lstm/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

Cbackward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   
5backward_lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor backward_lstm/ReverseV2:output:0Lbackward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒm
#backward_lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
backward_lstm/strided_slice_2StridedSlicebackward_lstm/transpose:y:0,backward_lstm/strided_slice_2/stack:output:0.backward_lstm/strided_slice_2/stack_1:output:0.backward_lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask©
/backward_lstm/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp8backward_lstm_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0¾
 backward_lstm/lstm_cell_2/MatMulMatMul&backward_lstm/strided_slice_2:output:07backward_lstm/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp:backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0¸
"backward_lstm/lstm_cell_2/MatMul_1MatMulbackward_lstm/zeros:output:09backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
backward_lstm/lstm_cell_2/addAddV2*backward_lstm/lstm_cell_2/MatMul:product:0,backward_lstm/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp9backward_lstm_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¼
!backward_lstm/lstm_cell_2/BiasAddBiasAdd!backward_lstm/lstm_cell_2/add:z:08backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)backward_lstm/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm/lstm_cell_2/splitSplit2backward_lstm/lstm_cell_2/split/split_dim:output:0*backward_lstm/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
!backward_lstm/lstm_cell_2/SigmoidSigmoid(backward_lstm/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#backward_lstm/lstm_cell_2/Sigmoid_1Sigmoid(backward_lstm/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
backward_lstm/lstm_cell_2/mulMul'backward_lstm/lstm_cell_2/Sigmoid_1:y:0backward_lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
backward_lstm/lstm_cell_2/ReluRelu(backward_lstm/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ­
backward_lstm/lstm_cell_2/mul_1Mul%backward_lstm/lstm_cell_2/Sigmoid:y:0,backward_lstm/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
backward_lstm/lstm_cell_2/add_1AddV2!backward_lstm/lstm_cell_2/mul:z:0#backward_lstm/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#backward_lstm/lstm_cell_2/Sigmoid_2Sigmoid(backward_lstm/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 backward_lstm/lstm_cell_2/Relu_1Relu#backward_lstm/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ±
backward_lstm/lstm_cell_2/mul_2Mul'backward_lstm/lstm_cell_2/Sigmoid_2:y:0.backward_lstm/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
+backward_lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    â
backward_lstm/TensorArrayV2_1TensorListReserve4backward_lstm/TensorArrayV2_1/element_shape:output:0&backward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒT
backward_lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&backward_lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿb
 backward_lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Å
backward_lstm/whileWhile)backward_lstm/while/loop_counter:output:0/backward_lstm/while/maximum_iterations:output:0backward_lstm/time:output:0&backward_lstm/TensorArrayV2_1:handle:0backward_lstm/zeros:output:0backward_lstm/zeros_1:output:0&backward_lstm/strided_slice_1:output:0Ebackward_lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:08backward_lstm_lstm_cell_2_matmul_readvariableop_resource:backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource9backward_lstm_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 backward_lstm_while_body_1218972*,
cond$R"
 backward_lstm_while_cond_1218971*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
>backward_lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ì
0backward_lstm/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm/while:output:3Gbackward_lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0v
#backward_lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%backward_lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
backward_lstm/strided_slice_3StridedSlice9backward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0,backward_lstm/strided_slice_3/stack:output:0.backward_lstm/strided_slice_3/stack_1:output:0.backward_lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_masks
backward_lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          À
backward_lstm/transpose_1	Transpose9backward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0'backward_lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
backward_lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
	ReverseV2	ReverseV2backward_lstm/transpose_1:y:0ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2forward_lstm/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentityconcat:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
NoOpNoOp1^backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp0^backward_lstm/lstm_cell_2/MatMul/ReadVariableOp2^backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp^backward_lstm/while0^forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp/^forward_lstm/lstm_cell_1/MatMul/ReadVariableOp1^forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp^forward_lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : 2d
0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp2b
/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp2f
1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp2*
backward_lstm/whilebackward_lstm/while2b
/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp2`
.forward_lstm/lstm_cell_1/MatMul/ReadVariableOp.forward_lstm/lstm_cell_1/MatMul/ReadVariableOp2d
0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp2(
forward_lstm/whileforward_lstm/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
µW
¬
-bidirectional_forward_lstm_while_body_1217293R
Nbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_loop_counterX
Tbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_maximum_iterations0
,bidirectional_forward_lstm_while_placeholder2
.bidirectional_forward_lstm_while_placeholder_12
.bidirectional_forward_lstm_while_placeholder_22
.bidirectional_forward_lstm_while_placeholder_3Q
Mbidirectional_forward_lstm_while_bidirectional_forward_lstm_strided_slice_1_0
bidirectional_forward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0`
Mbidirectional_forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0:	
b
Obidirectional_forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 ]
Nbidirectional_forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0:	-
)bidirectional_forward_lstm_while_identity/
+bidirectional_forward_lstm_while_identity_1/
+bidirectional_forward_lstm_while_identity_2/
+bidirectional_forward_lstm_while_identity_3/
+bidirectional_forward_lstm_while_identity_4/
+bidirectional_forward_lstm_while_identity_5O
Kbidirectional_forward_lstm_while_bidirectional_forward_lstm_strided_slice_1
bidirectional_forward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_forward_lstm_tensorarrayunstack_tensorlistfromtensor^
Kbidirectional_forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource:	
`
Mbidirectional_forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource:	 [
Lbidirectional_forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource:	¢Cbidirectional/forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp¢Bbidirectional/forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp¢Dbidirectional/forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp£
Rbidirectional/forward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ®
Dbidirectional/forward_lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_forward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0,bidirectional_forward_lstm_while_placeholder[bidirectional/forward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0Ñ
Bbidirectional/forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpMbidirectional_forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0
3bidirectional/forward_lstm/while/lstm_cell_1/MatMulMatMulKbidirectional/forward_lstm/while/TensorArrayV2Read/TensorListGetItem:item:0Jbidirectional/forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
Dbidirectional/forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpObidirectional_forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0ð
5bidirectional/forward_lstm/while/lstm_cell_1/MatMul_1MatMul.bidirectional_forward_lstm_while_placeholder_2Lbidirectional/forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿì
0bidirectional/forward_lstm/while/lstm_cell_1/addAddV2=bidirectional/forward_lstm/while/lstm_cell_1/MatMul:product:0?bidirectional/forward_lstm/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
Cbidirectional/forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpNbidirectional_forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0õ
4bidirectional/forward_lstm/while/lstm_cell_1/BiasAddBiasAdd4bidirectional/forward_lstm/while/lstm_cell_1/add:z:0Kbidirectional/forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
<bidirectional/forward_lstm/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :½
2bidirectional/forward_lstm/while/lstm_cell_1/splitSplitEbidirectional/forward_lstm/while/lstm_cell_1/split/split_dim:output:0=bidirectional/forward_lstm/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split®
4bidirectional/forward_lstm/while/lstm_cell_1/SigmoidSigmoid;bidirectional/forward_lstm/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ °
6bidirectional/forward_lstm/while/lstm_cell_1/Sigmoid_1Sigmoid;bidirectional/forward_lstm/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Õ
0bidirectional/forward_lstm/while/lstm_cell_1/mulMul:bidirectional/forward_lstm/while/lstm_cell_1/Sigmoid_1:y:0.bidirectional_forward_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¨
1bidirectional/forward_lstm/while/lstm_cell_1/ReluRelu;bidirectional/forward_lstm/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ æ
2bidirectional/forward_lstm/while/lstm_cell_1/mul_1Mul8bidirectional/forward_lstm/while/lstm_cell_1/Sigmoid:y:0?bidirectional/forward_lstm/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Û
2bidirectional/forward_lstm/while/lstm_cell_1/add_1AddV24bidirectional/forward_lstm/while/lstm_cell_1/mul:z:06bidirectional/forward_lstm/while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ °
6bidirectional/forward_lstm/while/lstm_cell_1/Sigmoid_2Sigmoid;bidirectional/forward_lstm/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¥
3bidirectional/forward_lstm/while/lstm_cell_1/Relu_1Relu6bidirectional/forward_lstm/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ê
2bidirectional/forward_lstm/while/lstm_cell_1/mul_2Mul:bidirectional/forward_lstm/while/lstm_cell_1/Sigmoid_2:y:0Abidirectional/forward_lstm/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ °
Ebidirectional/forward_lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem.bidirectional_forward_lstm_while_placeholder_1,bidirectional_forward_lstm_while_placeholder6bidirectional/forward_lstm/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒh
&bidirectional/forward_lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :­
$bidirectional/forward_lstm/while/addAddV2,bidirectional_forward_lstm_while_placeholder/bidirectional/forward_lstm/while/add/y:output:0*
T0*
_output_shapes
: j
(bidirectional/forward_lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ó
&bidirectional/forward_lstm/while/add_1AddV2Nbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_loop_counter1bidirectional/forward_lstm/while/add_1/y:output:0*
T0*
_output_shapes
: ª
)bidirectional/forward_lstm/while/IdentityIdentity*bidirectional/forward_lstm/while/add_1:z:0&^bidirectional/forward_lstm/while/NoOp*
T0*
_output_shapes
: Ö
+bidirectional/forward_lstm/while/Identity_1IdentityTbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_maximum_iterations&^bidirectional/forward_lstm/while/NoOp*
T0*
_output_shapes
: ª
+bidirectional/forward_lstm/while/Identity_2Identity(bidirectional/forward_lstm/while/add:z:0&^bidirectional/forward_lstm/while/NoOp*
T0*
_output_shapes
: ×
+bidirectional/forward_lstm/while/Identity_3IdentityUbidirectional/forward_lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0&^bidirectional/forward_lstm/while/NoOp*
T0*
_output_shapes
: É
+bidirectional/forward_lstm/while/Identity_4Identity6bidirectional/forward_lstm/while/lstm_cell_1/mul_2:z:0&^bidirectional/forward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ É
+bidirectional/forward_lstm/while/Identity_5Identity6bidirectional/forward_lstm/while/lstm_cell_1/add_1:z:0&^bidirectional/forward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¹
%bidirectional/forward_lstm/while/NoOpNoOpD^bidirectional/forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOpC^bidirectional/forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOpE^bidirectional/forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Kbidirectional_forward_lstm_while_bidirectional_forward_lstm_strided_slice_1Mbidirectional_forward_lstm_while_bidirectional_forward_lstm_strided_slice_1_0"_
)bidirectional_forward_lstm_while_identity2bidirectional/forward_lstm/while/Identity:output:0"c
+bidirectional_forward_lstm_while_identity_14bidirectional/forward_lstm/while/Identity_1:output:0"c
+bidirectional_forward_lstm_while_identity_24bidirectional/forward_lstm/while/Identity_2:output:0"c
+bidirectional_forward_lstm_while_identity_34bidirectional/forward_lstm/while/Identity_3:output:0"c
+bidirectional_forward_lstm_while_identity_44bidirectional/forward_lstm/while/Identity_4:output:0"c
+bidirectional_forward_lstm_while_identity_54bidirectional/forward_lstm/while/Identity_5:output:0"
Lbidirectional_forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resourceNbidirectional_forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0" 
Mbidirectional_forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resourceObidirectional_forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0"
Kbidirectional_forward_lstm_while_lstm_cell_1_matmul_readvariableop_resourceMbidirectional_forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0"
bidirectional_forward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_forward_lstm_tensorarrayunstack_tensorlistfromtensorbidirectional_forward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2
Cbidirectional/forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOpCbidirectional/forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp2
Bbidirectional/forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOpBbidirectional/forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp2
Dbidirectional/forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOpDbidirectional/forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
î
ö
-__inference_lstm_cell_2_layer_call_fn_1220482

inputs
states_0
states_1
unknown:	

	unknown_0:	 
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1215432o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/1
Ý

H__inference_lstm_cell_1_layer_call_and_return_conditional_losses_1220448

inputs
states_0
states_11
matmul_readvariableop_resource:	
3
 matmul_1_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/1
°
ä
-bidirectional_forward_lstm_while_cond_1217292R
Nbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_loop_counterX
Tbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_maximum_iterations0
,bidirectional_forward_lstm_while_placeholder2
.bidirectional_forward_lstm_while_placeholder_12
.bidirectional_forward_lstm_while_placeholder_22
.bidirectional_forward_lstm_while_placeholder_3T
Pbidirectional_forward_lstm_while_less_bidirectional_forward_lstm_strided_slice_1k
gbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_cond_1217292___redundant_placeholder0k
gbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_cond_1217292___redundant_placeholder1k
gbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_cond_1217292___redundant_placeholder2k
gbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_cond_1217292___redundant_placeholder3-
)bidirectional_forward_lstm_while_identity
Î
%bidirectional/forward_lstm/while/LessLess,bidirectional_forward_lstm_while_placeholderPbidirectional_forward_lstm_while_less_bidirectional_forward_lstm_strided_slice_1*
T0*
_output_shapes
: 
)bidirectional/forward_lstm/while/IdentityIdentity)bidirectional/forward_lstm/while/Less:z:0*
T0
*
_output_shapes
: "_
)bidirectional_forward_lstm_while_identity2bidirectional/forward_lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
H

 backward_lstm_while_body_12189728
4backward_lstm_while_backward_lstm_while_loop_counter>
:backward_lstm_while_backward_lstm_while_maximum_iterations#
backward_lstm_while_placeholder%
!backward_lstm_while_placeholder_1%
!backward_lstm_while_placeholder_2%
!backward_lstm_while_placeholder_37
3backward_lstm_while_backward_lstm_strided_slice_1_0s
obackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0S
@backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0:	
U
Bbackward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 P
Abackward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0:	 
backward_lstm_while_identity"
backward_lstm_while_identity_1"
backward_lstm_while_identity_2"
backward_lstm_while_identity_3"
backward_lstm_while_identity_4"
backward_lstm_while_identity_55
1backward_lstm_while_backward_lstm_strided_slice_1q
mbackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensorQ
>backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource:	
S
@backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource:	 N
?backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource:	¢6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp¢5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp¢7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp
Ebackward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ì
7backward_lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemobackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0backward_lstm_while_placeholderNbackward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0·
5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp@backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0â
&backward_lstm/while/lstm_cell_2/MatMulMatMul>backward_lstm/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpBbackward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0É
(backward_lstm/while/lstm_cell_2/MatMul_1MatMul!backward_lstm_while_placeholder_2?backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
#backward_lstm/while/lstm_cell_2/addAddV20backward_lstm/while/lstm_cell_2/MatMul:product:02backward_lstm/while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpAbackward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
'backward_lstm/while/lstm_cell_2/BiasAddBiasAdd'backward_lstm/while/lstm_cell_2/add:z:0>backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
/backward_lstm/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%backward_lstm/while/lstm_cell_2/splitSplit8backward_lstm/while/lstm_cell_2/split/split_dim:output:00backward_lstm/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
'backward_lstm/while/lstm_cell_2/SigmoidSigmoid.backward_lstm/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)backward_lstm/while/lstm_cell_2/Sigmoid_1Sigmoid.backward_lstm/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ®
#backward_lstm/while/lstm_cell_2/mulMul-backward_lstm/while/lstm_cell_2/Sigmoid_1:y:0!backward_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
$backward_lstm/while/lstm_cell_2/ReluRelu.backward_lstm/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¿
%backward_lstm/while/lstm_cell_2/mul_1Mul+backward_lstm/while/lstm_cell_2/Sigmoid:y:02backward_lstm/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ´
%backward_lstm/while/lstm_cell_2/add_1AddV2'backward_lstm/while/lstm_cell_2/mul:z:0)backward_lstm/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)backward_lstm/while/lstm_cell_2/Sigmoid_2Sigmoid.backward_lstm/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&backward_lstm/while/lstm_cell_2/Relu_1Relu)backward_lstm/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ã
%backward_lstm/while/lstm_cell_2/mul_2Mul-backward_lstm/while/lstm_cell_2/Sigmoid_2:y:04backward_lstm/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ü
8backward_lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!backward_lstm_while_placeholder_1backward_lstm_while_placeholder)backward_lstm/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒ[
backward_lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm/while/addAddV2backward_lstm_while_placeholder"backward_lstm/while/add/y:output:0*
T0*
_output_shapes
: ]
backward_lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm/while/add_1AddV24backward_lstm_while_backward_lstm_while_loop_counter$backward_lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm/while/IdentityIdentitybackward_lstm/while/add_1:z:0^backward_lstm/while/NoOp*
T0*
_output_shapes
: ¢
backward_lstm/while/Identity_1Identity:backward_lstm_while_backward_lstm_while_maximum_iterations^backward_lstm/while/NoOp*
T0*
_output_shapes
: 
backward_lstm/while/Identity_2Identitybackward_lstm/while/add:z:0^backward_lstm/while/NoOp*
T0*
_output_shapes
: °
backward_lstm/while/Identity_3IdentityHbackward_lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm/while/NoOp*
T0*
_output_shapes
: ¢
backward_lstm/while/Identity_4Identity)backward_lstm/while/lstm_cell_2/mul_2:z:0^backward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
backward_lstm/while/Identity_5Identity)backward_lstm/while/lstm_cell_2/add_1:z:0^backward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
backward_lstm/while/NoOpNoOp7^backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp6^backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp8^backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1backward_lstm_while_backward_lstm_strided_slice_13backward_lstm_while_backward_lstm_strided_slice_1_0"E
backward_lstm_while_identity%backward_lstm/while/Identity:output:0"I
backward_lstm_while_identity_1'backward_lstm/while/Identity_1:output:0"I
backward_lstm_while_identity_2'backward_lstm/while/Identity_2:output:0"I
backward_lstm_while_identity_3'backward_lstm/while/Identity_3:output:0"I
backward_lstm_while_identity_4'backward_lstm/while/Identity_4:output:0"I
backward_lstm_while_identity_5'backward_lstm/while/Identity_5:output:0"
?backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resourceAbackward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0"
@backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resourceBbackward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0"
>backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource@backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0"à
mbackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensorobackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2p
6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp2n
5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp2r
7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
Ì
ø
.bidirectional_backward_lstm_while_cond_1217736T
Pbidirectional_backward_lstm_while_bidirectional_backward_lstm_while_loop_counterZ
Vbidirectional_backward_lstm_while_bidirectional_backward_lstm_while_maximum_iterations1
-bidirectional_backward_lstm_while_placeholder3
/bidirectional_backward_lstm_while_placeholder_13
/bidirectional_backward_lstm_while_placeholder_23
/bidirectional_backward_lstm_while_placeholder_3V
Rbidirectional_backward_lstm_while_less_bidirectional_backward_lstm_strided_slice_1m
ibidirectional_backward_lstm_while_bidirectional_backward_lstm_while_cond_1217736___redundant_placeholder0m
ibidirectional_backward_lstm_while_bidirectional_backward_lstm_while_cond_1217736___redundant_placeholder1m
ibidirectional_backward_lstm_while_bidirectional_backward_lstm_while_cond_1217736___redundant_placeholder2m
ibidirectional_backward_lstm_while_bidirectional_backward_lstm_while_cond_1217736___redundant_placeholder3.
*bidirectional_backward_lstm_while_identity
Ò
&bidirectional/backward_lstm/while/LessLess-bidirectional_backward_lstm_while_placeholderRbidirectional_backward_lstm_while_less_bidirectional_backward_lstm_strided_slice_1*
T0*
_output_shapes
: 
*bidirectional/backward_lstm/while/IdentityIdentity*bidirectional/backward_lstm/while/Less:z:0*
T0
*
_output_shapes
: "a
*bidirectional_backward_lstm_while_identity3bidirectional/backward_lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
Ã
à
 backward_lstm_while_cond_12168888
4backward_lstm_while_backward_lstm_while_loop_counter>
:backward_lstm_while_backward_lstm_while_maximum_iterations#
backward_lstm_while_placeholder%
!backward_lstm_while_placeholder_1%
!backward_lstm_while_placeholder_2%
!backward_lstm_while_placeholder_3:
6backward_lstm_while_less_backward_lstm_strided_slice_1Q
Mbackward_lstm_while_backward_lstm_while_cond_1216888___redundant_placeholder0Q
Mbackward_lstm_while_backward_lstm_while_cond_1216888___redundant_placeholder1Q
Mbackward_lstm_while_backward_lstm_while_cond_1216888___redundant_placeholder2Q
Mbackward_lstm_while_backward_lstm_while_cond_1216888___redundant_placeholder3 
backward_lstm_while_identity

backward_lstm/while/LessLessbackward_lstm_while_placeholder6backward_lstm_while_less_backward_lstm_strided_slice_1*
T0*
_output_shapes
: g
backward_lstm/while/IdentityIdentitybackward_lstm/while/Less:z:0*
T0
*
_output_shapes
: "E
backward_lstm_while_identity%backward_lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
Ç	
õ
D__inference_dense_1_layer_call_and_return_conditional_losses_1216614

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ
¼
/__inference_backward_lstm_layer_call_fn_1219759

inputs
unknown:	

	unknown_0:	 
	unknown_1:	
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_backward_lstm_layer_call_and_return_conditional_losses_1215872|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Â
Ñ
G__inference_sequential_layer_call_and_return_conditional_losses_1217151
bidirectional_input(
bidirectional_1217126:	
(
bidirectional_1217128:	 $
bidirectional_1217130:	(
bidirectional_1217132:	
(
bidirectional_1217134:	 $
bidirectional_1217136:	
dense_1217140:@
dense_1217142:!
dense_1_1217145:
dense_1_1217147:
identity¢%bidirectional/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCallÿ
%bidirectional/StatefulPartitionedCallStatefulPartitionedCallbidirectional_inputbidirectional_1217126bidirectional_1217128bidirectional_1217130bidirectional_1217132bidirectional_1217134bidirectional_1217136*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_bidirectional_layer_call_and_return_conditional_losses_1216977â
flatten/PartitionedCallPartitionedCall.bidirectional/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1216585
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1217140dense_1217142*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1216598
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1217145dense_1_1217147*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1216614w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
NoOpNoOp&^bidirectional/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 2N
%bidirectional/StatefulPartitionedCall%bidirectional/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

-
_user_specified_namebidirectional_input
É7
È
while_body_1219976
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	
G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	
E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	 @
1while_lstm_cell_2_biasadd_readvariableop_resource:	¢(while/lstm_cell_2/BiasAdd/ReadVariableOp¢'while/lstm_cell_2/MatMul/ReadVariableOp¢)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0¸
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Í

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
Ô


,__inference_sequential_layer_call_fn_1217095
bidirectional_input
unknown:	

	unknown_0:	 
	unknown_1:	
	unknown_2:	

	unknown_3:	 
	unknown_4:	
	unknown_5:@
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallbidirectional_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1217047o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

-
_user_specified_namebidirectional_input
Õ

H__inference_lstm_cell_1_layer_call_and_return_conditional_losses_1215080

inputs

states
states_11
matmul_readvariableop_resource:	
3
 matmul_1_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates
³L

J__inference_backward_lstm_layer_call_and_return_conditional_losses_1220205

inputs=
*lstm_cell_2_matmul_readvariableop_resource:	
?
,lstm_cell_2_matmul_1_readvariableop_resource:	 :
+lstm_cell_2_biasadd_readvariableop_resource:	
identity¢"lstm_cell_2/BiasAdd/ReadVariableOp¢!lstm_cell_2/MatMul/ReadVariableOp¢#lstm_cell_2/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿå
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1220121*
condR
while_cond_1220120*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ½
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ø	
9sequential_bidirectional_backward_lstm_while_cond_1214763j
fsequential_bidirectional_backward_lstm_while_sequential_bidirectional_backward_lstm_while_loop_counterp
lsequential_bidirectional_backward_lstm_while_sequential_bidirectional_backward_lstm_while_maximum_iterations<
8sequential_bidirectional_backward_lstm_while_placeholder>
:sequential_bidirectional_backward_lstm_while_placeholder_1>
:sequential_bidirectional_backward_lstm_while_placeholder_2>
:sequential_bidirectional_backward_lstm_while_placeholder_3l
hsequential_bidirectional_backward_lstm_while_less_sequential_bidirectional_backward_lstm_strided_slice_1
sequential_bidirectional_backward_lstm_while_sequential_bidirectional_backward_lstm_while_cond_1214763___redundant_placeholder0
sequential_bidirectional_backward_lstm_while_sequential_bidirectional_backward_lstm_while_cond_1214763___redundant_placeholder1
sequential_bidirectional_backward_lstm_while_sequential_bidirectional_backward_lstm_while_cond_1214763___redundant_placeholder2
sequential_bidirectional_backward_lstm_while_sequential_bidirectional_backward_lstm_while_cond_1214763___redundant_placeholder39
5sequential_bidirectional_backward_lstm_while_identity
þ
1sequential/bidirectional/backward_lstm/while/LessLess8sequential_bidirectional_backward_lstm_while_placeholderhsequential_bidirectional_backward_lstm_while_less_sequential_bidirectional_backward_lstm_strided_slice_1*
T0*
_output_shapes
: 
5sequential/bidirectional/backward_lstm/while/IdentityIdentity5sequential/bidirectional/backward_lstm/while/Less:z:0*
T0
*
_output_shapes
: "w
5sequential_bidirectional_backward_lstm_while_identity>sequential/bidirectional/backward_lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
Â
Ñ
G__inference_sequential_layer_call_and_return_conditional_losses_1217123
bidirectional_input(
bidirectional_1217098:	
(
bidirectional_1217100:	 $
bidirectional_1217102:	(
bidirectional_1217104:	
(
bidirectional_1217106:	 $
bidirectional_1217108:	
dense_1217112:@
dense_1217114:!
dense_1_1217117:
dense_1_1217119:
identity¢%bidirectional/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCallÿ
%bidirectional/StatefulPartitionedCallStatefulPartitionedCallbidirectional_inputbidirectional_1217098bidirectional_1217100bidirectional_1217102bidirectional_1217104bidirectional_1217106bidirectional_1217108*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_bidirectional_layer_call_and_return_conditional_losses_1216565â
flatten/PartitionedCallPartitionedCall.bidirectional/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1216585
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1217112dense_1217114*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1216598
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1217117dense_1_1217119*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1216614w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
NoOpNoOp&^bidirectional/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 2N
%bidirectional/StatefulPartitionedCall%bidirectional/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

-
_user_specified_namebidirectional_input


"__inference__wrapped_model_1214867
bidirectional_inputc
Psequential_bidirectional_forward_lstm_lstm_cell_1_matmul_readvariableop_resource:	
e
Rsequential_bidirectional_forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource:	 `
Qsequential_bidirectional_forward_lstm_lstm_cell_1_biasadd_readvariableop_resource:	d
Qsequential_bidirectional_backward_lstm_lstm_cell_2_matmul_readvariableop_resource:	
f
Ssequential_bidirectional_backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource:	 a
Rsequential_bidirectional_backward_lstm_lstm_cell_2_biasadd_readvariableop_resource:	A
/sequential_dense_matmul_readvariableop_resource:@>
0sequential_dense_biasadd_readvariableop_resource:C
1sequential_dense_1_matmul_readvariableop_resource:@
2sequential_dense_1_biasadd_readvariableop_resource:
identity¢Isequential/bidirectional/backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp¢Hsequential/bidirectional/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp¢Jsequential/bidirectional/backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp¢,sequential/bidirectional/backward_lstm/while¢Hsequential/bidirectional/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp¢Gsequential/bidirectional/forward_lstm/lstm_cell_1/MatMul/ReadVariableOp¢Isequential/bidirectional/forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp¢+sequential/bidirectional/forward_lstm/while¢'sequential/dense/BiasAdd/ReadVariableOp¢&sequential/dense/MatMul/ReadVariableOp¢)sequential/dense_1/BiasAdd/ReadVariableOp¢(sequential/dense_1/MatMul/ReadVariableOpn
+sequential/bidirectional/forward_lstm/ShapeShapebidirectional_input*
T0*
_output_shapes
:
9sequential/bidirectional/forward_lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;sequential/bidirectional/forward_lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;sequential/bidirectional/forward_lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3sequential/bidirectional/forward_lstm/strided_sliceStridedSlice4sequential/bidirectional/forward_lstm/Shape:output:0Bsequential/bidirectional/forward_lstm/strided_slice/stack:output:0Dsequential/bidirectional/forward_lstm/strided_slice/stack_1:output:0Dsequential/bidirectional/forward_lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4sequential/bidirectional/forward_lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : å
2sequential/bidirectional/forward_lstm/zeros/packedPack<sequential/bidirectional/forward_lstm/strided_slice:output:0=sequential/bidirectional/forward_lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:v
1sequential/bidirectional/forward_lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Þ
+sequential/bidirectional/forward_lstm/zerosFill;sequential/bidirectional/forward_lstm/zeros/packed:output:0:sequential/bidirectional/forward_lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
6sequential/bidirectional/forward_lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : é
4sequential/bidirectional/forward_lstm/zeros_1/packedPack<sequential/bidirectional/forward_lstm/strided_slice:output:0?sequential/bidirectional/forward_lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:x
3sequential/bidirectional/forward_lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ä
-sequential/bidirectional/forward_lstm/zeros_1Fill=sequential/bidirectional/forward_lstm/zeros_1/packed:output:0<sequential/bidirectional/forward_lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
4sequential/bidirectional/forward_lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Æ
/sequential/bidirectional/forward_lstm/transpose	Transposebidirectional_input=sequential/bidirectional/forward_lstm/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

-sequential/bidirectional/forward_lstm/Shape_1Shape3sequential/bidirectional/forward_lstm/transpose:y:0*
T0*
_output_shapes
:
;sequential/bidirectional/forward_lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=sequential/bidirectional/forward_lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=sequential/bidirectional/forward_lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5sequential/bidirectional/forward_lstm/strided_slice_1StridedSlice6sequential/bidirectional/forward_lstm/Shape_1:output:0Dsequential/bidirectional/forward_lstm/strided_slice_1/stack:output:0Fsequential/bidirectional/forward_lstm/strided_slice_1/stack_1:output:0Fsequential/bidirectional/forward_lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Asequential/bidirectional/forward_lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¦
3sequential/bidirectional/forward_lstm/TensorArrayV2TensorListReserveJsequential/bidirectional/forward_lstm/TensorArrayV2/element_shape:output:0>sequential/bidirectional/forward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ¬
[sequential/bidirectional/forward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ò
Msequential/bidirectional/forward_lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor3sequential/bidirectional/forward_lstm/transpose:y:0dsequential/bidirectional/forward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
;sequential/bidirectional/forward_lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=sequential/bidirectional/forward_lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=sequential/bidirectional/forward_lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:§
5sequential/bidirectional/forward_lstm/strided_slice_2StridedSlice3sequential/bidirectional/forward_lstm/transpose:y:0Dsequential/bidirectional/forward_lstm/strided_slice_2/stack:output:0Fsequential/bidirectional/forward_lstm/strided_slice_2/stack_1:output:0Fsequential/bidirectional/forward_lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskÙ
Gsequential/bidirectional/forward_lstm/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpPsequential_bidirectional_forward_lstm_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
8sequential/bidirectional/forward_lstm/lstm_cell_1/MatMulMatMul>sequential/bidirectional/forward_lstm/strided_slice_2:output:0Osequential/bidirectional/forward_lstm/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÝ
Isequential/bidirectional/forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpRsequential_bidirectional_forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
:sequential/bidirectional/forward_lstm/lstm_cell_1/MatMul_1MatMul4sequential/bidirectional/forward_lstm/zeros:output:0Qsequential/bidirectional/forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû
5sequential/bidirectional/forward_lstm/lstm_cell_1/addAddV2Bsequential/bidirectional/forward_lstm/lstm_cell_1/MatMul:product:0Dsequential/bidirectional/forward_lstm/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
Hsequential/bidirectional/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpQsequential_bidirectional_forward_lstm_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
9sequential/bidirectional/forward_lstm/lstm_cell_1/BiasAddBiasAdd9sequential/bidirectional/forward_lstm/lstm_cell_1/add:z:0Psequential/bidirectional/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Asequential/bidirectional/forward_lstm/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ì
7sequential/bidirectional/forward_lstm/lstm_cell_1/splitSplitJsequential/bidirectional/forward_lstm/lstm_cell_1/split/split_dim:output:0Bsequential/bidirectional/forward_lstm/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split¸
9sequential/bidirectional/forward_lstm/lstm_cell_1/SigmoidSigmoid@sequential/bidirectional/forward_lstm/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ º
;sequential/bidirectional/forward_lstm/lstm_cell_1/Sigmoid_1Sigmoid@sequential/bidirectional/forward_lstm/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ç
5sequential/bidirectional/forward_lstm/lstm_cell_1/mulMul?sequential/bidirectional/forward_lstm/lstm_cell_1/Sigmoid_1:y:06sequential/bidirectional/forward_lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ²
6sequential/bidirectional/forward_lstm/lstm_cell_1/ReluRelu@sequential/bidirectional/forward_lstm/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ õ
7sequential/bidirectional/forward_lstm/lstm_cell_1/mul_1Mul=sequential/bidirectional/forward_lstm/lstm_cell_1/Sigmoid:y:0Dsequential/bidirectional/forward_lstm/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ê
7sequential/bidirectional/forward_lstm/lstm_cell_1/add_1AddV29sequential/bidirectional/forward_lstm/lstm_cell_1/mul:z:0;sequential/bidirectional/forward_lstm/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ º
;sequential/bidirectional/forward_lstm/lstm_cell_1/Sigmoid_2Sigmoid@sequential/bidirectional/forward_lstm/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¯
8sequential/bidirectional/forward_lstm/lstm_cell_1/Relu_1Relu;sequential/bidirectional/forward_lstm/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ù
7sequential/bidirectional/forward_lstm/lstm_cell_1/mul_2Mul?sequential/bidirectional/forward_lstm/lstm_cell_1/Sigmoid_2:y:0Fsequential/bidirectional/forward_lstm/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
Csequential/bidirectional/forward_lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ª
5sequential/bidirectional/forward_lstm/TensorArrayV2_1TensorListReserveLsequential/bidirectional/forward_lstm/TensorArrayV2_1/element_shape:output:0>sequential/bidirectional/forward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒl
*sequential/bidirectional/forward_lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 
>sequential/bidirectional/forward_lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿz
8sequential/bidirectional/forward_lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 

+sequential/bidirectional/forward_lstm/whileWhileAsequential/bidirectional/forward_lstm/while/loop_counter:output:0Gsequential/bidirectional/forward_lstm/while/maximum_iterations:output:03sequential/bidirectional/forward_lstm/time:output:0>sequential/bidirectional/forward_lstm/TensorArrayV2_1:handle:04sequential/bidirectional/forward_lstm/zeros:output:06sequential/bidirectional/forward_lstm/zeros_1:output:0>sequential/bidirectional/forward_lstm/strided_slice_1:output:0]sequential/bidirectional/forward_lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0Psequential_bidirectional_forward_lstm_lstm_cell_1_matmul_readvariableop_resourceRsequential_bidirectional_forward_lstm_lstm_cell_1_matmul_1_readvariableop_resourceQsequential_bidirectional_forward_lstm_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *D
body<R:
8sequential_bidirectional_forward_lstm_while_body_1214623*D
cond<R:
8sequential_bidirectional_forward_lstm_while_cond_1214622*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations §
Vsequential/bidirectional/forward_lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ´
Hsequential/bidirectional/forward_lstm/TensorArrayV2Stack/TensorListStackTensorListStack4sequential/bidirectional/forward_lstm/while:output:3_sequential/bidirectional/forward_lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0
;sequential/bidirectional/forward_lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
=sequential/bidirectional/forward_lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
=sequential/bidirectional/forward_lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Å
5sequential/bidirectional/forward_lstm/strided_slice_3StridedSliceQsequential/bidirectional/forward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0Dsequential/bidirectional/forward_lstm/strided_slice_3/stack:output:0Fsequential/bidirectional/forward_lstm/strided_slice_3/stack_1:output:0Fsequential/bidirectional/forward_lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask
6sequential/bidirectional/forward_lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
1sequential/bidirectional/forward_lstm/transpose_1	TransposeQsequential/bidirectional/forward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0?sequential/bidirectional/forward_lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-sequential/bidirectional/forward_lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    o
,sequential/bidirectional/backward_lstm/ShapeShapebidirectional_input*
T0*
_output_shapes
:
:sequential/bidirectional/backward_lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
<sequential/bidirectional/backward_lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
<sequential/bidirectional/backward_lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4sequential/bidirectional/backward_lstm/strided_sliceStridedSlice5sequential/bidirectional/backward_lstm/Shape:output:0Csequential/bidirectional/backward_lstm/strided_slice/stack:output:0Esequential/bidirectional/backward_lstm/strided_slice/stack_1:output:0Esequential/bidirectional/backward_lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
5sequential/bidirectional/backward_lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : è
3sequential/bidirectional/backward_lstm/zeros/packedPack=sequential/bidirectional/backward_lstm/strided_slice:output:0>sequential/bidirectional/backward_lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:w
2sequential/bidirectional/backward_lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    á
,sequential/bidirectional/backward_lstm/zerosFill<sequential/bidirectional/backward_lstm/zeros/packed:output:0;sequential/bidirectional/backward_lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ y
7sequential/bidirectional/backward_lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : ì
5sequential/bidirectional/backward_lstm/zeros_1/packedPack=sequential/bidirectional/backward_lstm/strided_slice:output:0@sequential/bidirectional/backward_lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:y
4sequential/bidirectional/backward_lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ç
.sequential/bidirectional/backward_lstm/zeros_1Fill>sequential/bidirectional/backward_lstm/zeros_1/packed:output:0=sequential/bidirectional/backward_lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
5sequential/bidirectional/backward_lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          È
0sequential/bidirectional/backward_lstm/transpose	Transposebidirectional_input>sequential/bidirectional/backward_lstm/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

.sequential/bidirectional/backward_lstm/Shape_1Shape4sequential/bidirectional/backward_lstm/transpose:y:0*
T0*
_output_shapes
:
<sequential/bidirectional/backward_lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
>sequential/bidirectional/backward_lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
>sequential/bidirectional/backward_lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6sequential/bidirectional/backward_lstm/strided_slice_1StridedSlice7sequential/bidirectional/backward_lstm/Shape_1:output:0Esequential/bidirectional/backward_lstm/strided_slice_1/stack:output:0Gsequential/bidirectional/backward_lstm/strided_slice_1/stack_1:output:0Gsequential/bidirectional/backward_lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Bsequential/bidirectional/backward_lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ©
4sequential/bidirectional/backward_lstm/TensorArrayV2TensorListReserveKsequential/bidirectional/backward_lstm/TensorArrayV2/element_shape:output:0?sequential/bidirectional/backward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5sequential/bidirectional/backward_lstm/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: é
0sequential/bidirectional/backward_lstm/ReverseV2	ReverseV24sequential/bidirectional/backward_lstm/transpose:y:0>sequential/bidirectional/backward_lstm/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
­
\sequential/bidirectional/backward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ú
Nsequential/bidirectional/backward_lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor9sequential/bidirectional/backward_lstm/ReverseV2:output:0esequential/bidirectional/backward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
<sequential/bidirectional/backward_lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
>sequential/bidirectional/backward_lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
>sequential/bidirectional/backward_lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
6sequential/bidirectional/backward_lstm/strided_slice_2StridedSlice4sequential/bidirectional/backward_lstm/transpose:y:0Esequential/bidirectional/backward_lstm/strided_slice_2/stack:output:0Gsequential/bidirectional/backward_lstm/strided_slice_2/stack_1:output:0Gsequential/bidirectional/backward_lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskÛ
Hsequential/bidirectional/backward_lstm/lstm_cell_2/MatMul/ReadVariableOpReadVariableOpQsequential_bidirectional_backward_lstm_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
9sequential/bidirectional/backward_lstm/lstm_cell_2/MatMulMatMul?sequential/bidirectional/backward_lstm/strided_slice_2:output:0Psequential/bidirectional/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿß
Jsequential/bidirectional/backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpSsequential_bidirectional_backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
;sequential/bidirectional/backward_lstm/lstm_cell_2/MatMul_1MatMul5sequential/bidirectional/backward_lstm/zeros:output:0Rsequential/bidirectional/backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
6sequential/bidirectional/backward_lstm/lstm_cell_2/addAddV2Csequential/bidirectional/backward_lstm/lstm_cell_2/MatMul:product:0Esequential/bidirectional/backward_lstm/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
Isequential/bidirectional/backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpRsequential_bidirectional_backward_lstm_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
:sequential/bidirectional/backward_lstm/lstm_cell_2/BiasAddBiasAdd:sequential/bidirectional/backward_lstm/lstm_cell_2/add:z:0Qsequential/bidirectional/backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Bsequential/bidirectional/backward_lstm/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ï
8sequential/bidirectional/backward_lstm/lstm_cell_2/splitSplitKsequential/bidirectional/backward_lstm/lstm_cell_2/split/split_dim:output:0Csequential/bidirectional/backward_lstm/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitº
:sequential/bidirectional/backward_lstm/lstm_cell_2/SigmoidSigmoidAsequential/bidirectional/backward_lstm/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼
<sequential/bidirectional/backward_lstm/lstm_cell_2/Sigmoid_1SigmoidAsequential/bidirectional/backward_lstm/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ê
6sequential/bidirectional/backward_lstm/lstm_cell_2/mulMul@sequential/bidirectional/backward_lstm/lstm_cell_2/Sigmoid_1:y:07sequential/bidirectional/backward_lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ´
7sequential/bidirectional/backward_lstm/lstm_cell_2/ReluReluAsequential/bidirectional/backward_lstm/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ø
8sequential/bidirectional/backward_lstm/lstm_cell_2/mul_1Mul>sequential/bidirectional/backward_lstm/lstm_cell_2/Sigmoid:y:0Esequential/bidirectional/backward_lstm/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ í
8sequential/bidirectional/backward_lstm/lstm_cell_2/add_1AddV2:sequential/bidirectional/backward_lstm/lstm_cell_2/mul:z:0<sequential/bidirectional/backward_lstm/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼
<sequential/bidirectional/backward_lstm/lstm_cell_2/Sigmoid_2SigmoidAsequential/bidirectional/backward_lstm/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ±
9sequential/bidirectional/backward_lstm/lstm_cell_2/Relu_1Relu<sequential/bidirectional/backward_lstm/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ü
8sequential/bidirectional/backward_lstm/lstm_cell_2/mul_2Mul@sequential/bidirectional/backward_lstm/lstm_cell_2/Sigmoid_2:y:0Gsequential/bidirectional/backward_lstm/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
Dsequential/bidirectional/backward_lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ­
6sequential/bidirectional/backward_lstm/TensorArrayV2_1TensorListReserveMsequential/bidirectional/backward_lstm/TensorArrayV2_1/element_shape:output:0?sequential/bidirectional/backward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒm
+sequential/bidirectional/backward_lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 
?sequential/bidirectional/backward_lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ{
9sequential/bidirectional/backward_lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : £

,sequential/bidirectional/backward_lstm/whileWhileBsequential/bidirectional/backward_lstm/while/loop_counter:output:0Hsequential/bidirectional/backward_lstm/while/maximum_iterations:output:04sequential/bidirectional/backward_lstm/time:output:0?sequential/bidirectional/backward_lstm/TensorArrayV2_1:handle:05sequential/bidirectional/backward_lstm/zeros:output:07sequential/bidirectional/backward_lstm/zeros_1:output:0?sequential/bidirectional/backward_lstm/strided_slice_1:output:0^sequential/bidirectional/backward_lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0Qsequential_bidirectional_backward_lstm_lstm_cell_2_matmul_readvariableop_resourceSsequential_bidirectional_backward_lstm_lstm_cell_2_matmul_1_readvariableop_resourceRsequential_bidirectional_backward_lstm_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *E
body=R;
9sequential_bidirectional_backward_lstm_while_body_1214764*E
cond=R;
9sequential_bidirectional_backward_lstm_while_cond_1214763*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations ¨
Wsequential/bidirectional/backward_lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ·
Isequential/bidirectional/backward_lstm/TensorArrayV2Stack/TensorListStackTensorListStack5sequential/bidirectional/backward_lstm/while:output:3`sequential/bidirectional/backward_lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0
<sequential/bidirectional/backward_lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
>sequential/bidirectional/backward_lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
>sequential/bidirectional/backward_lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ê
6sequential/bidirectional/backward_lstm/strided_slice_3StridedSliceRsequential/bidirectional/backward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0Esequential/bidirectional/backward_lstm/strided_slice_3/stack:output:0Gsequential/bidirectional/backward_lstm/strided_slice_3/stack_1:output:0Gsequential/bidirectional/backward_lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask
7sequential/bidirectional/backward_lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
2sequential/bidirectional/backward_lstm/transpose_1	TransposeRsequential/bidirectional/backward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0@sequential/bidirectional/backward_lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
.sequential/bidirectional/backward_lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    q
'sequential/bidirectional/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Ï
"sequential/bidirectional/ReverseV2	ReverseV26sequential/bidirectional/backward_lstm/transpose_1:y:00sequential/bidirectional/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
$sequential/bidirectional/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ý
sequential/bidirectional/concatConcatV25sequential/bidirectional/forward_lstm/transpose_1:y:0+sequential/bidirectional/ReverseV2:output:0-sequential/bidirectional/concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¤
sequential/flatten/ReshapeReshape(sequential/bidirectional/concat:output:0!sequential/flatten/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0¨
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0©
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¬
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
IdentityIdentity#sequential/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOpJ^sequential/bidirectional/backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOpI^sequential/bidirectional/backward_lstm/lstm_cell_2/MatMul/ReadVariableOpK^sequential/bidirectional/backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp-^sequential/bidirectional/backward_lstm/whileI^sequential/bidirectional/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOpH^sequential/bidirectional/forward_lstm/lstm_cell_1/MatMul/ReadVariableOpJ^sequential/bidirectional/forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp,^sequential/bidirectional/forward_lstm/while(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 2
Isequential/bidirectional/backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOpIsequential/bidirectional/backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp2
Hsequential/bidirectional/backward_lstm/lstm_cell_2/MatMul/ReadVariableOpHsequential/bidirectional/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp2
Jsequential/bidirectional/backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOpJsequential/bidirectional/backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp2\
,sequential/bidirectional/backward_lstm/while,sequential/bidirectional/backward_lstm/while2
Hsequential/bidirectional/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOpHsequential/bidirectional/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp2
Gsequential/bidirectional/forward_lstm/lstm_cell_1/MatMul/ReadVariableOpGsequential/bidirectional/forward_lstm/lstm_cell_1/MatMul/ReadVariableOp2
Isequential/bidirectional/forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOpIsequential/bidirectional/forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp2Z
+sequential/bidirectional/forward_lstm/while+sequential/bidirectional/forward_lstm/while2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

-
_user_specified_namebidirectional_input
É7
È
while_body_1219831
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	
G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	
E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	 @
1while_lstm_cell_2_biasadd_readvariableop_resource:	¢(while/lstm_cell_2/BiasAdd/ReadVariableOp¢'while/lstm_cell_2/MatMul/ReadVariableOp¢)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0¸
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Í

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
Á

'__inference_dense_layer_call_fn_1219080

inputs
unknown:@
	unknown_0:
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1216598o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ò7
È
while_body_1220266
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	
G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	
E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	 @
1while_lstm_cell_2_biasadd_readvariableop_resource:	¢(while/lstm_cell_2/BiasAdd/ReadVariableOp¢'while/lstm_cell_2/MatMul/ReadVariableOp¢)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0¸
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Í

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
Ã
à
 backward_lstm_while_cond_12181078
4backward_lstm_while_backward_lstm_while_loop_counter>
:backward_lstm_while_backward_lstm_while_maximum_iterations#
backward_lstm_while_placeholder%
!backward_lstm_while_placeholder_1%
!backward_lstm_while_placeholder_2%
!backward_lstm_while_placeholder_3:
6backward_lstm_while_less_backward_lstm_strided_slice_1Q
Mbackward_lstm_while_backward_lstm_while_cond_1218107___redundant_placeholder0Q
Mbackward_lstm_while_backward_lstm_while_cond_1218107___redundant_placeholder1Q
Mbackward_lstm_while_backward_lstm_while_cond_1218107___redundant_placeholder2Q
Mbackward_lstm_while_backward_lstm_while_cond_1218107___redundant_placeholder3 
backward_lstm_while_identity

backward_lstm/while/LessLessbackward_lstm_while_placeholder6backward_lstm_while_less_backward_lstm_strided_slice_1*
T0*
_output_shapes
: g
backward_lstm/while/IdentityIdentitybackward_lstm/while/Less:z:0*
T0
*
_output_shapes
: "E
backward_lstm_while_identity%backward_lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:


ó
B__inference_dense_layer_call_and_return_conditional_losses_1219091

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
º
È
while_cond_1219498
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1219498___redundant_placeholder05
1while_while_cond_1219498___redundant_placeholder15
1while_while_cond_1219498___redundant_placeholder25
1while_while_cond_1219498___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
ËX
Ì
.bidirectional_backward_lstm_while_body_1217737T
Pbidirectional_backward_lstm_while_bidirectional_backward_lstm_while_loop_counterZ
Vbidirectional_backward_lstm_while_bidirectional_backward_lstm_while_maximum_iterations1
-bidirectional_backward_lstm_while_placeholder3
/bidirectional_backward_lstm_while_placeholder_13
/bidirectional_backward_lstm_while_placeholder_23
/bidirectional_backward_lstm_while_placeholder_3S
Obidirectional_backward_lstm_while_bidirectional_backward_lstm_strided_slice_1_0
bidirectional_backward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0a
Nbidirectional_backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0:	
c
Pbidirectional_backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 ^
Obidirectional_backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0:	.
*bidirectional_backward_lstm_while_identity0
,bidirectional_backward_lstm_while_identity_10
,bidirectional_backward_lstm_while_identity_20
,bidirectional_backward_lstm_while_identity_30
,bidirectional_backward_lstm_while_identity_40
,bidirectional_backward_lstm_while_identity_5Q
Mbidirectional_backward_lstm_while_bidirectional_backward_lstm_strided_slice_1
bidirectional_backward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_backward_lstm_tensorarrayunstack_tensorlistfromtensor_
Lbidirectional_backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource:	
a
Nbidirectional_backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource:	 \
Mbidirectional_backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource:	¢Dbidirectional/backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp¢Cbidirectional/backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp¢Ebidirectional/backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp¤
Sbidirectional/backward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ³
Ebidirectional/backward_lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_backward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0-bidirectional_backward_lstm_while_placeholder\bidirectional/backward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0Ó
Cbidirectional/backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOpNbidirectional_backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0
4bidirectional/backward_lstm/while/lstm_cell_2/MatMulMatMulLbidirectional/backward_lstm/while/TensorArrayV2Read/TensorListGetItem:item:0Kbidirectional/backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
Ebidirectional/backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpPbidirectional_backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0ó
6bidirectional/backward_lstm/while/lstm_cell_2/MatMul_1MatMul/bidirectional_backward_lstm_while_placeholder_2Mbidirectional/backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿï
1bidirectional/backward_lstm/while/lstm_cell_2/addAddV2>bidirectional/backward_lstm/while/lstm_cell_2/MatMul:product:0@bidirectional/backward_lstm/while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
Dbidirectional/backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpObidirectional_backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ø
5bidirectional/backward_lstm/while/lstm_cell_2/BiasAddBiasAdd5bidirectional/backward_lstm/while/lstm_cell_2/add:z:0Lbidirectional/backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=bidirectional/backward_lstm/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :À
3bidirectional/backward_lstm/while/lstm_cell_2/splitSplitFbidirectional/backward_lstm/while/lstm_cell_2/split/split_dim:output:0>bidirectional/backward_lstm/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split°
5bidirectional/backward_lstm/while/lstm_cell_2/SigmoidSigmoid<bidirectional/backward_lstm/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ²
7bidirectional/backward_lstm/while/lstm_cell_2/Sigmoid_1Sigmoid<bidirectional/backward_lstm/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ø
1bidirectional/backward_lstm/while/lstm_cell_2/mulMul;bidirectional/backward_lstm/while/lstm_cell_2/Sigmoid_1:y:0/bidirectional_backward_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ª
2bidirectional/backward_lstm/while/lstm_cell_2/ReluRelu<bidirectional/backward_lstm/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ é
3bidirectional/backward_lstm/while/lstm_cell_2/mul_1Mul9bidirectional/backward_lstm/while/lstm_cell_2/Sigmoid:y:0@bidirectional/backward_lstm/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Þ
3bidirectional/backward_lstm/while/lstm_cell_2/add_1AddV25bidirectional/backward_lstm/while/lstm_cell_2/mul:z:07bidirectional/backward_lstm/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ²
7bidirectional/backward_lstm/while/lstm_cell_2/Sigmoid_2Sigmoid<bidirectional/backward_lstm/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ §
4bidirectional/backward_lstm/while/lstm_cell_2/Relu_1Relu7bidirectional/backward_lstm/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ í
3bidirectional/backward_lstm/while/lstm_cell_2/mul_2Mul;bidirectional/backward_lstm/while/lstm_cell_2/Sigmoid_2:y:0Bbidirectional/backward_lstm/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ´
Fbidirectional/backward_lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/bidirectional_backward_lstm_while_placeholder_1-bidirectional_backward_lstm_while_placeholder7bidirectional/backward_lstm/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒi
'bidirectional/backward_lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :°
%bidirectional/backward_lstm/while/addAddV2-bidirectional_backward_lstm_while_placeholder0bidirectional/backward_lstm/while/add/y:output:0*
T0*
_output_shapes
: k
)bidirectional/backward_lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :×
'bidirectional/backward_lstm/while/add_1AddV2Pbidirectional_backward_lstm_while_bidirectional_backward_lstm_while_loop_counter2bidirectional/backward_lstm/while/add_1/y:output:0*
T0*
_output_shapes
: ­
*bidirectional/backward_lstm/while/IdentityIdentity+bidirectional/backward_lstm/while/add_1:z:0'^bidirectional/backward_lstm/while/NoOp*
T0*
_output_shapes
: Ú
,bidirectional/backward_lstm/while/Identity_1IdentityVbidirectional_backward_lstm_while_bidirectional_backward_lstm_while_maximum_iterations'^bidirectional/backward_lstm/while/NoOp*
T0*
_output_shapes
: ­
,bidirectional/backward_lstm/while/Identity_2Identity)bidirectional/backward_lstm/while/add:z:0'^bidirectional/backward_lstm/while/NoOp*
T0*
_output_shapes
: Ú
,bidirectional/backward_lstm/while/Identity_3IdentityVbidirectional/backward_lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^bidirectional/backward_lstm/while/NoOp*
T0*
_output_shapes
: Ì
,bidirectional/backward_lstm/while/Identity_4Identity7bidirectional/backward_lstm/while/lstm_cell_2/mul_2:z:0'^bidirectional/backward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ì
,bidirectional/backward_lstm/while/Identity_5Identity7bidirectional/backward_lstm/while/lstm_cell_2/add_1:z:0'^bidirectional/backward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ½
&bidirectional/backward_lstm/while/NoOpNoOpE^bidirectional/backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpD^bidirectional/backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOpF^bidirectional/backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 " 
Mbidirectional_backward_lstm_while_bidirectional_backward_lstm_strided_slice_1Obidirectional_backward_lstm_while_bidirectional_backward_lstm_strided_slice_1_0"a
*bidirectional_backward_lstm_while_identity3bidirectional/backward_lstm/while/Identity:output:0"e
,bidirectional_backward_lstm_while_identity_15bidirectional/backward_lstm/while/Identity_1:output:0"e
,bidirectional_backward_lstm_while_identity_25bidirectional/backward_lstm/while/Identity_2:output:0"e
,bidirectional_backward_lstm_while_identity_35bidirectional/backward_lstm/while/Identity_3:output:0"e
,bidirectional_backward_lstm_while_identity_45bidirectional/backward_lstm/while/Identity_4:output:0"e
,bidirectional_backward_lstm_while_identity_55bidirectional/backward_lstm/while/Identity_5:output:0" 
Mbidirectional_backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resourceObidirectional_backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0"¢
Nbidirectional_backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resourcePbidirectional_backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0"
Lbidirectional_backward_lstm_while_lstm_cell_2_matmul_readvariableop_resourceNbidirectional_backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0"
bidirectional_backward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_backward_lstm_tensorarrayunstack_tensorlistfromtensorbidirectional_backward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2
Dbidirectional/backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpDbidirectional/backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp2
Cbidirectional/backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOpCbidirectional/backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp2
Ebidirectional/backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOpEbidirectional/backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
Ò7
È
while_body_1215636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	
G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	
E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	 @
1while_lstm_cell_1_biasadd_readvariableop_resource:	¢(while/lstm_cell_1/BiasAdd/ReadVariableOp¢'while/lstm_cell_1/MatMul/ReadVariableOp¢)while/lstm_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0¸
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Í

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
	

/__inference_bidirectional_layer_call_fn_1217891

inputs
unknown:	

	unknown_0:	 
	unknown_1:	
	unknown_2:	

	unknown_3:	 
	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_bidirectional_layer_call_and_return_conditional_losses_1216565s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Ò7
È
while_body_1215788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	
G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	
E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	 @
1while_lstm_cell_2_biasadd_readvariableop_resource:	¢(while/lstm_cell_2/BiasAdd/ReadVariableOp¢'while/lstm_cell_2/MatMul/ReadVariableOp¢)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0¸
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Í

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
§
Ì
forward_lstm_while_cond_12188306
2forward_lstm_while_forward_lstm_while_loop_counter<
8forward_lstm_while_forward_lstm_while_maximum_iterations"
forward_lstm_while_placeholder$
 forward_lstm_while_placeholder_1$
 forward_lstm_while_placeholder_2$
 forward_lstm_while_placeholder_38
4forward_lstm_while_less_forward_lstm_strided_slice_1O
Kforward_lstm_while_forward_lstm_while_cond_1218830___redundant_placeholder0O
Kforward_lstm_while_forward_lstm_while_cond_1218830___redundant_placeholder1O
Kforward_lstm_while_forward_lstm_while_cond_1218830___redundant_placeholder2O
Kforward_lstm_while_forward_lstm_while_cond_1218830___redundant_placeholder3
forward_lstm_while_identity

forward_lstm/while/LessLessforward_lstm_while_placeholder4forward_lstm_while_less_forward_lstm_strided_slice_1*
T0*
_output_shapes
: e
forward_lstm/while/IdentityIdentityforward_lstm/while/Less:z:0*
T0
*
_output_shapes
: "C
forward_lstm_while_identity$forward_lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
¨
E
)__inference_flatten_layer_call_fn_1219065

inputs
identity²
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1216585`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

Ä
G__inference_sequential_layer_call_and_return_conditional_losses_1217047

inputs(
bidirectional_1217022:	
(
bidirectional_1217024:	 $
bidirectional_1217026:	(
bidirectional_1217028:	
(
bidirectional_1217030:	 $
bidirectional_1217032:	
dense_1217036:@
dense_1217038:!
dense_1_1217041:
dense_1_1217043:
identity¢%bidirectional/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCallò
%bidirectional/StatefulPartitionedCallStatefulPartitionedCallinputsbidirectional_1217022bidirectional_1217024bidirectional_1217026bidirectional_1217028bidirectional_1217030bidirectional_1217032*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_bidirectional_layer_call_and_return_conditional_losses_1216977â
flatten/PartitionedCallPartitionedCall.bidirectional/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1216585
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1217036dense_1217038*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1216598
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1217041dense_1_1217043*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1216614w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
NoOpNoOp&^bidirectional/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 2N
%bidirectional/StatefulPartitionedCall%bidirectional/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
³L

J__inference_backward_lstm_layer_call_and_return_conditional_losses_1220350

inputs=
*lstm_cell_2_matmul_readvariableop_resource:	
?
,lstm_cell_2_matmul_1_readvariableop_resource:	 :
+lstm_cell_2_biasadd_readvariableop_resource:	
identity¢"lstm_cell_2/BiasAdd/ReadVariableOp¢!lstm_cell_2/MatMul/ReadVariableOp¢#lstm_cell_2/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿå
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1220266*
condR
while_cond_1220265*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ½
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
È
while_cond_1216138
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1216138___redundant_placeholder05
1while_while_cond_1216138___redundant_placeholder15
1while_while_cond_1216138___redundant_placeholder25
1while_while_cond_1216138___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
ÊJ

I__inference_forward_lstm_layer_call_and_return_conditional_losses_1219583

inputs=
*lstm_cell_1_matmul_readvariableop_resource:	
?
,lstm_cell_1_matmul_1_readvariableop_resource:	 :
+lstm_cell_1_biasadd_readvariableop_resource:	
identity¢"lstm_cell_1/BiasAdd/ReadVariableOp¢!lstm_cell_1/MatMul/ReadVariableOp¢#lstm_cell_1/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿà
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1219499*
condR
while_cond_1219498*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ½
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
È
while_cond_1215635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1215635___redundant_placeholder05
1while_while_cond_1215635___redundant_placeholder15
1while_while_cond_1215635___redundant_placeholder25
1while_while_cond_1215635___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
º
È
while_cond_1214947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1214947___redundant_placeholder05
1while_while_cond_1214947___redundant_placeholder15
1while_while_cond_1214947___redundant_placeholder25
1while_while_cond_1214947___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
ÊJ

I__inference_forward_lstm_layer_call_and_return_conditional_losses_1219726

inputs=
*lstm_cell_1_matmul_readvariableop_resource:	
?
,lstm_cell_1_matmul_1_readvariableop_resource:	 :
+lstm_cell_1_biasadd_readvariableop_resource:	
identity¢"lstm_cell_1/BiasAdd/ReadVariableOp¢!lstm_cell_1/MatMul/ReadVariableOp¢#lstm_cell_1/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿà
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1219642*
condR
while_cond_1219641*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ½
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÁZ

 __inference__traced_save_1220692
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableopL
Hsavev2_bidirectional_forward_lstm_lstm_cell_1_kernel_read_readvariableopV
Rsavev2_bidirectional_forward_lstm_lstm_cell_1_recurrent_kernel_read_readvariableopJ
Fsavev2_bidirectional_forward_lstm_lstm_cell_1_bias_read_readvariableopM
Isavev2_bidirectional_backward_lstm_lstm_cell_2_kernel_read_readvariableopW
Ssavev2_bidirectional_backward_lstm_lstm_cell_2_recurrent_kernel_read_readvariableopK
Gsavev2_bidirectional_backward_lstm_lstm_cell_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableopS
Osavev2_adam_bidirectional_forward_lstm_lstm_cell_1_kernel_m_read_readvariableop]
Ysavev2_adam_bidirectional_forward_lstm_lstm_cell_1_recurrent_kernel_m_read_readvariableopQ
Msavev2_adam_bidirectional_forward_lstm_lstm_cell_1_bias_m_read_readvariableopT
Psavev2_adam_bidirectional_backward_lstm_lstm_cell_2_kernel_m_read_readvariableop^
Zsavev2_adam_bidirectional_backward_lstm_lstm_cell_2_recurrent_kernel_m_read_readvariableopR
Nsavev2_adam_bidirectional_backward_lstm_lstm_cell_2_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableopS
Osavev2_adam_bidirectional_forward_lstm_lstm_cell_1_kernel_v_read_readvariableop]
Ysavev2_adam_bidirectional_forward_lstm_lstm_cell_1_recurrent_kernel_v_read_readvariableopQ
Msavev2_adam_bidirectional_forward_lstm_lstm_cell_1_bias_v_read_readvariableopT
Psavev2_adam_bidirectional_backward_lstm_lstm_cell_2_kernel_v_read_readvariableop^
Zsavev2_adam_bidirectional_backward_lstm_lstm_cell_2_recurrent_kernel_v_read_readvariableopR
Nsavev2_adam_bidirectional_backward_lstm_lstm_cell_2_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ç
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*ð
valueæBã*B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÁ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Þ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableopHsavev2_bidirectional_forward_lstm_lstm_cell_1_kernel_read_readvariableopRsavev2_bidirectional_forward_lstm_lstm_cell_1_recurrent_kernel_read_readvariableopFsavev2_bidirectional_forward_lstm_lstm_cell_1_bias_read_readvariableopIsavev2_bidirectional_backward_lstm_lstm_cell_2_kernel_read_readvariableopSsavev2_bidirectional_backward_lstm_lstm_cell_2_recurrent_kernel_read_readvariableopGsavev2_bidirectional_backward_lstm_lstm_cell_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableopOsavev2_adam_bidirectional_forward_lstm_lstm_cell_1_kernel_m_read_readvariableopYsavev2_adam_bidirectional_forward_lstm_lstm_cell_1_recurrent_kernel_m_read_readvariableopMsavev2_adam_bidirectional_forward_lstm_lstm_cell_1_bias_m_read_readvariableopPsavev2_adam_bidirectional_backward_lstm_lstm_cell_2_kernel_m_read_readvariableopZsavev2_adam_bidirectional_backward_lstm_lstm_cell_2_recurrent_kernel_m_read_readvariableopNsavev2_adam_bidirectional_backward_lstm_lstm_cell_2_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopOsavev2_adam_bidirectional_forward_lstm_lstm_cell_1_kernel_v_read_readvariableopYsavev2_adam_bidirectional_forward_lstm_lstm_cell_1_recurrent_kernel_v_read_readvariableopMsavev2_adam_bidirectional_forward_lstm_lstm_cell_1_bias_v_read_readvariableopPsavev2_adam_bidirectional_backward_lstm_lstm_cell_2_kernel_v_read_readvariableopZsavev2_adam_bidirectional_backward_lstm_lstm_cell_2_recurrent_kernel_v_read_readvariableopNsavev2_adam_bidirectional_backward_lstm_lstm_cell_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *8
dtypes.
,2*	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*½
_input_shapes«
¨: :@::::	
:	 ::	
:	 :: : : : : : : : : : : :@::::	
:	 ::	
:	 ::@::::	
:	 ::	
:	 :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	
:%!

_output_shapes
:	 :!

_output_shapes	
::%!

_output_shapes
:	
:%	!

_output_shapes
:	 :!


_output_shapes	
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	
:%!

_output_shapes
:	 :!

_output_shapes	
::%!

_output_shapes
:	
:%!

_output_shapes
:	 :!

_output_shapes	
::$  

_output_shapes

:@: !

_output_shapes
::$" 

_output_shapes

:: #

_output_shapes
::%$!

_output_shapes
:	
:%%!

_output_shapes
:	 :!&

_output_shapes	
::%'!

_output_shapes
:	
:%(!

_output_shapes
:	 :!)

_output_shapes	
::*

_output_shapes
: 
º
È
while_cond_1219830
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1219830___redundant_placeholder05
1while_while_cond_1219830___redundant_placeholder15
1while_while_cond_1219830___redundant_placeholder25
1while_while_cond_1219830___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
÷9

J__inference_backward_lstm_layer_call_and_return_conditional_losses_1215369

inputs&
lstm_cell_2_1215287:	
&
lstm_cell_2_1215289:	 "
lstm_cell_2_1215291:	
identity¢#lstm_cell_2/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   å
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask÷
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_1215287lstm_cell_2_1215289lstm_cell_2_1215291*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1215286n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¹
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_1215287lstm_cell_2_1215289lstm_cell_2_1215291*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1215300*
condR
while_cond_1215299*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ t
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
: : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Ã
à
 backward_lstm_while_cond_12189718
4backward_lstm_while_backward_lstm_while_loop_counter>
:backward_lstm_while_backward_lstm_while_maximum_iterations#
backward_lstm_while_placeholder%
!backward_lstm_while_placeholder_1%
!backward_lstm_while_placeholder_2%
!backward_lstm_while_placeholder_3:
6backward_lstm_while_less_backward_lstm_strided_slice_1Q
Mbackward_lstm_while_backward_lstm_while_cond_1218971___redundant_placeholder0Q
Mbackward_lstm_while_backward_lstm_while_cond_1218971___redundant_placeholder1Q
Mbackward_lstm_while_backward_lstm_while_cond_1218971___redundant_placeholder2Q
Mbackward_lstm_while_backward_lstm_while_cond_1218971___redundant_placeholder3 
backward_lstm_while_identity

backward_lstm/while/LessLessbackward_lstm_while_placeholder6backward_lstm_while_less_backward_lstm_strided_slice_1*
T0*
_output_shapes
: g
backward_lstm/while/IdentityIdentitybackward_lstm/while/Less:z:0*
T0
*
_output_shapes
: "E
backward_lstm_while_identity%backward_lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
Ò7
È
while_body_1219499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	
G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	
E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	 @
1while_lstm_cell_1_biasadd_readvariableop_resource:	¢(while/lstm_cell_1/BiasAdd/ReadVariableOp¢'while/lstm_cell_1/MatMul/ReadVariableOp¢)while/lstm_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0¸
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Í

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
µW
¬
-bidirectional_forward_lstm_while_body_1217596R
Nbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_loop_counterX
Tbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_maximum_iterations0
,bidirectional_forward_lstm_while_placeholder2
.bidirectional_forward_lstm_while_placeholder_12
.bidirectional_forward_lstm_while_placeholder_22
.bidirectional_forward_lstm_while_placeholder_3Q
Mbidirectional_forward_lstm_while_bidirectional_forward_lstm_strided_slice_1_0
bidirectional_forward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0`
Mbidirectional_forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0:	
b
Obidirectional_forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 ]
Nbidirectional_forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0:	-
)bidirectional_forward_lstm_while_identity/
+bidirectional_forward_lstm_while_identity_1/
+bidirectional_forward_lstm_while_identity_2/
+bidirectional_forward_lstm_while_identity_3/
+bidirectional_forward_lstm_while_identity_4/
+bidirectional_forward_lstm_while_identity_5O
Kbidirectional_forward_lstm_while_bidirectional_forward_lstm_strided_slice_1
bidirectional_forward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_forward_lstm_tensorarrayunstack_tensorlistfromtensor^
Kbidirectional_forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource:	
`
Mbidirectional_forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource:	 [
Lbidirectional_forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource:	¢Cbidirectional/forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp¢Bbidirectional/forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp¢Dbidirectional/forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp£
Rbidirectional/forward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ®
Dbidirectional/forward_lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_forward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0,bidirectional_forward_lstm_while_placeholder[bidirectional/forward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0Ñ
Bbidirectional/forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpMbidirectional_forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0
3bidirectional/forward_lstm/while/lstm_cell_1/MatMulMatMulKbidirectional/forward_lstm/while/TensorArrayV2Read/TensorListGetItem:item:0Jbidirectional/forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
Dbidirectional/forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpObidirectional_forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0ð
5bidirectional/forward_lstm/while/lstm_cell_1/MatMul_1MatMul.bidirectional_forward_lstm_while_placeholder_2Lbidirectional/forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿì
0bidirectional/forward_lstm/while/lstm_cell_1/addAddV2=bidirectional/forward_lstm/while/lstm_cell_1/MatMul:product:0?bidirectional/forward_lstm/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
Cbidirectional/forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpNbidirectional_forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0õ
4bidirectional/forward_lstm/while/lstm_cell_1/BiasAddBiasAdd4bidirectional/forward_lstm/while/lstm_cell_1/add:z:0Kbidirectional/forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
<bidirectional/forward_lstm/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :½
2bidirectional/forward_lstm/while/lstm_cell_1/splitSplitEbidirectional/forward_lstm/while/lstm_cell_1/split/split_dim:output:0=bidirectional/forward_lstm/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split®
4bidirectional/forward_lstm/while/lstm_cell_1/SigmoidSigmoid;bidirectional/forward_lstm/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ °
6bidirectional/forward_lstm/while/lstm_cell_1/Sigmoid_1Sigmoid;bidirectional/forward_lstm/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Õ
0bidirectional/forward_lstm/while/lstm_cell_1/mulMul:bidirectional/forward_lstm/while/lstm_cell_1/Sigmoid_1:y:0.bidirectional_forward_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¨
1bidirectional/forward_lstm/while/lstm_cell_1/ReluRelu;bidirectional/forward_lstm/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ æ
2bidirectional/forward_lstm/while/lstm_cell_1/mul_1Mul8bidirectional/forward_lstm/while/lstm_cell_1/Sigmoid:y:0?bidirectional/forward_lstm/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Û
2bidirectional/forward_lstm/while/lstm_cell_1/add_1AddV24bidirectional/forward_lstm/while/lstm_cell_1/mul:z:06bidirectional/forward_lstm/while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ °
6bidirectional/forward_lstm/while/lstm_cell_1/Sigmoid_2Sigmoid;bidirectional/forward_lstm/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¥
3bidirectional/forward_lstm/while/lstm_cell_1/Relu_1Relu6bidirectional/forward_lstm/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ê
2bidirectional/forward_lstm/while/lstm_cell_1/mul_2Mul:bidirectional/forward_lstm/while/lstm_cell_1/Sigmoid_2:y:0Abidirectional/forward_lstm/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ °
Ebidirectional/forward_lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem.bidirectional_forward_lstm_while_placeholder_1,bidirectional_forward_lstm_while_placeholder6bidirectional/forward_lstm/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒh
&bidirectional/forward_lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :­
$bidirectional/forward_lstm/while/addAddV2,bidirectional_forward_lstm_while_placeholder/bidirectional/forward_lstm/while/add/y:output:0*
T0*
_output_shapes
: j
(bidirectional/forward_lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ó
&bidirectional/forward_lstm/while/add_1AddV2Nbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_loop_counter1bidirectional/forward_lstm/while/add_1/y:output:0*
T0*
_output_shapes
: ª
)bidirectional/forward_lstm/while/IdentityIdentity*bidirectional/forward_lstm/while/add_1:z:0&^bidirectional/forward_lstm/while/NoOp*
T0*
_output_shapes
: Ö
+bidirectional/forward_lstm/while/Identity_1IdentityTbidirectional_forward_lstm_while_bidirectional_forward_lstm_while_maximum_iterations&^bidirectional/forward_lstm/while/NoOp*
T0*
_output_shapes
: ª
+bidirectional/forward_lstm/while/Identity_2Identity(bidirectional/forward_lstm/while/add:z:0&^bidirectional/forward_lstm/while/NoOp*
T0*
_output_shapes
: ×
+bidirectional/forward_lstm/while/Identity_3IdentityUbidirectional/forward_lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0&^bidirectional/forward_lstm/while/NoOp*
T0*
_output_shapes
: É
+bidirectional/forward_lstm/while/Identity_4Identity6bidirectional/forward_lstm/while/lstm_cell_1/mul_2:z:0&^bidirectional/forward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ É
+bidirectional/forward_lstm/while/Identity_5Identity6bidirectional/forward_lstm/while/lstm_cell_1/add_1:z:0&^bidirectional/forward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¹
%bidirectional/forward_lstm/while/NoOpNoOpD^bidirectional/forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOpC^bidirectional/forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOpE^bidirectional/forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Kbidirectional_forward_lstm_while_bidirectional_forward_lstm_strided_slice_1Mbidirectional_forward_lstm_while_bidirectional_forward_lstm_strided_slice_1_0"_
)bidirectional_forward_lstm_while_identity2bidirectional/forward_lstm/while/Identity:output:0"c
+bidirectional_forward_lstm_while_identity_14bidirectional/forward_lstm/while/Identity_1:output:0"c
+bidirectional_forward_lstm_while_identity_24bidirectional/forward_lstm/while/Identity_2:output:0"c
+bidirectional_forward_lstm_while_identity_34bidirectional/forward_lstm/while/Identity_3:output:0"c
+bidirectional_forward_lstm_while_identity_44bidirectional/forward_lstm/while/Identity_4:output:0"c
+bidirectional_forward_lstm_while_identity_54bidirectional/forward_lstm/while/Identity_5:output:0"
Lbidirectional_forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resourceNbidirectional_forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0" 
Mbidirectional_forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resourceObidirectional_forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0"
Kbidirectional_forward_lstm_while_lstm_cell_1_matmul_readvariableop_resourceMbidirectional_forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0"
bidirectional_forward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_forward_lstm_tensorarrayunstack_tensorlistfromtensorbidirectional_forward_lstm_while_tensorarrayv2read_tensorlistgetitem_bidirectional_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2
Cbidirectional/forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOpCbidirectional/forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp2
Bbidirectional/forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOpBbidirectional/forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp2
Dbidirectional/forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOpDbidirectional/forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
8

I__inference_forward_lstm_layer_call_and_return_conditional_losses_1215208

inputs&
lstm_cell_1_1215126:	
&
lstm_cell_1_1215128:	 "
lstm_cell_1_1215130:	
identity¢#lstm_cell_1/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask÷
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_1215126lstm_cell_1_1215128lstm_cell_1_1215130*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_1_layer_call_and_return_conditional_losses_1215080n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¹
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_1215126lstm_cell_1_1215128lstm_cell_1_1215130*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1215139*
condR
while_cond_1215138*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ t
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
: : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
¼
`
D__inference_flatten_layer_call_and_return_conditional_losses_1219071

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
º
È
while_cond_1220120
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1220120___redundant_placeholder05
1while_while_cond_1220120___redundant_placeholder15
1while_while_cond_1220120___redundant_placeholder25
1while_while_cond_1220120___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
Ò7
È
while_body_1216139
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	
G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	
E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	 @
1while_lstm_cell_1_biasadd_readvariableop_resource:	¢(while/lstm_cell_1/BiasAdd/ReadVariableOp¢'while/lstm_cell_1/MatMul/ReadVariableOp¢)while/lstm_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0¸
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Í

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
º
È
while_cond_1215787
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1215787___redundant_placeholder05
1while_while_cond_1215787___redundant_placeholder15
1while_while_cond_1215787___redundant_placeholder25
1while_while_cond_1215787___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
È¶

J__inference_bidirectional_layer_call_and_return_conditional_losses_1216977

inputsJ
7forward_lstm_lstm_cell_1_matmul_readvariableop_resource:	
L
9forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource:	 G
8forward_lstm_lstm_cell_1_biasadd_readvariableop_resource:	K
8backward_lstm_lstm_cell_2_matmul_readvariableop_resource:	
M
:backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource:	 H
9backward_lstm_lstm_cell_2_biasadd_readvariableop_resource:	
identity¢0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp¢/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp¢1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp¢backward_lstm/while¢/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp¢.forward_lstm/lstm_cell_1/MatMul/ReadVariableOp¢0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp¢forward_lstm/whileH
forward_lstm/ShapeShapeinputs*
T0*
_output_shapes
:j
 forward_lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"forward_lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"forward_lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
forward_lstm/strided_sliceStridedSliceforward_lstm/Shape:output:0)forward_lstm/strided_slice/stack:output:0+forward_lstm/strided_slice/stack_1:output:0+forward_lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
forward_lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
forward_lstm/zeros/packedPack#forward_lstm/strided_slice:output:0$forward_lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
forward_lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm/zerosFill"forward_lstm/zeros/packed:output:0!forward_lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
forward_lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
forward_lstm/zeros_1/packedPack#forward_lstm/strided_slice:output:0&forward_lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm/zeros_1Fill$forward_lstm/zeros_1/packed:output:0#forward_lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
forward_lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm/transpose	Transposeinputs$forward_lstm/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
^
forward_lstm/Shape_1Shapeforward_lstm/transpose:y:0*
T0*
_output_shapes
:l
"forward_lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
forward_lstm/strided_slice_1StridedSliceforward_lstm/Shape_1:output:0+forward_lstm/strided_slice_1/stack:output:0-forward_lstm/strided_slice_1/stack_1:output:0-forward_lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(forward_lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÛ
forward_lstm/TensorArrayV2TensorListReserve1forward_lstm/TensorArrayV2/element_shape:output:0%forward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Bforward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   
4forward_lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm/transpose:y:0Kforward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒl
"forward_lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ª
forward_lstm/strided_slice_2StridedSliceforward_lstm/transpose:y:0+forward_lstm/strided_slice_2/stack:output:0-forward_lstm/strided_slice_2/stack_1:output:0-forward_lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask§
.forward_lstm/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp7forward_lstm_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0»
forward_lstm/lstm_cell_1/MatMulMatMul%forward_lstm/strided_slice_2:output:06forward_lstm/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp9forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0µ
!forward_lstm/lstm_cell_1/MatMul_1MatMulforward_lstm/zeros:output:08forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
forward_lstm/lstm_cell_1/addAddV2)forward_lstm/lstm_cell_1/MatMul:product:0+forward_lstm/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp8forward_lstm_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¹
 forward_lstm/lstm_cell_1/BiasAddBiasAdd forward_lstm/lstm_cell_1/add:z:07forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
(forward_lstm/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm/lstm_cell_1/splitSplit1forward_lstm/lstm_cell_1/split/split_dim:output:0)forward_lstm/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
 forward_lstm/lstm_cell_1/SigmoidSigmoid'forward_lstm/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"forward_lstm/lstm_cell_1/Sigmoid_1Sigmoid'forward_lstm/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/lstm_cell_1/mulMul&forward_lstm/lstm_cell_1/Sigmoid_1:y:0forward_lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/lstm_cell_1/ReluRelu'forward_lstm/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ª
forward_lstm/lstm_cell_1/mul_1Mul$forward_lstm/lstm_cell_1/Sigmoid:y:0+forward_lstm/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/lstm_cell_1/add_1AddV2 forward_lstm/lstm_cell_1/mul:z:0"forward_lstm/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"forward_lstm/lstm_cell_1/Sigmoid_2Sigmoid'forward_lstm/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
forward_lstm/lstm_cell_1/Relu_1Relu"forward_lstm/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ®
forward_lstm/lstm_cell_1/mul_2Mul&forward_lstm/lstm_cell_1/Sigmoid_2:y:0-forward_lstm/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ {
*forward_lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ß
forward_lstm/TensorArrayV2_1TensorListReserve3forward_lstm/TensorArrayV2_1/element_shape:output:0%forward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒS
forward_lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%forward_lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿa
forward_lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
forward_lstm/whileWhile(forward_lstm/while/loop_counter:output:0.forward_lstm/while/maximum_iterations:output:0forward_lstm/time:output:0%forward_lstm/TensorArrayV2_1:handle:0forward_lstm/zeros:output:0forward_lstm/zeros_1:output:0%forward_lstm/strided_slice_1:output:0Dforward_lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:07forward_lstm_lstm_cell_1_matmul_readvariableop_resource9forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource8forward_lstm_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *+
body#R!
forward_lstm_while_body_1216748*+
cond#R!
forward_lstm_while_cond_1216747*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
=forward_lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    é
/forward_lstm/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm/while:output:3Fforward_lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0u
"forward_lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿn
$forward_lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:È
forward_lstm/strided_slice_3StridedSlice8forward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0+forward_lstm/strided_slice_3/stack:output:0-forward_lstm/strided_slice_3/stack_1:output:0-forward_lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maskr
forward_lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ½
forward_lstm/transpose_1	Transpose8forward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0&forward_lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
forward_lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    I
backward_lstm/ShapeShapeinputs*
T0*
_output_shapes
:k
!backward_lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#backward_lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#backward_lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
backward_lstm/strided_sliceStridedSlicebackward_lstm/Shape:output:0*backward_lstm/strided_slice/stack:output:0,backward_lstm/strided_slice/stack_1:output:0,backward_lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
backward_lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
backward_lstm/zeros/packedPack$backward_lstm/strided_slice:output:0%backward_lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
backward_lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm/zerosFill#backward_lstm/zeros/packed:output:0"backward_lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
backward_lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : ¡
backward_lstm/zeros_1/packedPack$backward_lstm/strided_slice:output:0'backward_lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm/zeros_1Fill%backward_lstm/zeros_1/packed:output:0$backward_lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
backward_lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm/transpose	Transposeinputs%backward_lstm/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
backward_lstm/Shape_1Shapebackward_lstm/transpose:y:0*
T0*
_output_shapes
:m
#backward_lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
backward_lstm/strided_slice_1StridedSlicebackward_lstm/Shape_1:output:0,backward_lstm/strided_slice_1/stack:output:0.backward_lstm/strided_slice_1/stack_1:output:0.backward_lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)backward_lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÞ
backward_lstm/TensorArrayV2TensorListReserve2backward_lstm/TensorArrayV2/element_shape:output:0&backward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
backward_lstm/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
backward_lstm/ReverseV2	ReverseV2backward_lstm/transpose:y:0%backward_lstm/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

Cbackward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   
5backward_lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor backward_lstm/ReverseV2:output:0Lbackward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒm
#backward_lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
backward_lstm/strided_slice_2StridedSlicebackward_lstm/transpose:y:0,backward_lstm/strided_slice_2/stack:output:0.backward_lstm/strided_slice_2/stack_1:output:0.backward_lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask©
/backward_lstm/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp8backward_lstm_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0¾
 backward_lstm/lstm_cell_2/MatMulMatMul&backward_lstm/strided_slice_2:output:07backward_lstm/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp:backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0¸
"backward_lstm/lstm_cell_2/MatMul_1MatMulbackward_lstm/zeros:output:09backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
backward_lstm/lstm_cell_2/addAddV2*backward_lstm/lstm_cell_2/MatMul:product:0,backward_lstm/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp9backward_lstm_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¼
!backward_lstm/lstm_cell_2/BiasAddBiasAdd!backward_lstm/lstm_cell_2/add:z:08backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)backward_lstm/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm/lstm_cell_2/splitSplit2backward_lstm/lstm_cell_2/split/split_dim:output:0*backward_lstm/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
!backward_lstm/lstm_cell_2/SigmoidSigmoid(backward_lstm/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#backward_lstm/lstm_cell_2/Sigmoid_1Sigmoid(backward_lstm/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
backward_lstm/lstm_cell_2/mulMul'backward_lstm/lstm_cell_2/Sigmoid_1:y:0backward_lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
backward_lstm/lstm_cell_2/ReluRelu(backward_lstm/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ­
backward_lstm/lstm_cell_2/mul_1Mul%backward_lstm/lstm_cell_2/Sigmoid:y:0,backward_lstm/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
backward_lstm/lstm_cell_2/add_1AddV2!backward_lstm/lstm_cell_2/mul:z:0#backward_lstm/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#backward_lstm/lstm_cell_2/Sigmoid_2Sigmoid(backward_lstm/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 backward_lstm/lstm_cell_2/Relu_1Relu#backward_lstm/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ±
backward_lstm/lstm_cell_2/mul_2Mul'backward_lstm/lstm_cell_2/Sigmoid_2:y:0.backward_lstm/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
+backward_lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    â
backward_lstm/TensorArrayV2_1TensorListReserve4backward_lstm/TensorArrayV2_1/element_shape:output:0&backward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒT
backward_lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&backward_lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿb
 backward_lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Å
backward_lstm/whileWhile)backward_lstm/while/loop_counter:output:0/backward_lstm/while/maximum_iterations:output:0backward_lstm/time:output:0&backward_lstm/TensorArrayV2_1:handle:0backward_lstm/zeros:output:0backward_lstm/zeros_1:output:0&backward_lstm/strided_slice_1:output:0Ebackward_lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:08backward_lstm_lstm_cell_2_matmul_readvariableop_resource:backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource9backward_lstm_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 backward_lstm_while_body_1216889*,
cond$R"
 backward_lstm_while_cond_1216888*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
>backward_lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ì
0backward_lstm/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm/while:output:3Gbackward_lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0v
#backward_lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%backward_lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
backward_lstm/strided_slice_3StridedSlice9backward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0,backward_lstm/strided_slice_3/stack:output:0.backward_lstm/strided_slice_3/stack_1:output:0.backward_lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_masks
backward_lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          À
backward_lstm/transpose_1	Transpose9backward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0'backward_lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
backward_lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
	ReverseV2	ReverseV2backward_lstm/transpose_1:y:0ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2forward_lstm/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentityconcat:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
NoOpNoOp1^backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp0^backward_lstm/lstm_cell_2/MatMul/ReadVariableOp2^backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp^backward_lstm/while0^forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp/^forward_lstm/lstm_cell_1/MatMul/ReadVariableOp1^forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp^forward_lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : 2d
0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp2b
/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp2f
1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp2*
backward_lstm/whilebackward_lstm/while2b
/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp2`
.forward_lstm/lstm_cell_1/MatMul/ReadVariableOp.forward_lstm/lstm_cell_1/MatMul/ReadVariableOp2d
0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp2(
forward_lstm/whileforward_lstm/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
º
È
while_cond_1215299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1215299___redundant_placeholder05
1while_while_cond_1215299___redundant_placeholder15
1while_while_cond_1215299___redundant_placeholder25
1while_while_cond_1215299___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
â"
ã
while_body_1215139
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_1_1215163_0:	
.
while_lstm_cell_1_1215165_0:	 *
while_lstm_cell_1_1215167_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_1_1215163:	
,
while_lstm_cell_1_1215165:	 (
while_lstm_cell_1_1215167:	¢)while/lstm_cell_1/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0µ
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_1215163_0while_lstm_cell_1_1215165_0while_lstm_cell_1_1215167_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_1_layer_call_and_return_conditional_losses_1215080Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x

while/NoOpNoOp*^while/lstm_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_1_1215163while_lstm_cell_1_1215163_0"8
while_lstm_cell_1_1215165while_lstm_cell_1_1215165_0"8
while_lstm_cell_1_1215167while_lstm_cell_1_1215167_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
Ò7
È
while_body_1215974
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	
G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	
E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	 @
1while_lstm_cell_2_biasadd_readvariableop_resource:	¢(while/lstm_cell_2/BiasAdd/ReadVariableOp¢'while/lstm_cell_2/MatMul/ReadVariableOp¢)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0¸
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Í

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
Ä
»
.__inference_forward_lstm_layer_call_fn_1219143

inputs
unknown:	

	unknown_0:	 
	unknown_1:	
identity¢StatefulPartitionedCallû
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_forward_lstm_layer_call_and_return_conditional_losses_1215720|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å

)__inference_dense_1_layer_call_fn_1219100

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1216614o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï	

/__inference_bidirectional_layer_call_fn_1217874
inputs_0
unknown:	

	unknown_0:	 
	unknown_1:	
	unknown_2:	

	unknown_3:	 
	unknown_4:	
identity¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_bidirectional_layer_call_and_return_conditional_losses_1216256|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ÿ·

J__inference_bidirectional_layer_call_and_return_conditional_losses_1218484
inputs_0J
7forward_lstm_lstm_cell_1_matmul_readvariableop_resource:	
L
9forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource:	 G
8forward_lstm_lstm_cell_1_biasadd_readvariableop_resource:	K
8backward_lstm_lstm_cell_2_matmul_readvariableop_resource:	
M
:backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource:	 H
9backward_lstm_lstm_cell_2_biasadd_readvariableop_resource:	
identity¢0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp¢/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp¢1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp¢backward_lstm/while¢/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp¢.forward_lstm/lstm_cell_1/MatMul/ReadVariableOp¢0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp¢forward_lstm/whileJ
forward_lstm/ShapeShapeinputs_0*
T0*
_output_shapes
:j
 forward_lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"forward_lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"forward_lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
forward_lstm/strided_sliceStridedSliceforward_lstm/Shape:output:0)forward_lstm/strided_slice/stack:output:0+forward_lstm/strided_slice/stack_1:output:0+forward_lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
forward_lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
forward_lstm/zeros/packedPack#forward_lstm/strided_slice:output:0$forward_lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
forward_lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm/zerosFill"forward_lstm/zeros/packed:output:0!forward_lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
forward_lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
forward_lstm/zeros_1/packedPack#forward_lstm/strided_slice:output:0&forward_lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm/zeros_1Fill$forward_lstm/zeros_1/packed:output:0#forward_lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
forward_lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm/transpose	Transposeinputs_0$forward_lstm/transpose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ^
forward_lstm/Shape_1Shapeforward_lstm/transpose:y:0*
T0*
_output_shapes
:l
"forward_lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
forward_lstm/strided_slice_1StridedSliceforward_lstm/Shape_1:output:0+forward_lstm/strided_slice_1/stack:output:0-forward_lstm/strided_slice_1/stack_1:output:0-forward_lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(forward_lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÛ
forward_lstm/TensorArrayV2TensorListReserve1forward_lstm/TensorArrayV2/element_shape:output:0%forward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Bforward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ
4forward_lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm/transpose:y:0Kforward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒl
"forward_lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:³
forward_lstm/strided_slice_2StridedSliceforward_lstm/transpose:y:0+forward_lstm/strided_slice_2/stack:output:0-forward_lstm/strided_slice_2/stack_1:output:0-forward_lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask§
.forward_lstm/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp7forward_lstm_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0»
forward_lstm/lstm_cell_1/MatMulMatMul%forward_lstm/strided_slice_2:output:06forward_lstm/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp9forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0µ
!forward_lstm/lstm_cell_1/MatMul_1MatMulforward_lstm/zeros:output:08forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
forward_lstm/lstm_cell_1/addAddV2)forward_lstm/lstm_cell_1/MatMul:product:0+forward_lstm/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp8forward_lstm_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¹
 forward_lstm/lstm_cell_1/BiasAddBiasAdd forward_lstm/lstm_cell_1/add:z:07forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
(forward_lstm/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm/lstm_cell_1/splitSplit1forward_lstm/lstm_cell_1/split/split_dim:output:0)forward_lstm/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
 forward_lstm/lstm_cell_1/SigmoidSigmoid'forward_lstm/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"forward_lstm/lstm_cell_1/Sigmoid_1Sigmoid'forward_lstm/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/lstm_cell_1/mulMul&forward_lstm/lstm_cell_1/Sigmoid_1:y:0forward_lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/lstm_cell_1/ReluRelu'forward_lstm/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ª
forward_lstm/lstm_cell_1/mul_1Mul$forward_lstm/lstm_cell_1/Sigmoid:y:0+forward_lstm/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/lstm_cell_1/add_1AddV2 forward_lstm/lstm_cell_1/mul:z:0"forward_lstm/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"forward_lstm/lstm_cell_1/Sigmoid_2Sigmoid'forward_lstm/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
forward_lstm/lstm_cell_1/Relu_1Relu"forward_lstm/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ®
forward_lstm/lstm_cell_1/mul_2Mul&forward_lstm/lstm_cell_1/Sigmoid_2:y:0-forward_lstm/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ {
*forward_lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ß
forward_lstm/TensorArrayV2_1TensorListReserve3forward_lstm/TensorArrayV2_1/element_shape:output:0%forward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒS
forward_lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%forward_lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿa
forward_lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
forward_lstm/whileWhile(forward_lstm/while/loop_counter:output:0.forward_lstm/while/maximum_iterations:output:0forward_lstm/time:output:0%forward_lstm/TensorArrayV2_1:handle:0forward_lstm/zeros:output:0forward_lstm/zeros_1:output:0%forward_lstm/strided_slice_1:output:0Dforward_lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:07forward_lstm_lstm_cell_1_matmul_readvariableop_resource9forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource8forward_lstm_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *+
body#R!
forward_lstm_while_body_1218255*+
cond#R!
forward_lstm_while_cond_1218254*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
=forward_lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ò
/forward_lstm/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm/while:output:3Fforward_lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0u
"forward_lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿn
$forward_lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:È
forward_lstm/strided_slice_3StridedSlice8forward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0+forward_lstm/strided_slice_3/stack:output:0-forward_lstm/strided_slice_3/stack_1:output:0-forward_lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maskr
forward_lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Æ
forward_lstm/transpose_1	Transpose8forward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0&forward_lstm/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ h
forward_lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    K
backward_lstm/ShapeShapeinputs_0*
T0*
_output_shapes
:k
!backward_lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#backward_lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#backward_lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
backward_lstm/strided_sliceStridedSlicebackward_lstm/Shape:output:0*backward_lstm/strided_slice/stack:output:0,backward_lstm/strided_slice/stack_1:output:0,backward_lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
backward_lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
backward_lstm/zeros/packedPack$backward_lstm/strided_slice:output:0%backward_lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
backward_lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm/zerosFill#backward_lstm/zeros/packed:output:0"backward_lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
backward_lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : ¡
backward_lstm/zeros_1/packedPack$backward_lstm/strided_slice:output:0'backward_lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm/zeros_1Fill%backward_lstm/zeros_1/packed:output:0$backward_lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
backward_lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm/transpose	Transposeinputs_0%backward_lstm/transpose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
backward_lstm/Shape_1Shapebackward_lstm/transpose:y:0*
T0*
_output_shapes
:m
#backward_lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
backward_lstm/strided_slice_1StridedSlicebackward_lstm/Shape_1:output:0,backward_lstm/strided_slice_1/stack:output:0.backward_lstm/strided_slice_1/stack_1:output:0.backward_lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)backward_lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÞ
backward_lstm/TensorArrayV2TensorListReserve2backward_lstm/TensorArrayV2/element_shape:output:0&backward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
backward_lstm/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: °
backward_lstm/ReverseV2	ReverseV2backward_lstm/transpose:y:0%backward_lstm/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Cbackward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ
5backward_lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor backward_lstm/ReverseV2:output:0Lbackward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒm
#backward_lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
backward_lstm/strided_slice_2StridedSlicebackward_lstm/transpose:y:0,backward_lstm/strided_slice_2/stack:output:0.backward_lstm/strided_slice_2/stack_1:output:0.backward_lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask©
/backward_lstm/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp8backward_lstm_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0¾
 backward_lstm/lstm_cell_2/MatMulMatMul&backward_lstm/strided_slice_2:output:07backward_lstm/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp:backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0¸
"backward_lstm/lstm_cell_2/MatMul_1MatMulbackward_lstm/zeros:output:09backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
backward_lstm/lstm_cell_2/addAddV2*backward_lstm/lstm_cell_2/MatMul:product:0,backward_lstm/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp9backward_lstm_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¼
!backward_lstm/lstm_cell_2/BiasAddBiasAdd!backward_lstm/lstm_cell_2/add:z:08backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)backward_lstm/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm/lstm_cell_2/splitSplit2backward_lstm/lstm_cell_2/split/split_dim:output:0*backward_lstm/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
!backward_lstm/lstm_cell_2/SigmoidSigmoid(backward_lstm/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#backward_lstm/lstm_cell_2/Sigmoid_1Sigmoid(backward_lstm/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
backward_lstm/lstm_cell_2/mulMul'backward_lstm/lstm_cell_2/Sigmoid_1:y:0backward_lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
backward_lstm/lstm_cell_2/ReluRelu(backward_lstm/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ­
backward_lstm/lstm_cell_2/mul_1Mul%backward_lstm/lstm_cell_2/Sigmoid:y:0,backward_lstm/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
backward_lstm/lstm_cell_2/add_1AddV2!backward_lstm/lstm_cell_2/mul:z:0#backward_lstm/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#backward_lstm/lstm_cell_2/Sigmoid_2Sigmoid(backward_lstm/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 backward_lstm/lstm_cell_2/Relu_1Relu#backward_lstm/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ±
backward_lstm/lstm_cell_2/mul_2Mul'backward_lstm/lstm_cell_2/Sigmoid_2:y:0.backward_lstm/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
+backward_lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    â
backward_lstm/TensorArrayV2_1TensorListReserve4backward_lstm/TensorArrayV2_1/element_shape:output:0&backward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒT
backward_lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&backward_lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿb
 backward_lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Å
backward_lstm/whileWhile)backward_lstm/while/loop_counter:output:0/backward_lstm/while/maximum_iterations:output:0backward_lstm/time:output:0&backward_lstm/TensorArrayV2_1:handle:0backward_lstm/zeros:output:0backward_lstm/zeros_1:output:0&backward_lstm/strided_slice_1:output:0Ebackward_lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:08backward_lstm_lstm_cell_2_matmul_readvariableop_resource:backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource9backward_lstm_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 backward_lstm_while_body_1218396*,
cond$R"
 backward_lstm_while_cond_1218395*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
>backward_lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    õ
0backward_lstm/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm/while:output:3Gbackward_lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0v
#backward_lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%backward_lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
backward_lstm/strided_slice_3StridedSlice9backward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0,backward_lstm/strided_slice_3/stack:output:0.backward_lstm/strided_slice_3/stack_1:output:0.backward_lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_masks
backward_lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          É
backward_lstm/transpose_1	Transpose9backward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0'backward_lstm/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ i
backward_lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
	ReverseV2	ReverseV2backward_lstm/transpose_1:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¢
concatConcatV2forward_lstm/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@k
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@ 
NoOpNoOp1^backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp0^backward_lstm/lstm_cell_2/MatMul/ReadVariableOp2^backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp^backward_lstm/while0^forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp/^forward_lstm/lstm_cell_1/MatMul/ReadVariableOp1^forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp^forward_lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 2d
0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp2b
/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp2f
1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp2*
backward_lstm/whilebackward_lstm/while2b
/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp2`
.forward_lstm/lstm_cell_1/MatMul/ReadVariableOp.forward_lstm/lstm_cell_1/MatMul/ReadVariableOp2d
0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp2(
forward_lstm/whileforward_lstm/while:g c
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0

Ä
G__inference_sequential_layer_call_and_return_conditional_losses_1216621

inputs(
bidirectional_1216566:	
(
bidirectional_1216568:	 $
bidirectional_1216570:	(
bidirectional_1216572:	
(
bidirectional_1216574:	 $
bidirectional_1216576:	
dense_1216599:@
dense_1216601:!
dense_1_1216615:
dense_1_1216617:
identity¢%bidirectional/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCallò
%bidirectional/StatefulPartitionedCallStatefulPartitionedCallinputsbidirectional_1216566bidirectional_1216568bidirectional_1216570bidirectional_1216572bidirectional_1216574bidirectional_1216576*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_bidirectional_layer_call_and_return_conditional_losses_1216565â
flatten/PartitionedCallPartitionedCall.bidirectional/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1216585
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1216599dense_1216601*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1216598
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1216615dense_1_1216617*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1216614w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
NoOpNoOp&^bidirectional/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 2N
%bidirectional/StatefulPartitionedCall%bidirectional/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
§
Ì
forward_lstm_while_cond_12185426
2forward_lstm_while_forward_lstm_while_loop_counter<
8forward_lstm_while_forward_lstm_while_maximum_iterations"
forward_lstm_while_placeholder$
 forward_lstm_while_placeholder_1$
 forward_lstm_while_placeholder_2$
 forward_lstm_while_placeholder_38
4forward_lstm_while_less_forward_lstm_strided_slice_1O
Kforward_lstm_while_forward_lstm_while_cond_1218542___redundant_placeholder0O
Kforward_lstm_while_forward_lstm_while_cond_1218542___redundant_placeholder1O
Kforward_lstm_while_forward_lstm_while_cond_1218542___redundant_placeholder2O
Kforward_lstm_while_forward_lstm_while_cond_1218542___redundant_placeholder3
forward_lstm_while_identity

forward_lstm/while/LessLessforward_lstm_while_placeholder4forward_lstm_while_less_forward_lstm_strided_slice_1*
T0*
_output_shapes
: e
forward_lstm/while/IdentityIdentityforward_lstm/while/Less:z:0*
T0
*
_output_shapes
: "C
forward_lstm_while_identity$forward_lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
Ò7
È
while_body_1219642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	
G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	
E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	 @
1while_lstm_cell_1_biasadd_readvariableop_resource:	¢(while/lstm_cell_1/BiasAdd/ReadVariableOp¢'while/lstm_cell_1/MatMul/ReadVariableOp¢)while/lstm_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0¸
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Í

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
ÊJ

I__inference_forward_lstm_layer_call_and_return_conditional_losses_1216223

inputs=
*lstm_cell_1_matmul_readvariableop_resource:	
?
,lstm_cell_1_matmul_1_readvariableop_resource:	 :
+lstm_cell_1_biasadd_readvariableop_resource:	
identity¢"lstm_cell_1/BiasAdd/ReadVariableOp¢!lstm_cell_1/MatMul/ReadVariableOp¢#lstm_cell_1/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿà
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1216139*
condR
while_cond_1216138*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ½
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
½
.__inference_forward_lstm_layer_call_fn_1219121
inputs_0
unknown:	

	unknown_0:	 
	unknown_1:	
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_forward_lstm_layer_call_and_return_conditional_losses_1215017|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
inputs/0
È¶

J__inference_bidirectional_layer_call_and_return_conditional_losses_1218772

inputsJ
7forward_lstm_lstm_cell_1_matmul_readvariableop_resource:	
L
9forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource:	 G
8forward_lstm_lstm_cell_1_biasadd_readvariableop_resource:	K
8backward_lstm_lstm_cell_2_matmul_readvariableop_resource:	
M
:backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource:	 H
9backward_lstm_lstm_cell_2_biasadd_readvariableop_resource:	
identity¢0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp¢/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp¢1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp¢backward_lstm/while¢/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp¢.forward_lstm/lstm_cell_1/MatMul/ReadVariableOp¢0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp¢forward_lstm/whileH
forward_lstm/ShapeShapeinputs*
T0*
_output_shapes
:j
 forward_lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"forward_lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"forward_lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
forward_lstm/strided_sliceStridedSliceforward_lstm/Shape:output:0)forward_lstm/strided_slice/stack:output:0+forward_lstm/strided_slice/stack_1:output:0+forward_lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
forward_lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
forward_lstm/zeros/packedPack#forward_lstm/strided_slice:output:0$forward_lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
forward_lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm/zerosFill"forward_lstm/zeros/packed:output:0!forward_lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
forward_lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
forward_lstm/zeros_1/packedPack#forward_lstm/strided_slice:output:0&forward_lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm/zeros_1Fill$forward_lstm/zeros_1/packed:output:0#forward_lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
forward_lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm/transpose	Transposeinputs$forward_lstm/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
^
forward_lstm/Shape_1Shapeforward_lstm/transpose:y:0*
T0*
_output_shapes
:l
"forward_lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
forward_lstm/strided_slice_1StridedSliceforward_lstm/Shape_1:output:0+forward_lstm/strided_slice_1/stack:output:0-forward_lstm/strided_slice_1/stack_1:output:0-forward_lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(forward_lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÛ
forward_lstm/TensorArrayV2TensorListReserve1forward_lstm/TensorArrayV2/element_shape:output:0%forward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Bforward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   
4forward_lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm/transpose:y:0Kforward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒl
"forward_lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ª
forward_lstm/strided_slice_2StridedSliceforward_lstm/transpose:y:0+forward_lstm/strided_slice_2/stack:output:0-forward_lstm/strided_slice_2/stack_1:output:0-forward_lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask§
.forward_lstm/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp7forward_lstm_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0»
forward_lstm/lstm_cell_1/MatMulMatMul%forward_lstm/strided_slice_2:output:06forward_lstm/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp9forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0µ
!forward_lstm/lstm_cell_1/MatMul_1MatMulforward_lstm/zeros:output:08forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
forward_lstm/lstm_cell_1/addAddV2)forward_lstm/lstm_cell_1/MatMul:product:0+forward_lstm/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp8forward_lstm_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¹
 forward_lstm/lstm_cell_1/BiasAddBiasAdd forward_lstm/lstm_cell_1/add:z:07forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
(forward_lstm/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm/lstm_cell_1/splitSplit1forward_lstm/lstm_cell_1/split/split_dim:output:0)forward_lstm/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
 forward_lstm/lstm_cell_1/SigmoidSigmoid'forward_lstm/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"forward_lstm/lstm_cell_1/Sigmoid_1Sigmoid'forward_lstm/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/lstm_cell_1/mulMul&forward_lstm/lstm_cell_1/Sigmoid_1:y:0forward_lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/lstm_cell_1/ReluRelu'forward_lstm/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ª
forward_lstm/lstm_cell_1/mul_1Mul$forward_lstm/lstm_cell_1/Sigmoid:y:0+forward_lstm/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/lstm_cell_1/add_1AddV2 forward_lstm/lstm_cell_1/mul:z:0"forward_lstm/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"forward_lstm/lstm_cell_1/Sigmoid_2Sigmoid'forward_lstm/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
forward_lstm/lstm_cell_1/Relu_1Relu"forward_lstm/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ®
forward_lstm/lstm_cell_1/mul_2Mul&forward_lstm/lstm_cell_1/Sigmoid_2:y:0-forward_lstm/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ {
*forward_lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ß
forward_lstm/TensorArrayV2_1TensorListReserve3forward_lstm/TensorArrayV2_1/element_shape:output:0%forward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒS
forward_lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%forward_lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿa
forward_lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
forward_lstm/whileWhile(forward_lstm/while/loop_counter:output:0.forward_lstm/while/maximum_iterations:output:0forward_lstm/time:output:0%forward_lstm/TensorArrayV2_1:handle:0forward_lstm/zeros:output:0forward_lstm/zeros_1:output:0%forward_lstm/strided_slice_1:output:0Dforward_lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:07forward_lstm_lstm_cell_1_matmul_readvariableop_resource9forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource8forward_lstm_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *+
body#R!
forward_lstm_while_body_1218543*+
cond#R!
forward_lstm_while_cond_1218542*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
=forward_lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    é
/forward_lstm/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm/while:output:3Fforward_lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0u
"forward_lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿn
$forward_lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:È
forward_lstm/strided_slice_3StridedSlice8forward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0+forward_lstm/strided_slice_3/stack:output:0-forward_lstm/strided_slice_3/stack_1:output:0-forward_lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maskr
forward_lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ½
forward_lstm/transpose_1	Transpose8forward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0&forward_lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
forward_lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    I
backward_lstm/ShapeShapeinputs*
T0*
_output_shapes
:k
!backward_lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#backward_lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#backward_lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
backward_lstm/strided_sliceStridedSlicebackward_lstm/Shape:output:0*backward_lstm/strided_slice/stack:output:0,backward_lstm/strided_slice/stack_1:output:0,backward_lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
backward_lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
backward_lstm/zeros/packedPack$backward_lstm/strided_slice:output:0%backward_lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
backward_lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm/zerosFill#backward_lstm/zeros/packed:output:0"backward_lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
backward_lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : ¡
backward_lstm/zeros_1/packedPack$backward_lstm/strided_slice:output:0'backward_lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm/zeros_1Fill%backward_lstm/zeros_1/packed:output:0$backward_lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
backward_lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm/transpose	Transposeinputs%backward_lstm/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
backward_lstm/Shape_1Shapebackward_lstm/transpose:y:0*
T0*
_output_shapes
:m
#backward_lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
backward_lstm/strided_slice_1StridedSlicebackward_lstm/Shape_1:output:0,backward_lstm/strided_slice_1/stack:output:0.backward_lstm/strided_slice_1/stack_1:output:0.backward_lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)backward_lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÞ
backward_lstm/TensorArrayV2TensorListReserve2backward_lstm/TensorArrayV2/element_shape:output:0&backward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
backward_lstm/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
backward_lstm/ReverseV2	ReverseV2backward_lstm/transpose:y:0%backward_lstm/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

Cbackward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   
5backward_lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor backward_lstm/ReverseV2:output:0Lbackward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒm
#backward_lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
backward_lstm/strided_slice_2StridedSlicebackward_lstm/transpose:y:0,backward_lstm/strided_slice_2/stack:output:0.backward_lstm/strided_slice_2/stack_1:output:0.backward_lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask©
/backward_lstm/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp8backward_lstm_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0¾
 backward_lstm/lstm_cell_2/MatMulMatMul&backward_lstm/strided_slice_2:output:07backward_lstm/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp:backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0¸
"backward_lstm/lstm_cell_2/MatMul_1MatMulbackward_lstm/zeros:output:09backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
backward_lstm/lstm_cell_2/addAddV2*backward_lstm/lstm_cell_2/MatMul:product:0,backward_lstm/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp9backward_lstm_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¼
!backward_lstm/lstm_cell_2/BiasAddBiasAdd!backward_lstm/lstm_cell_2/add:z:08backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)backward_lstm/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm/lstm_cell_2/splitSplit2backward_lstm/lstm_cell_2/split/split_dim:output:0*backward_lstm/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
!backward_lstm/lstm_cell_2/SigmoidSigmoid(backward_lstm/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#backward_lstm/lstm_cell_2/Sigmoid_1Sigmoid(backward_lstm/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
backward_lstm/lstm_cell_2/mulMul'backward_lstm/lstm_cell_2/Sigmoid_1:y:0backward_lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
backward_lstm/lstm_cell_2/ReluRelu(backward_lstm/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ­
backward_lstm/lstm_cell_2/mul_1Mul%backward_lstm/lstm_cell_2/Sigmoid:y:0,backward_lstm/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
backward_lstm/lstm_cell_2/add_1AddV2!backward_lstm/lstm_cell_2/mul:z:0#backward_lstm/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#backward_lstm/lstm_cell_2/Sigmoid_2Sigmoid(backward_lstm/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 backward_lstm/lstm_cell_2/Relu_1Relu#backward_lstm/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ±
backward_lstm/lstm_cell_2/mul_2Mul'backward_lstm/lstm_cell_2/Sigmoid_2:y:0.backward_lstm/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
+backward_lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    â
backward_lstm/TensorArrayV2_1TensorListReserve4backward_lstm/TensorArrayV2_1/element_shape:output:0&backward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒT
backward_lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&backward_lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿb
 backward_lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Å
backward_lstm/whileWhile)backward_lstm/while/loop_counter:output:0/backward_lstm/while/maximum_iterations:output:0backward_lstm/time:output:0&backward_lstm/TensorArrayV2_1:handle:0backward_lstm/zeros:output:0backward_lstm/zeros_1:output:0&backward_lstm/strided_slice_1:output:0Ebackward_lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:08backward_lstm_lstm_cell_2_matmul_readvariableop_resource:backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource9backward_lstm_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 backward_lstm_while_body_1218684*,
cond$R"
 backward_lstm_while_cond_1218683*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
>backward_lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ì
0backward_lstm/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm/while:output:3Gbackward_lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0v
#backward_lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%backward_lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
backward_lstm/strided_slice_3StridedSlice9backward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0,backward_lstm/strided_slice_3/stack:output:0.backward_lstm/strided_slice_3/stack_1:output:0.backward_lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_masks
backward_lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          À
backward_lstm/transpose_1	Transpose9backward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0'backward_lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
backward_lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
	ReverseV2	ReverseV2backward_lstm/transpose_1:y:0ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2forward_lstm/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentityconcat:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
NoOpNoOp1^backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp0^backward_lstm/lstm_cell_2/MatMul/ReadVariableOp2^backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp^backward_lstm/while0^forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp/^forward_lstm/lstm_cell_1/MatMul/ReadVariableOp1^forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp^forward_lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : 2d
0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp2b
/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp2f
1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp2*
backward_lstm/whilebackward_lstm/while2b
/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp2`
.forward_lstm/lstm_cell_1/MatMul/ReadVariableOp.forward_lstm/lstm_cell_1/MatMul/ReadVariableOp2d
0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp2(
forward_lstm/whileforward_lstm/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
L

J__inference_backward_lstm_layer_call_and_return_conditional_losses_1219915
inputs_0=
*lstm_cell_2_matmul_readvariableop_resource:	
?
,lstm_cell_2_matmul_1_readvariableop_resource:	 :
+lstm_cell_2_biasadd_readvariableop_resource:	
identity¢"lstm_cell_2/BiasAdd/ReadVariableOp¢!lstm_cell_2/MatMul/ReadVariableOp¢#lstm_cell_2/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   å
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1219831*
condR
while_cond_1219830*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ½
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
inputs/0
Ì
ø
.bidirectional_backward_lstm_while_cond_1217433T
Pbidirectional_backward_lstm_while_bidirectional_backward_lstm_while_loop_counterZ
Vbidirectional_backward_lstm_while_bidirectional_backward_lstm_while_maximum_iterations1
-bidirectional_backward_lstm_while_placeholder3
/bidirectional_backward_lstm_while_placeholder_13
/bidirectional_backward_lstm_while_placeholder_23
/bidirectional_backward_lstm_while_placeholder_3V
Rbidirectional_backward_lstm_while_less_bidirectional_backward_lstm_strided_slice_1m
ibidirectional_backward_lstm_while_bidirectional_backward_lstm_while_cond_1217433___redundant_placeholder0m
ibidirectional_backward_lstm_while_bidirectional_backward_lstm_while_cond_1217433___redundant_placeholder1m
ibidirectional_backward_lstm_while_bidirectional_backward_lstm_while_cond_1217433___redundant_placeholder2m
ibidirectional_backward_lstm_while_bidirectional_backward_lstm_while_cond_1217433___redundant_placeholder3.
*bidirectional_backward_lstm_while_identity
Ò
&bidirectional/backward_lstm/while/LessLess-bidirectional_backward_lstm_while_placeholderRbidirectional_backward_lstm_while_less_bidirectional_backward_lstm_strided_slice_1*
T0*
_output_shapes
: 
*bidirectional/backward_lstm/while/IdentityIdentity*bidirectional/backward_lstm/while/Less:z:0*
T0
*
_output_shapes
: "a
*bidirectional_backward_lstm_while_identity3bidirectional/backward_lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
È¶

J__inference_bidirectional_layer_call_and_return_conditional_losses_1216565

inputsJ
7forward_lstm_lstm_cell_1_matmul_readvariableop_resource:	
L
9forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource:	 G
8forward_lstm_lstm_cell_1_biasadd_readvariableop_resource:	K
8backward_lstm_lstm_cell_2_matmul_readvariableop_resource:	
M
:backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource:	 H
9backward_lstm_lstm_cell_2_biasadd_readvariableop_resource:	
identity¢0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp¢/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp¢1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp¢backward_lstm/while¢/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp¢.forward_lstm/lstm_cell_1/MatMul/ReadVariableOp¢0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp¢forward_lstm/whileH
forward_lstm/ShapeShapeinputs*
T0*
_output_shapes
:j
 forward_lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"forward_lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"forward_lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
forward_lstm/strided_sliceStridedSliceforward_lstm/Shape:output:0)forward_lstm/strided_slice/stack:output:0+forward_lstm/strided_slice/stack_1:output:0+forward_lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
forward_lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
forward_lstm/zeros/packedPack#forward_lstm/strided_slice:output:0$forward_lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
forward_lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm/zerosFill"forward_lstm/zeros/packed:output:0!forward_lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
forward_lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
forward_lstm/zeros_1/packedPack#forward_lstm/strided_slice:output:0&forward_lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm/zeros_1Fill$forward_lstm/zeros_1/packed:output:0#forward_lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
forward_lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm/transpose	Transposeinputs$forward_lstm/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
^
forward_lstm/Shape_1Shapeforward_lstm/transpose:y:0*
T0*
_output_shapes
:l
"forward_lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
forward_lstm/strided_slice_1StridedSliceforward_lstm/Shape_1:output:0+forward_lstm/strided_slice_1/stack:output:0-forward_lstm/strided_slice_1/stack_1:output:0-forward_lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(forward_lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÛ
forward_lstm/TensorArrayV2TensorListReserve1forward_lstm/TensorArrayV2/element_shape:output:0%forward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Bforward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   
4forward_lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm/transpose:y:0Kforward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒl
"forward_lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ª
forward_lstm/strided_slice_2StridedSliceforward_lstm/transpose:y:0+forward_lstm/strided_slice_2/stack:output:0-forward_lstm/strided_slice_2/stack_1:output:0-forward_lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask§
.forward_lstm/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp7forward_lstm_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0»
forward_lstm/lstm_cell_1/MatMulMatMul%forward_lstm/strided_slice_2:output:06forward_lstm/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp9forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0µ
!forward_lstm/lstm_cell_1/MatMul_1MatMulforward_lstm/zeros:output:08forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
forward_lstm/lstm_cell_1/addAddV2)forward_lstm/lstm_cell_1/MatMul:product:0+forward_lstm/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp8forward_lstm_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¹
 forward_lstm/lstm_cell_1/BiasAddBiasAdd forward_lstm/lstm_cell_1/add:z:07forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
(forward_lstm/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm/lstm_cell_1/splitSplit1forward_lstm/lstm_cell_1/split/split_dim:output:0)forward_lstm/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
 forward_lstm/lstm_cell_1/SigmoidSigmoid'forward_lstm/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"forward_lstm/lstm_cell_1/Sigmoid_1Sigmoid'forward_lstm/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/lstm_cell_1/mulMul&forward_lstm/lstm_cell_1/Sigmoid_1:y:0forward_lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/lstm_cell_1/ReluRelu'forward_lstm/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ª
forward_lstm/lstm_cell_1/mul_1Mul$forward_lstm/lstm_cell_1/Sigmoid:y:0+forward_lstm/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/lstm_cell_1/add_1AddV2 forward_lstm/lstm_cell_1/mul:z:0"forward_lstm/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"forward_lstm/lstm_cell_1/Sigmoid_2Sigmoid'forward_lstm/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
forward_lstm/lstm_cell_1/Relu_1Relu"forward_lstm/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ®
forward_lstm/lstm_cell_1/mul_2Mul&forward_lstm/lstm_cell_1/Sigmoid_2:y:0-forward_lstm/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ {
*forward_lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ß
forward_lstm/TensorArrayV2_1TensorListReserve3forward_lstm/TensorArrayV2_1/element_shape:output:0%forward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒS
forward_lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%forward_lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿa
forward_lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
forward_lstm/whileWhile(forward_lstm/while/loop_counter:output:0.forward_lstm/while/maximum_iterations:output:0forward_lstm/time:output:0%forward_lstm/TensorArrayV2_1:handle:0forward_lstm/zeros:output:0forward_lstm/zeros_1:output:0%forward_lstm/strided_slice_1:output:0Dforward_lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:07forward_lstm_lstm_cell_1_matmul_readvariableop_resource9forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource8forward_lstm_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *+
body#R!
forward_lstm_while_body_1216336*+
cond#R!
forward_lstm_while_cond_1216335*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
=forward_lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    é
/forward_lstm/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm/while:output:3Fforward_lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0u
"forward_lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿn
$forward_lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:È
forward_lstm/strided_slice_3StridedSlice8forward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0+forward_lstm/strided_slice_3/stack:output:0-forward_lstm/strided_slice_3/stack_1:output:0-forward_lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maskr
forward_lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ½
forward_lstm/transpose_1	Transpose8forward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0&forward_lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
forward_lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    I
backward_lstm/ShapeShapeinputs*
T0*
_output_shapes
:k
!backward_lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#backward_lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#backward_lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
backward_lstm/strided_sliceStridedSlicebackward_lstm/Shape:output:0*backward_lstm/strided_slice/stack:output:0,backward_lstm/strided_slice/stack_1:output:0,backward_lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
backward_lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
backward_lstm/zeros/packedPack$backward_lstm/strided_slice:output:0%backward_lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
backward_lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm/zerosFill#backward_lstm/zeros/packed:output:0"backward_lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
backward_lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : ¡
backward_lstm/zeros_1/packedPack$backward_lstm/strided_slice:output:0'backward_lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm/zeros_1Fill%backward_lstm/zeros_1/packed:output:0$backward_lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
backward_lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm/transpose	Transposeinputs%backward_lstm/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
backward_lstm/Shape_1Shapebackward_lstm/transpose:y:0*
T0*
_output_shapes
:m
#backward_lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
backward_lstm/strided_slice_1StridedSlicebackward_lstm/Shape_1:output:0,backward_lstm/strided_slice_1/stack:output:0.backward_lstm/strided_slice_1/stack_1:output:0.backward_lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)backward_lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÞ
backward_lstm/TensorArrayV2TensorListReserve2backward_lstm/TensorArrayV2/element_shape:output:0&backward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
backward_lstm/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
backward_lstm/ReverseV2	ReverseV2backward_lstm/transpose:y:0%backward_lstm/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

Cbackward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   
5backward_lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor backward_lstm/ReverseV2:output:0Lbackward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒm
#backward_lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
backward_lstm/strided_slice_2StridedSlicebackward_lstm/transpose:y:0,backward_lstm/strided_slice_2/stack:output:0.backward_lstm/strided_slice_2/stack_1:output:0.backward_lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask©
/backward_lstm/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp8backward_lstm_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0¾
 backward_lstm/lstm_cell_2/MatMulMatMul&backward_lstm/strided_slice_2:output:07backward_lstm/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp:backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0¸
"backward_lstm/lstm_cell_2/MatMul_1MatMulbackward_lstm/zeros:output:09backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
backward_lstm/lstm_cell_2/addAddV2*backward_lstm/lstm_cell_2/MatMul:product:0,backward_lstm/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp9backward_lstm_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¼
!backward_lstm/lstm_cell_2/BiasAddBiasAdd!backward_lstm/lstm_cell_2/add:z:08backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)backward_lstm/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm/lstm_cell_2/splitSplit2backward_lstm/lstm_cell_2/split/split_dim:output:0*backward_lstm/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
!backward_lstm/lstm_cell_2/SigmoidSigmoid(backward_lstm/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#backward_lstm/lstm_cell_2/Sigmoid_1Sigmoid(backward_lstm/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
backward_lstm/lstm_cell_2/mulMul'backward_lstm/lstm_cell_2/Sigmoid_1:y:0backward_lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
backward_lstm/lstm_cell_2/ReluRelu(backward_lstm/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ­
backward_lstm/lstm_cell_2/mul_1Mul%backward_lstm/lstm_cell_2/Sigmoid:y:0,backward_lstm/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
backward_lstm/lstm_cell_2/add_1AddV2!backward_lstm/lstm_cell_2/mul:z:0#backward_lstm/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#backward_lstm/lstm_cell_2/Sigmoid_2Sigmoid(backward_lstm/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 backward_lstm/lstm_cell_2/Relu_1Relu#backward_lstm/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ±
backward_lstm/lstm_cell_2/mul_2Mul'backward_lstm/lstm_cell_2/Sigmoid_2:y:0.backward_lstm/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
+backward_lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    â
backward_lstm/TensorArrayV2_1TensorListReserve4backward_lstm/TensorArrayV2_1/element_shape:output:0&backward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒT
backward_lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&backward_lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿb
 backward_lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Å
backward_lstm/whileWhile)backward_lstm/while/loop_counter:output:0/backward_lstm/while/maximum_iterations:output:0backward_lstm/time:output:0&backward_lstm/TensorArrayV2_1:handle:0backward_lstm/zeros:output:0backward_lstm/zeros_1:output:0&backward_lstm/strided_slice_1:output:0Ebackward_lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:08backward_lstm_lstm_cell_2_matmul_readvariableop_resource:backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource9backward_lstm_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 backward_lstm_while_body_1216477*,
cond$R"
 backward_lstm_while_cond_1216476*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
>backward_lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ì
0backward_lstm/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm/while:output:3Gbackward_lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0v
#backward_lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%backward_lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
backward_lstm/strided_slice_3StridedSlice9backward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0,backward_lstm/strided_slice_3/stack:output:0.backward_lstm/strided_slice_3/stack_1:output:0.backward_lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_masks
backward_lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          À
backward_lstm/transpose_1	Transpose9backward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0'backward_lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
backward_lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
	ReverseV2	ReverseV2backward_lstm/transpose_1:y:0ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2forward_lstm/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentityconcat:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
NoOpNoOp1^backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp0^backward_lstm/lstm_cell_2/MatMul/ReadVariableOp2^backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp^backward_lstm/while0^forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp/^forward_lstm/lstm_cell_1/MatMul/ReadVariableOp1^forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp^forward_lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
: : : : : : 2d
0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp2b
/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp2f
1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp2*
backward_lstm/whilebackward_lstm/while2b
/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp2`
.forward_lstm/lstm_cell_1/MatMul/ReadVariableOp.forward_lstm/lstm_cell_1/MatMul/ReadVariableOp2d
0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp2(
forward_lstm/whileforward_lstm/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
º
È
while_cond_1219212
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1219212___redundant_placeholder05
1while_while_cond_1219212___redundant_placeholder15
1while_while_cond_1219212___redundant_placeholder25
1while_while_cond_1219212___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
öF
è
forward_lstm_while_body_12167486
2forward_lstm_while_forward_lstm_while_loop_counter<
8forward_lstm_while_forward_lstm_while_maximum_iterations"
forward_lstm_while_placeholder$
 forward_lstm_while_placeholder_1$
 forward_lstm_while_placeholder_2$
 forward_lstm_while_placeholder_35
1forward_lstm_while_forward_lstm_strided_slice_1_0q
mforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0R
?forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0:	
T
Aforward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 O
@forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0:	
forward_lstm_while_identity!
forward_lstm_while_identity_1!
forward_lstm_while_identity_2!
forward_lstm_while_identity_3!
forward_lstm_while_identity_4!
forward_lstm_while_identity_53
/forward_lstm_while_forward_lstm_strided_slice_1o
kforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensorP
=forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource:	
R
?forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource:	 M
>forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource:	¢5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp¢4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp¢6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp
Dforward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ç
6forward_lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0forward_lstm_while_placeholderMforward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0µ
4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp?forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0ß
%forward_lstm/while/lstm_cell_1/MatMulMatMul=forward_lstm/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpAforward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0Æ
'forward_lstm/while/lstm_cell_1/MatMul_1MatMul forward_lstm_while_placeholder_2>forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
"forward_lstm/while/lstm_cell_1/addAddV2/forward_lstm/while/lstm_cell_1/MatMul:product:01forward_lstm/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp@forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ë
&forward_lstm/while/lstm_cell_1/BiasAddBiasAdd&forward_lstm/while/lstm_cell_1/add:z:0=forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
.forward_lstm/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$forward_lstm/while/lstm_cell_1/splitSplit7forward_lstm/while/lstm_cell_1/split/split_dim:output:0/forward_lstm/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
&forward_lstm/while/lstm_cell_1/SigmoidSigmoid-forward_lstm/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(forward_lstm/while/lstm_cell_1/Sigmoid_1Sigmoid-forward_lstm/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ «
"forward_lstm/while/lstm_cell_1/mulMul,forward_lstm/while/lstm_cell_1/Sigmoid_1:y:0 forward_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#forward_lstm/while/lstm_cell_1/ReluRelu-forward_lstm/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼
$forward_lstm/while/lstm_cell_1/mul_1Mul*forward_lstm/while/lstm_cell_1/Sigmoid:y:01forward_lstm/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ±
$forward_lstm/while/lstm_cell_1/add_1AddV2&forward_lstm/while/lstm_cell_1/mul:z:0(forward_lstm/while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(forward_lstm/while/lstm_cell_1/Sigmoid_2Sigmoid-forward_lstm/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
%forward_lstm/while/lstm_cell_1/Relu_1Relu(forward_lstm/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
$forward_lstm/while/lstm_cell_1/mul_2Mul,forward_lstm/while/lstm_cell_1/Sigmoid_2:y:03forward_lstm/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ø
7forward_lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem forward_lstm_while_placeholder_1forward_lstm_while_placeholder(forward_lstm/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒZ
forward_lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm/while/addAddV2forward_lstm_while_placeholder!forward_lstm/while/add/y:output:0*
T0*
_output_shapes
: \
forward_lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm/while/add_1AddV22forward_lstm_while_forward_lstm_while_loop_counter#forward_lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm/while/IdentityIdentityforward_lstm/while/add_1:z:0^forward_lstm/while/NoOp*
T0*
_output_shapes
: 
forward_lstm/while/Identity_1Identity8forward_lstm_while_forward_lstm_while_maximum_iterations^forward_lstm/while/NoOp*
T0*
_output_shapes
: 
forward_lstm/while/Identity_2Identityforward_lstm/while/add:z:0^forward_lstm/while/NoOp*
T0*
_output_shapes
: ­
forward_lstm/while/Identity_3IdentityGforward_lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm/while/NoOp*
T0*
_output_shapes
: 
forward_lstm/while/Identity_4Identity(forward_lstm/while/lstm_cell_1/mul_2:z:0^forward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/while/Identity_5Identity(forward_lstm/while/lstm_cell_1/add_1:z:0^forward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/while/NoOpNoOp6^forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp5^forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp7^forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/forward_lstm_while_forward_lstm_strided_slice_11forward_lstm_while_forward_lstm_strided_slice_1_0"C
forward_lstm_while_identity$forward_lstm/while/Identity:output:0"G
forward_lstm_while_identity_1&forward_lstm/while/Identity_1:output:0"G
forward_lstm_while_identity_2&forward_lstm/while/Identity_2:output:0"G
forward_lstm_while_identity_3&forward_lstm/while/Identity_3:output:0"G
forward_lstm_while_identity_4&forward_lstm/while/Identity_4:output:0"G
forward_lstm_while_identity_5&forward_lstm/while/Identity_5:output:0"
>forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource@forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0"
?forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resourceAforward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0"
=forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource?forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0"Ü
kforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensormforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2n
5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp2l
4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp2p
6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
­

û
,__inference_sequential_layer_call_fn_1217234

inputs
unknown:	

	unknown_0:	 
	unknown_1:	
	unknown_2:	

	unknown_3:	 
	unknown_4:	
	unknown_5:@
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallÇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1217047o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
§
Ì
forward_lstm_while_cond_12167476
2forward_lstm_while_forward_lstm_while_loop_counter<
8forward_lstm_while_forward_lstm_while_maximum_iterations"
forward_lstm_while_placeholder$
 forward_lstm_while_placeholder_1$
 forward_lstm_while_placeholder_2$
 forward_lstm_while_placeholder_38
4forward_lstm_while_less_forward_lstm_strided_slice_1O
Kforward_lstm_while_forward_lstm_while_cond_1216747___redundant_placeholder0O
Kforward_lstm_while_forward_lstm_while_cond_1216747___redundant_placeholder1O
Kforward_lstm_while_forward_lstm_while_cond_1216747___redundant_placeholder2O
Kforward_lstm_while_forward_lstm_while_cond_1216747___redundant_placeholder3
forward_lstm_while_identity

forward_lstm/while/LessLessforward_lstm_while_placeholder4forward_lstm_while_less_forward_lstm_strided_slice_1*
T0*
_output_shapes
: e
forward_lstm/while/IdentityIdentityforward_lstm/while/Less:z:0*
T0
*
_output_shapes
: "C
forward_lstm_while_identity$forward_lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
Æ
¼
/__inference_backward_lstm_layer_call_fn_1219770

inputs
unknown:	

	unknown_0:	 
	unknown_1:	
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_backward_lstm_layer_call_and_return_conditional_losses_1216058|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
à
 backward_lstm_while_cond_12183958
4backward_lstm_while_backward_lstm_while_loop_counter>
:backward_lstm_while_backward_lstm_while_maximum_iterations#
backward_lstm_while_placeholder%
!backward_lstm_while_placeholder_1%
!backward_lstm_while_placeholder_2%
!backward_lstm_while_placeholder_3:
6backward_lstm_while_less_backward_lstm_strided_slice_1Q
Mbackward_lstm_while_backward_lstm_while_cond_1218395___redundant_placeholder0Q
Mbackward_lstm_while_backward_lstm_while_cond_1218395___redundant_placeholder1Q
Mbackward_lstm_while_backward_lstm_while_cond_1218395___redundant_placeholder2Q
Mbackward_lstm_while_backward_lstm_while_cond_1218395___redundant_placeholder3 
backward_lstm_while_identity

backward_lstm/while/LessLessbackward_lstm_while_placeholder6backward_lstm_while_less_backward_lstm_strided_slice_1*
T0*
_output_shapes
: g
backward_lstm/while/IdentityIdentitybackward_lstm/while/Less:z:0*
T0
*
_output_shapes
: "E
backward_lstm_while_identity%backward_lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
â"
ã
while_body_1215300
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_2_1215324_0:	
.
while_lstm_cell_2_1215326_0:	 *
while_lstm_cell_2_1215328_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_2_1215324:	
,
while_lstm_cell_2_1215326:	 (
while_lstm_cell_2_1215328:	¢)while/lstm_cell_2/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0µ
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_1215324_0while_lstm_cell_2_1215326_0while_lstm_cell_2_1215328_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1215286Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x

while/NoOpNoOp*^while/lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_2_1215324while_lstm_cell_2_1215324_0"8
while_lstm_cell_2_1215326while_lstm_cell_2_1215326_0"8
while_lstm_cell_2_1215328while_lstm_cell_2_1215328_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
¾e
¬
9sequential_bidirectional_backward_lstm_while_body_1214764j
fsequential_bidirectional_backward_lstm_while_sequential_bidirectional_backward_lstm_while_loop_counterp
lsequential_bidirectional_backward_lstm_while_sequential_bidirectional_backward_lstm_while_maximum_iterations<
8sequential_bidirectional_backward_lstm_while_placeholder>
:sequential_bidirectional_backward_lstm_while_placeholder_1>
:sequential_bidirectional_backward_lstm_while_placeholder_2>
:sequential_bidirectional_backward_lstm_while_placeholder_3i
esequential_bidirectional_backward_lstm_while_sequential_bidirectional_backward_lstm_strided_slice_1_0¦
¡sequential_bidirectional_backward_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_bidirectional_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0l
Ysequential_bidirectional_backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0:	
n
[sequential_bidirectional_backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 i
Zsequential_bidirectional_backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0:	9
5sequential_bidirectional_backward_lstm_while_identity;
7sequential_bidirectional_backward_lstm_while_identity_1;
7sequential_bidirectional_backward_lstm_while_identity_2;
7sequential_bidirectional_backward_lstm_while_identity_3;
7sequential_bidirectional_backward_lstm_while_identity_4;
7sequential_bidirectional_backward_lstm_while_identity_5g
csequential_bidirectional_backward_lstm_while_sequential_bidirectional_backward_lstm_strided_slice_1¤
sequential_bidirectional_backward_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_bidirectional_backward_lstm_tensorarrayunstack_tensorlistfromtensorj
Wsequential_bidirectional_backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource:	
l
Ysequential_bidirectional_backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource:	 g
Xsequential_bidirectional_backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource:	¢Osequential/bidirectional/backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp¢Nsequential/bidirectional/backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp¢Psequential/bidirectional/backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp¯
^sequential/bidirectional/backward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ê
Psequential/bidirectional/backward_lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem¡sequential_bidirectional_backward_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_bidirectional_backward_lstm_tensorarrayunstack_tensorlistfromtensor_08sequential_bidirectional_backward_lstm_while_placeholdergsequential/bidirectional/backward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0é
Nsequential/bidirectional/backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOpYsequential_bidirectional_backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0­
?sequential/bidirectional/backward_lstm/while/lstm_cell_2/MatMulMatMulWsequential/bidirectional/backward_lstm/while/TensorArrayV2Read/TensorListGetItem:item:0Vsequential/bidirectional/backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿí
Psequential/bidirectional/backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp[sequential_bidirectional_backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0
Asequential/bidirectional/backward_lstm/while/lstm_cell_2/MatMul_1MatMul:sequential_bidirectional_backward_lstm_while_placeholder_2Xsequential/bidirectional/backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
<sequential/bidirectional/backward_lstm/while/lstm_cell_2/addAddV2Isequential/bidirectional/backward_lstm/while/lstm_cell_2/MatMul:product:0Ksequential/bidirectional/backward_lstm/while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿç
Osequential/bidirectional/backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpZsequential_bidirectional_backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
@sequential/bidirectional/backward_lstm/while/lstm_cell_2/BiasAddBiasAdd@sequential/bidirectional/backward_lstm/while/lstm_cell_2/add:z:0Wsequential/bidirectional/backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hsequential/bidirectional/backward_lstm/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :á
>sequential/bidirectional/backward_lstm/while/lstm_cell_2/splitSplitQsequential/bidirectional/backward_lstm/while/lstm_cell_2/split/split_dim:output:0Isequential/bidirectional/backward_lstm/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitÆ
@sequential/bidirectional/backward_lstm/while/lstm_cell_2/SigmoidSigmoidGsequential/bidirectional/backward_lstm/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ È
Bsequential/bidirectional/backward_lstm/while/lstm_cell_2/Sigmoid_1SigmoidGsequential/bidirectional/backward_lstm/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ù
<sequential/bidirectional/backward_lstm/while/lstm_cell_2/mulMulFsequential/bidirectional/backward_lstm/while/lstm_cell_2/Sigmoid_1:y:0:sequential_bidirectional_backward_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
=sequential/bidirectional/backward_lstm/while/lstm_cell_2/ReluReluGsequential/bidirectional/backward_lstm/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
>sequential/bidirectional/backward_lstm/while/lstm_cell_2/mul_1MulDsequential/bidirectional/backward_lstm/while/lstm_cell_2/Sigmoid:y:0Ksequential/bidirectional/backward_lstm/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ÿ
>sequential/bidirectional/backward_lstm/while/lstm_cell_2/add_1AddV2@sequential/bidirectional/backward_lstm/while/lstm_cell_2/mul:z:0Bsequential/bidirectional/backward_lstm/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ È
Bsequential/bidirectional/backward_lstm/while/lstm_cell_2/Sigmoid_2SigmoidGsequential/bidirectional/backward_lstm/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ½
?sequential/bidirectional/backward_lstm/while/lstm_cell_2/Relu_1ReluBsequential/bidirectional/backward_lstm/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
>sequential/bidirectional/backward_lstm/while/lstm_cell_2/mul_2MulFsequential/bidirectional/backward_lstm/while/lstm_cell_2/Sigmoid_2:y:0Msequential/bidirectional/backward_lstm/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ à
Qsequential/bidirectional/backward_lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem:sequential_bidirectional_backward_lstm_while_placeholder_18sequential_bidirectional_backward_lstm_while_placeholderBsequential/bidirectional/backward_lstm/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒt
2sequential/bidirectional/backward_lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ñ
0sequential/bidirectional/backward_lstm/while/addAddV28sequential_bidirectional_backward_lstm_while_placeholder;sequential/bidirectional/backward_lstm/while/add/y:output:0*
T0*
_output_shapes
: v
4sequential/bidirectional/backward_lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
2sequential/bidirectional/backward_lstm/while/add_1AddV2fsequential_bidirectional_backward_lstm_while_sequential_bidirectional_backward_lstm_while_loop_counter=sequential/bidirectional/backward_lstm/while/add_1/y:output:0*
T0*
_output_shapes
: Î
5sequential/bidirectional/backward_lstm/while/IdentityIdentity6sequential/bidirectional/backward_lstm/while/add_1:z:02^sequential/bidirectional/backward_lstm/while/NoOp*
T0*
_output_shapes
: 
7sequential/bidirectional/backward_lstm/while/Identity_1Identitylsequential_bidirectional_backward_lstm_while_sequential_bidirectional_backward_lstm_while_maximum_iterations2^sequential/bidirectional/backward_lstm/while/NoOp*
T0*
_output_shapes
: Î
7sequential/bidirectional/backward_lstm/while/Identity_2Identity4sequential/bidirectional/backward_lstm/while/add:z:02^sequential/bidirectional/backward_lstm/while/NoOp*
T0*
_output_shapes
: û
7sequential/bidirectional/backward_lstm/while/Identity_3Identityasequential/bidirectional/backward_lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^sequential/bidirectional/backward_lstm/while/NoOp*
T0*
_output_shapes
: í
7sequential/bidirectional/backward_lstm/while/Identity_4IdentityBsequential/bidirectional/backward_lstm/while/lstm_cell_2/mul_2:z:02^sequential/bidirectional/backward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ í
7sequential/bidirectional/backward_lstm/while/Identity_5IdentityBsequential/bidirectional/backward_lstm/while/lstm_cell_2/add_1:z:02^sequential/bidirectional/backward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ é
1sequential/bidirectional/backward_lstm/while/NoOpNoOpP^sequential/bidirectional/backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpO^sequential/bidirectional/backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOpQ^sequential/bidirectional/backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "w
5sequential_bidirectional_backward_lstm_while_identity>sequential/bidirectional/backward_lstm/while/Identity:output:0"{
7sequential_bidirectional_backward_lstm_while_identity_1@sequential/bidirectional/backward_lstm/while/Identity_1:output:0"{
7sequential_bidirectional_backward_lstm_while_identity_2@sequential/bidirectional/backward_lstm/while/Identity_2:output:0"{
7sequential_bidirectional_backward_lstm_while_identity_3@sequential/bidirectional/backward_lstm/while/Identity_3:output:0"{
7sequential_bidirectional_backward_lstm_while_identity_4@sequential/bidirectional/backward_lstm/while/Identity_4:output:0"{
7sequential_bidirectional_backward_lstm_while_identity_5@sequential/bidirectional/backward_lstm/while/Identity_5:output:0"¶
Xsequential_bidirectional_backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resourceZsequential_bidirectional_backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0"¸
Ysequential_bidirectional_backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource[sequential_bidirectional_backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0"´
Wsequential_bidirectional_backward_lstm_while_lstm_cell_2_matmul_readvariableop_resourceYsequential_bidirectional_backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0"Ì
csequential_bidirectional_backward_lstm_while_sequential_bidirectional_backward_lstm_strided_slice_1esequential_bidirectional_backward_lstm_while_sequential_bidirectional_backward_lstm_strided_slice_1_0"Æ
sequential_bidirectional_backward_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_bidirectional_backward_lstm_tensorarrayunstack_tensorlistfromtensor¡sequential_bidirectional_backward_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_bidirectional_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2¢
Osequential/bidirectional/backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpOsequential/bidirectional/backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp2 
Nsequential/bidirectional/backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOpNsequential/bidirectional/backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp2¤
Psequential/bidirectional/backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOpPsequential/bidirectional/backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
Ý

H__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1220546

inputs
states_0
states_11
matmul_readvariableop_resource:	
3
 matmul_1_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/1
î
ö
-__inference_lstm_cell_1_layer_call_fn_1220384

inputs
states_0
states_1
unknown:	

	unknown_0:	 
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_1_layer_call_and_return_conditional_losses_1215080o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/1
ÊJ

I__inference_forward_lstm_layer_call_and_return_conditional_losses_1215720

inputs=
*lstm_cell_1_matmul_readvariableop_resource:	
?
,lstm_cell_1_matmul_1_readvariableop_resource:	 :
+lstm_cell_1_biasadd_readvariableop_resource:	
identity¢"lstm_cell_1/BiasAdd/ReadVariableOp¢!lstm_cell_1/MatMul/ReadVariableOp¢#lstm_cell_1/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿà
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1215636*
condR
while_cond_1215635*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ½
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
H

 backward_lstm_while_body_12181088
4backward_lstm_while_backward_lstm_while_loop_counter>
:backward_lstm_while_backward_lstm_while_maximum_iterations#
backward_lstm_while_placeholder%
!backward_lstm_while_placeholder_1%
!backward_lstm_while_placeholder_2%
!backward_lstm_while_placeholder_37
3backward_lstm_while_backward_lstm_strided_slice_1_0s
obackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0S
@backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0:	
U
Bbackward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 P
Abackward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0:	 
backward_lstm_while_identity"
backward_lstm_while_identity_1"
backward_lstm_while_identity_2"
backward_lstm_while_identity_3"
backward_lstm_while_identity_4"
backward_lstm_while_identity_55
1backward_lstm_while_backward_lstm_strided_slice_1q
mbackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensorQ
>backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource:	
S
@backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource:	 N
?backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource:	¢6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp¢5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp¢7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp
Ebackward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿõ
7backward_lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemobackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0backward_lstm_while_placeholderNbackward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0·
5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp@backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0â
&backward_lstm/while/lstm_cell_2/MatMulMatMul>backward_lstm/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpBbackward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0É
(backward_lstm/while/lstm_cell_2/MatMul_1MatMul!backward_lstm_while_placeholder_2?backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
#backward_lstm/while/lstm_cell_2/addAddV20backward_lstm/while/lstm_cell_2/MatMul:product:02backward_lstm/while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpAbackward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
'backward_lstm/while/lstm_cell_2/BiasAddBiasAdd'backward_lstm/while/lstm_cell_2/add:z:0>backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
/backward_lstm/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%backward_lstm/while/lstm_cell_2/splitSplit8backward_lstm/while/lstm_cell_2/split/split_dim:output:00backward_lstm/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
'backward_lstm/while/lstm_cell_2/SigmoidSigmoid.backward_lstm/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)backward_lstm/while/lstm_cell_2/Sigmoid_1Sigmoid.backward_lstm/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ®
#backward_lstm/while/lstm_cell_2/mulMul-backward_lstm/while/lstm_cell_2/Sigmoid_1:y:0!backward_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
$backward_lstm/while/lstm_cell_2/ReluRelu.backward_lstm/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¿
%backward_lstm/while/lstm_cell_2/mul_1Mul+backward_lstm/while/lstm_cell_2/Sigmoid:y:02backward_lstm/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ´
%backward_lstm/while/lstm_cell_2/add_1AddV2'backward_lstm/while/lstm_cell_2/mul:z:0)backward_lstm/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)backward_lstm/while/lstm_cell_2/Sigmoid_2Sigmoid.backward_lstm/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&backward_lstm/while/lstm_cell_2/Relu_1Relu)backward_lstm/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ã
%backward_lstm/while/lstm_cell_2/mul_2Mul-backward_lstm/while/lstm_cell_2/Sigmoid_2:y:04backward_lstm/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ü
8backward_lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!backward_lstm_while_placeholder_1backward_lstm_while_placeholder)backward_lstm/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒ[
backward_lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm/while/addAddV2backward_lstm_while_placeholder"backward_lstm/while/add/y:output:0*
T0*
_output_shapes
: ]
backward_lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm/while/add_1AddV24backward_lstm_while_backward_lstm_while_loop_counter$backward_lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm/while/IdentityIdentitybackward_lstm/while/add_1:z:0^backward_lstm/while/NoOp*
T0*
_output_shapes
: ¢
backward_lstm/while/Identity_1Identity:backward_lstm_while_backward_lstm_while_maximum_iterations^backward_lstm/while/NoOp*
T0*
_output_shapes
: 
backward_lstm/while/Identity_2Identitybackward_lstm/while/add:z:0^backward_lstm/while/NoOp*
T0*
_output_shapes
: °
backward_lstm/while/Identity_3IdentityHbackward_lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm/while/NoOp*
T0*
_output_shapes
: ¢
backward_lstm/while/Identity_4Identity)backward_lstm/while/lstm_cell_2/mul_2:z:0^backward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
backward_lstm/while/Identity_5Identity)backward_lstm/while/lstm_cell_2/add_1:z:0^backward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
backward_lstm/while/NoOpNoOp7^backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp6^backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp8^backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1backward_lstm_while_backward_lstm_strided_slice_13backward_lstm_while_backward_lstm_strided_slice_1_0"E
backward_lstm_while_identity%backward_lstm/while/Identity:output:0"I
backward_lstm_while_identity_1'backward_lstm/while/Identity_1:output:0"I
backward_lstm_while_identity_2'backward_lstm/while/Identity_2:output:0"I
backward_lstm_while_identity_3'backward_lstm/while/Identity_3:output:0"I
backward_lstm_while_identity_4'backward_lstm/while/Identity_4:output:0"I
backward_lstm_while_identity_5'backward_lstm/while/Identity_5:output:0"
?backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resourceAbackward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0"
@backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resourceBbackward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0"
>backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource@backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0"à
mbackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensorobackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2p
6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp2n
5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp2r
7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
¼
`
D__inference_flatten_layer_call_and_return_conditional_losses_1216585

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
8

I__inference_forward_lstm_layer_call_and_return_conditional_losses_1215017

inputs&
lstm_cell_1_1214935:	
&
lstm_cell_1_1214937:	 "
lstm_cell_1_1214939:	
identity¢#lstm_cell_1/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask÷
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_1214935lstm_cell_1_1214937lstm_cell_1_1214939*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_1_layer_call_and_return_conditional_losses_1214934n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¹
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_1214935lstm_cell_1_1214937lstm_cell_1_1214939*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1214948*
condR
while_cond_1214947*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ t
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
: : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Ç	
õ
D__inference_dense_1_layer_call_and_return_conditional_losses_1219110

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
È
while_cond_1215138
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1215138___redundant_placeholder05
1while_while_cond_1215138___redundant_placeholder15
1while_while_cond_1215138___redundant_placeholder25
1while_while_cond_1215138___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
­

û
,__inference_sequential_layer_call_fn_1217209

inputs
unknown:	

	unknown_0:	 
	unknown_1:	
	unknown_2:	

	unknown_3:	 
	unknown_4:	
	unknown_5:@
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallÇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1216621o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
öF
è
forward_lstm_while_body_12163366
2forward_lstm_while_forward_lstm_while_loop_counter<
8forward_lstm_while_forward_lstm_while_maximum_iterations"
forward_lstm_while_placeholder$
 forward_lstm_while_placeholder_1$
 forward_lstm_while_placeholder_2$
 forward_lstm_while_placeholder_35
1forward_lstm_while_forward_lstm_strided_slice_1_0q
mforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0R
?forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0:	
T
Aforward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 O
@forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0:	
forward_lstm_while_identity!
forward_lstm_while_identity_1!
forward_lstm_while_identity_2!
forward_lstm_while_identity_3!
forward_lstm_while_identity_4!
forward_lstm_while_identity_53
/forward_lstm_while_forward_lstm_strided_slice_1o
kforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensorP
=forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource:	
R
?forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource:	 M
>forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource:	¢5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp¢4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp¢6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp
Dforward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ç
6forward_lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0forward_lstm_while_placeholderMforward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0µ
4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp?forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0ß
%forward_lstm/while/lstm_cell_1/MatMulMatMul=forward_lstm/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpAforward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0Æ
'forward_lstm/while/lstm_cell_1/MatMul_1MatMul forward_lstm_while_placeholder_2>forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
"forward_lstm/while/lstm_cell_1/addAddV2/forward_lstm/while/lstm_cell_1/MatMul:product:01forward_lstm/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp@forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ë
&forward_lstm/while/lstm_cell_1/BiasAddBiasAdd&forward_lstm/while/lstm_cell_1/add:z:0=forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
.forward_lstm/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$forward_lstm/while/lstm_cell_1/splitSplit7forward_lstm/while/lstm_cell_1/split/split_dim:output:0/forward_lstm/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
&forward_lstm/while/lstm_cell_1/SigmoidSigmoid-forward_lstm/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(forward_lstm/while/lstm_cell_1/Sigmoid_1Sigmoid-forward_lstm/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ «
"forward_lstm/while/lstm_cell_1/mulMul,forward_lstm/while/lstm_cell_1/Sigmoid_1:y:0 forward_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#forward_lstm/while/lstm_cell_1/ReluRelu-forward_lstm/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼
$forward_lstm/while/lstm_cell_1/mul_1Mul*forward_lstm/while/lstm_cell_1/Sigmoid:y:01forward_lstm/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ±
$forward_lstm/while/lstm_cell_1/add_1AddV2&forward_lstm/while/lstm_cell_1/mul:z:0(forward_lstm/while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(forward_lstm/while/lstm_cell_1/Sigmoid_2Sigmoid-forward_lstm/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
%forward_lstm/while/lstm_cell_1/Relu_1Relu(forward_lstm/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
$forward_lstm/while/lstm_cell_1/mul_2Mul,forward_lstm/while/lstm_cell_1/Sigmoid_2:y:03forward_lstm/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ø
7forward_lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem forward_lstm_while_placeholder_1forward_lstm_while_placeholder(forward_lstm/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒZ
forward_lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm/while/addAddV2forward_lstm_while_placeholder!forward_lstm/while/add/y:output:0*
T0*
_output_shapes
: \
forward_lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm/while/add_1AddV22forward_lstm_while_forward_lstm_while_loop_counter#forward_lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm/while/IdentityIdentityforward_lstm/while/add_1:z:0^forward_lstm/while/NoOp*
T0*
_output_shapes
: 
forward_lstm/while/Identity_1Identity8forward_lstm_while_forward_lstm_while_maximum_iterations^forward_lstm/while/NoOp*
T0*
_output_shapes
: 
forward_lstm/while/Identity_2Identityforward_lstm/while/add:z:0^forward_lstm/while/NoOp*
T0*
_output_shapes
: ­
forward_lstm/while/Identity_3IdentityGforward_lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm/while/NoOp*
T0*
_output_shapes
: 
forward_lstm/while/Identity_4Identity(forward_lstm/while/lstm_cell_1/mul_2:z:0^forward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/while/Identity_5Identity(forward_lstm/while/lstm_cell_1/add_1:z:0^forward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/while/NoOpNoOp6^forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp5^forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp7^forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/forward_lstm_while_forward_lstm_strided_slice_11forward_lstm_while_forward_lstm_strided_slice_1_0"C
forward_lstm_while_identity$forward_lstm/while/Identity:output:0"G
forward_lstm_while_identity_1&forward_lstm/while/Identity_1:output:0"G
forward_lstm_while_identity_2&forward_lstm/while/Identity_2:output:0"G
forward_lstm_while_identity_3&forward_lstm/while/Identity_3:output:0"G
forward_lstm_while_identity_4&forward_lstm/while/Identity_4:output:0"G
forward_lstm_while_identity_5&forward_lstm/while/Identity_5:output:0"
>forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource@forward_lstm_while_lstm_cell_1_biasadd_readvariableop_resource_0"
?forward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resourceAforward_lstm_while_lstm_cell_1_matmul_1_readvariableop_resource_0"
=forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource?forward_lstm_while_lstm_cell_1_matmul_readvariableop_resource_0"Ü
kforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensormforward_lstm_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2n
5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp5forward_lstm/while/lstm_cell_1/BiasAdd/ReadVariableOp2l
4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp4forward_lstm/while/lstm_cell_1/MatMul/ReadVariableOp2p
6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp6forward_lstm/while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
þ©

#__inference__traced_restore_1220825
file_prefix/
assignvariableop_dense_kernel:@+
assignvariableop_1_dense_bias:3
!assignvariableop_2_dense_1_kernel:-
assignvariableop_3_dense_1_bias:S
@assignvariableop_4_bidirectional_forward_lstm_lstm_cell_1_kernel:	
]
Jassignvariableop_5_bidirectional_forward_lstm_lstm_cell_1_recurrent_kernel:	 M
>assignvariableop_6_bidirectional_forward_lstm_lstm_cell_1_bias:	T
Aassignvariableop_7_bidirectional_backward_lstm_lstm_cell_2_kernel:	
^
Kassignvariableop_8_bidirectional_backward_lstm_lstm_cell_2_recurrent_kernel:	 N
?assignvariableop_9_bidirectional_backward_lstm_lstm_cell_2_bias:	'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: %
assignvariableop_15_total_2: %
assignvariableop_16_count_2: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: #
assignvariableop_19_total: #
assignvariableop_20_count: 9
'assignvariableop_21_adam_dense_kernel_m:@3
%assignvariableop_22_adam_dense_bias_m:;
)assignvariableop_23_adam_dense_1_kernel_m:5
'assignvariableop_24_adam_dense_1_bias_m:[
Hassignvariableop_25_adam_bidirectional_forward_lstm_lstm_cell_1_kernel_m:	
e
Rassignvariableop_26_adam_bidirectional_forward_lstm_lstm_cell_1_recurrent_kernel_m:	 U
Fassignvariableop_27_adam_bidirectional_forward_lstm_lstm_cell_1_bias_m:	\
Iassignvariableop_28_adam_bidirectional_backward_lstm_lstm_cell_2_kernel_m:	
f
Sassignvariableop_29_adam_bidirectional_backward_lstm_lstm_cell_2_recurrent_kernel_m:	 V
Gassignvariableop_30_adam_bidirectional_backward_lstm_lstm_cell_2_bias_m:	9
'assignvariableop_31_adam_dense_kernel_v:@3
%assignvariableop_32_adam_dense_bias_v:;
)assignvariableop_33_adam_dense_1_kernel_v:5
'assignvariableop_34_adam_dense_1_bias_v:[
Hassignvariableop_35_adam_bidirectional_forward_lstm_lstm_cell_1_kernel_v:	
e
Rassignvariableop_36_adam_bidirectional_forward_lstm_lstm_cell_1_recurrent_kernel_v:	 U
Fassignvariableop_37_adam_bidirectional_forward_lstm_lstm_cell_1_bias_v:	\
Iassignvariableop_38_adam_bidirectional_backward_lstm_lstm_cell_2_kernel_v:	
f
Sassignvariableop_39_adam_bidirectional_backward_lstm_lstm_cell_2_recurrent_kernel_v:	 V
Gassignvariableop_40_adam_bidirectional_backward_lstm_lstm_cell_2_bias_v:	
identity_42¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ê
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*ð
valueæBã*B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÄ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ó
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¾
_output_shapes«
¨::::::::::::::::::::::::::::::::::::::::::*8
dtypes.
,2*	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_4AssignVariableOp@assignvariableop_4_bidirectional_forward_lstm_lstm_cell_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_5AssignVariableOpJassignvariableop_5_bidirectional_forward_lstm_lstm_cell_1_recurrent_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_6AssignVariableOp>assignvariableop_6_bidirectional_forward_lstm_lstm_cell_1_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_7AssignVariableOpAassignvariableop_7_bidirectional_backward_lstm_lstm_cell_2_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:º
AssignVariableOp_8AssignVariableOpKassignvariableop_8_bidirectional_backward_lstm_lstm_cell_2_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_9AssignVariableOp?assignvariableop_9_bidirectional_backward_lstm_lstm_cell_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_2Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp%assignvariableop_22_adam_dense_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_1_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_25AssignVariableOpHassignvariableop_25_adam_bidirectional_forward_lstm_lstm_cell_1_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_26AssignVariableOpRassignvariableop_26_adam_bidirectional_forward_lstm_lstm_cell_1_recurrent_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_27AssignVariableOpFassignvariableop_27_adam_bidirectional_forward_lstm_lstm_cell_1_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:º
AssignVariableOp_28AssignVariableOpIassignvariableop_28_adam_bidirectional_backward_lstm_lstm_cell_2_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ä
AssignVariableOp_29AssignVariableOpSassignvariableop_29_adam_bidirectional_backward_lstm_lstm_cell_2_recurrent_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_30AssignVariableOpGassignvariableop_30_adam_bidirectional_backward_lstm_lstm_cell_2_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp%assignvariableop_32_adam_dense_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_1_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_1_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_35AssignVariableOpHassignvariableop_35_adam_bidirectional_forward_lstm_lstm_cell_1_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_36AssignVariableOpRassignvariableop_36_adam_bidirectional_forward_lstm_lstm_cell_1_recurrent_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_37AssignVariableOpFassignvariableop_37_adam_bidirectional_forward_lstm_lstm_cell_1_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:º
AssignVariableOp_38AssignVariableOpIassignvariableop_38_adam_bidirectional_backward_lstm_lstm_cell_2_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ä
AssignVariableOp_39AssignVariableOpSassignvariableop_39_adam_bidirectional_backward_lstm_lstm_cell_2_recurrent_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_40AssignVariableOpGassignvariableop_40_adam_bidirectional_backward_lstm_lstm_cell_2_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Õ
Identity_41Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_42IdentityIdentity_41:output:0^NoOp_1*
T0*
_output_shapes
: Â
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_42Identity_42:output:0*g
_input_shapesV
T: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
º
È
while_cond_1219975
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1219975___redundant_placeholder05
1while_while_cond_1219975___redundant_placeholder15
1while_while_cond_1219975___redundant_placeholder25
1while_while_cond_1219975___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
¸
½
.__inference_forward_lstm_layer_call_fn_1219132
inputs_0
unknown:	

	unknown_0:	 
	unknown_1:	
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_forward_lstm_layer_call_and_return_conditional_losses_1215208|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
inputs/0
§
Ì
forward_lstm_while_cond_12163356
2forward_lstm_while_forward_lstm_while_loop_counter<
8forward_lstm_while_forward_lstm_while_maximum_iterations"
forward_lstm_while_placeholder$
 forward_lstm_while_placeholder_1$
 forward_lstm_while_placeholder_2$
 forward_lstm_while_placeholder_38
4forward_lstm_while_less_forward_lstm_strided_slice_1O
Kforward_lstm_while_forward_lstm_while_cond_1216335___redundant_placeholder0O
Kforward_lstm_while_forward_lstm_while_cond_1216335___redundant_placeholder1O
Kforward_lstm_while_forward_lstm_while_cond_1216335___redundant_placeholder2O
Kforward_lstm_while_forward_lstm_while_cond_1216335___redundant_placeholder3
forward_lstm_while_identity

forward_lstm/while/LessLessforward_lstm_while_placeholder4forward_lstm_while_less_forward_lstm_strided_slice_1*
T0*
_output_shapes
: e
forward_lstm/while/IdentityIdentityforward_lstm/while/Less:z:0*
T0
*
_output_shapes
: "C
forward_lstm_while_identity$forward_lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
º
È
while_cond_1220265
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1220265___redundant_placeholder05
1while_while_cond_1220265___redundant_placeholder15
1while_while_cond_1220265___redundant_placeholder25
1while_while_cond_1220265___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
§
Ì
forward_lstm_while_cond_12182546
2forward_lstm_while_forward_lstm_while_loop_counter<
8forward_lstm_while_forward_lstm_while_maximum_iterations"
forward_lstm_while_placeholder$
 forward_lstm_while_placeholder_1$
 forward_lstm_while_placeholder_2$
 forward_lstm_while_placeholder_38
4forward_lstm_while_less_forward_lstm_strided_slice_1O
Kforward_lstm_while_forward_lstm_while_cond_1218254___redundant_placeholder0O
Kforward_lstm_while_forward_lstm_while_cond_1218254___redundant_placeholder1O
Kforward_lstm_while_forward_lstm_while_cond_1218254___redundant_placeholder2O
Kforward_lstm_while_forward_lstm_while_cond_1218254___redundant_placeholder3
forward_lstm_while_identity

forward_lstm/while/LessLessforward_lstm_while_placeholder4forward_lstm_while_less_forward_lstm_strided_slice_1*
T0*
_output_shapes
: e
forward_lstm/while/IdentityIdentityforward_lstm/while/Less:z:0*
T0
*
_output_shapes
: "C
forward_lstm_while_identity$forward_lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
º
¾
/__inference_backward_lstm_layer_call_fn_1219737
inputs_0
unknown:	

	unknown_0:	 
	unknown_1:	
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_backward_lstm_layer_call_and_return_conditional_losses_1215369|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
inputs/0
H

 backward_lstm_while_body_12183968
4backward_lstm_while_backward_lstm_while_loop_counter>
:backward_lstm_while_backward_lstm_while_maximum_iterations#
backward_lstm_while_placeholder%
!backward_lstm_while_placeholder_1%
!backward_lstm_while_placeholder_2%
!backward_lstm_while_placeholder_37
3backward_lstm_while_backward_lstm_strided_slice_1_0s
obackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0S
@backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0:	
U
Bbackward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 P
Abackward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0:	 
backward_lstm_while_identity"
backward_lstm_while_identity_1"
backward_lstm_while_identity_2"
backward_lstm_while_identity_3"
backward_lstm_while_identity_4"
backward_lstm_while_identity_55
1backward_lstm_while_backward_lstm_strided_slice_1q
mbackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensorQ
>backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource:	
S
@backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource:	 N
?backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource:	¢6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp¢5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp¢7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp
Ebackward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿõ
7backward_lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemobackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0backward_lstm_while_placeholderNbackward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0·
5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp@backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0â
&backward_lstm/while/lstm_cell_2/MatMulMatMul>backward_lstm/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpBbackward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0É
(backward_lstm/while/lstm_cell_2/MatMul_1MatMul!backward_lstm_while_placeholder_2?backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
#backward_lstm/while/lstm_cell_2/addAddV20backward_lstm/while/lstm_cell_2/MatMul:product:02backward_lstm/while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpAbackward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
'backward_lstm/while/lstm_cell_2/BiasAddBiasAdd'backward_lstm/while/lstm_cell_2/add:z:0>backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
/backward_lstm/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%backward_lstm/while/lstm_cell_2/splitSplit8backward_lstm/while/lstm_cell_2/split/split_dim:output:00backward_lstm/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
'backward_lstm/while/lstm_cell_2/SigmoidSigmoid.backward_lstm/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)backward_lstm/while/lstm_cell_2/Sigmoid_1Sigmoid.backward_lstm/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ®
#backward_lstm/while/lstm_cell_2/mulMul-backward_lstm/while/lstm_cell_2/Sigmoid_1:y:0!backward_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
$backward_lstm/while/lstm_cell_2/ReluRelu.backward_lstm/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¿
%backward_lstm/while/lstm_cell_2/mul_1Mul+backward_lstm/while/lstm_cell_2/Sigmoid:y:02backward_lstm/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ´
%backward_lstm/while/lstm_cell_2/add_1AddV2'backward_lstm/while/lstm_cell_2/mul:z:0)backward_lstm/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)backward_lstm/while/lstm_cell_2/Sigmoid_2Sigmoid.backward_lstm/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&backward_lstm/while/lstm_cell_2/Relu_1Relu)backward_lstm/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ã
%backward_lstm/while/lstm_cell_2/mul_2Mul-backward_lstm/while/lstm_cell_2/Sigmoid_2:y:04backward_lstm/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ü
8backward_lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!backward_lstm_while_placeholder_1backward_lstm_while_placeholder)backward_lstm/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒ[
backward_lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm/while/addAddV2backward_lstm_while_placeholder"backward_lstm/while/add/y:output:0*
T0*
_output_shapes
: ]
backward_lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm/while/add_1AddV24backward_lstm_while_backward_lstm_while_loop_counter$backward_lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm/while/IdentityIdentitybackward_lstm/while/add_1:z:0^backward_lstm/while/NoOp*
T0*
_output_shapes
: ¢
backward_lstm/while/Identity_1Identity:backward_lstm_while_backward_lstm_while_maximum_iterations^backward_lstm/while/NoOp*
T0*
_output_shapes
: 
backward_lstm/while/Identity_2Identitybackward_lstm/while/add:z:0^backward_lstm/while/NoOp*
T0*
_output_shapes
: °
backward_lstm/while/Identity_3IdentityHbackward_lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm/while/NoOp*
T0*
_output_shapes
: ¢
backward_lstm/while/Identity_4Identity)backward_lstm/while/lstm_cell_2/mul_2:z:0^backward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
backward_lstm/while/Identity_5Identity)backward_lstm/while/lstm_cell_2/add_1:z:0^backward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
backward_lstm/while/NoOpNoOp7^backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp6^backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp8^backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1backward_lstm_while_backward_lstm_strided_slice_13backward_lstm_while_backward_lstm_strided_slice_1_0"E
backward_lstm_while_identity%backward_lstm/while/Identity:output:0"I
backward_lstm_while_identity_1'backward_lstm/while/Identity_1:output:0"I
backward_lstm_while_identity_2'backward_lstm/while/Identity_2:output:0"I
backward_lstm_while_identity_3'backward_lstm/while/Identity_3:output:0"I
backward_lstm_while_identity_4'backward_lstm/while/Identity_4:output:0"I
backward_lstm_while_identity_5'backward_lstm/while/Identity_5:output:0"
?backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resourceAbackward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0"
@backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resourceBbackward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0"
>backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource@backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0"à
mbackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensorobackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2p
6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp2n
5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp2r
7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
è
Ä	
8sequential_bidirectional_forward_lstm_while_cond_1214622h
dsequential_bidirectional_forward_lstm_while_sequential_bidirectional_forward_lstm_while_loop_countern
jsequential_bidirectional_forward_lstm_while_sequential_bidirectional_forward_lstm_while_maximum_iterations;
7sequential_bidirectional_forward_lstm_while_placeholder=
9sequential_bidirectional_forward_lstm_while_placeholder_1=
9sequential_bidirectional_forward_lstm_while_placeholder_2=
9sequential_bidirectional_forward_lstm_while_placeholder_3j
fsequential_bidirectional_forward_lstm_while_less_sequential_bidirectional_forward_lstm_strided_slice_1
}sequential_bidirectional_forward_lstm_while_sequential_bidirectional_forward_lstm_while_cond_1214622___redundant_placeholder0
}sequential_bidirectional_forward_lstm_while_sequential_bidirectional_forward_lstm_while_cond_1214622___redundant_placeholder1
}sequential_bidirectional_forward_lstm_while_sequential_bidirectional_forward_lstm_while_cond_1214622___redundant_placeholder2
}sequential_bidirectional_forward_lstm_while_sequential_bidirectional_forward_lstm_while_cond_1214622___redundant_placeholder38
4sequential_bidirectional_forward_lstm_while_identity
ú
0sequential/bidirectional/forward_lstm/while/LessLess7sequential_bidirectional_forward_lstm_while_placeholderfsequential_bidirectional_forward_lstm_while_less_sequential_bidirectional_forward_lstm_strided_slice_1*
T0*
_output_shapes
: 
4sequential/bidirectional/forward_lstm/while/IdentityIdentity4sequential/bidirectional/forward_lstm/while/Less:z:0*
T0
*
_output_shapes
: "u
4sequential_bidirectional_forward_lstm_while_identity=sequential/bidirectional/forward_lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
ÿ·

J__inference_bidirectional_layer_call_and_return_conditional_losses_1218196
inputs_0J
7forward_lstm_lstm_cell_1_matmul_readvariableop_resource:	
L
9forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource:	 G
8forward_lstm_lstm_cell_1_biasadd_readvariableop_resource:	K
8backward_lstm_lstm_cell_2_matmul_readvariableop_resource:	
M
:backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource:	 H
9backward_lstm_lstm_cell_2_biasadd_readvariableop_resource:	
identity¢0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp¢/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp¢1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp¢backward_lstm/while¢/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp¢.forward_lstm/lstm_cell_1/MatMul/ReadVariableOp¢0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp¢forward_lstm/whileJ
forward_lstm/ShapeShapeinputs_0*
T0*
_output_shapes
:j
 forward_lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"forward_lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"forward_lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
forward_lstm/strided_sliceStridedSliceforward_lstm/Shape:output:0)forward_lstm/strided_slice/stack:output:0+forward_lstm/strided_slice/stack_1:output:0+forward_lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
forward_lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
forward_lstm/zeros/packedPack#forward_lstm/strided_slice:output:0$forward_lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
forward_lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm/zerosFill"forward_lstm/zeros/packed:output:0!forward_lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
forward_lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
forward_lstm/zeros_1/packedPack#forward_lstm/strided_slice:output:0&forward_lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm/zeros_1Fill$forward_lstm/zeros_1/packed:output:0#forward_lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
forward_lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm/transpose	Transposeinputs_0$forward_lstm/transpose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ^
forward_lstm/Shape_1Shapeforward_lstm/transpose:y:0*
T0*
_output_shapes
:l
"forward_lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
forward_lstm/strided_slice_1StridedSliceforward_lstm/Shape_1:output:0+forward_lstm/strided_slice_1/stack:output:0-forward_lstm/strided_slice_1/stack_1:output:0-forward_lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(forward_lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÛ
forward_lstm/TensorArrayV2TensorListReserve1forward_lstm/TensorArrayV2/element_shape:output:0%forward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Bforward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ
4forward_lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm/transpose:y:0Kforward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒl
"forward_lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:³
forward_lstm/strided_slice_2StridedSliceforward_lstm/transpose:y:0+forward_lstm/strided_slice_2/stack:output:0-forward_lstm/strided_slice_2/stack_1:output:0-forward_lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask§
.forward_lstm/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp7forward_lstm_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0»
forward_lstm/lstm_cell_1/MatMulMatMul%forward_lstm/strided_slice_2:output:06forward_lstm/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp9forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0µ
!forward_lstm/lstm_cell_1/MatMul_1MatMulforward_lstm/zeros:output:08forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
forward_lstm/lstm_cell_1/addAddV2)forward_lstm/lstm_cell_1/MatMul:product:0+forward_lstm/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp8forward_lstm_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¹
 forward_lstm/lstm_cell_1/BiasAddBiasAdd forward_lstm/lstm_cell_1/add:z:07forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
(forward_lstm/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm/lstm_cell_1/splitSplit1forward_lstm/lstm_cell_1/split/split_dim:output:0)forward_lstm/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
 forward_lstm/lstm_cell_1/SigmoidSigmoid'forward_lstm/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"forward_lstm/lstm_cell_1/Sigmoid_1Sigmoid'forward_lstm/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/lstm_cell_1/mulMul&forward_lstm/lstm_cell_1/Sigmoid_1:y:0forward_lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/lstm_cell_1/ReluRelu'forward_lstm/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ª
forward_lstm/lstm_cell_1/mul_1Mul$forward_lstm/lstm_cell_1/Sigmoid:y:0+forward_lstm/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
forward_lstm/lstm_cell_1/add_1AddV2 forward_lstm/lstm_cell_1/mul:z:0"forward_lstm/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"forward_lstm/lstm_cell_1/Sigmoid_2Sigmoid'forward_lstm/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
forward_lstm/lstm_cell_1/Relu_1Relu"forward_lstm/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ®
forward_lstm/lstm_cell_1/mul_2Mul&forward_lstm/lstm_cell_1/Sigmoid_2:y:0-forward_lstm/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ {
*forward_lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ß
forward_lstm/TensorArrayV2_1TensorListReserve3forward_lstm/TensorArrayV2_1/element_shape:output:0%forward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒS
forward_lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%forward_lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿa
forward_lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
forward_lstm/whileWhile(forward_lstm/while/loop_counter:output:0.forward_lstm/while/maximum_iterations:output:0forward_lstm/time:output:0%forward_lstm/TensorArrayV2_1:handle:0forward_lstm/zeros:output:0forward_lstm/zeros_1:output:0%forward_lstm/strided_slice_1:output:0Dforward_lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:07forward_lstm_lstm_cell_1_matmul_readvariableop_resource9forward_lstm_lstm_cell_1_matmul_1_readvariableop_resource8forward_lstm_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *+
body#R!
forward_lstm_while_body_1217967*+
cond#R!
forward_lstm_while_cond_1217966*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
=forward_lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ò
/forward_lstm/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm/while:output:3Fforward_lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0u
"forward_lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿn
$forward_lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:È
forward_lstm/strided_slice_3StridedSlice8forward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0+forward_lstm/strided_slice_3/stack:output:0-forward_lstm/strided_slice_3/stack_1:output:0-forward_lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maskr
forward_lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Æ
forward_lstm/transpose_1	Transpose8forward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0&forward_lstm/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ h
forward_lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    K
backward_lstm/ShapeShapeinputs_0*
T0*
_output_shapes
:k
!backward_lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#backward_lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#backward_lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
backward_lstm/strided_sliceStridedSlicebackward_lstm/Shape:output:0*backward_lstm/strided_slice/stack:output:0,backward_lstm/strided_slice/stack_1:output:0,backward_lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
backward_lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
backward_lstm/zeros/packedPack$backward_lstm/strided_slice:output:0%backward_lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
backward_lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm/zerosFill#backward_lstm/zeros/packed:output:0"backward_lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
backward_lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : ¡
backward_lstm/zeros_1/packedPack$backward_lstm/strided_slice:output:0'backward_lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm/zeros_1Fill%backward_lstm/zeros_1/packed:output:0$backward_lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
backward_lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm/transpose	Transposeinputs_0%backward_lstm/transpose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
backward_lstm/Shape_1Shapebackward_lstm/transpose:y:0*
T0*
_output_shapes
:m
#backward_lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
backward_lstm/strided_slice_1StridedSlicebackward_lstm/Shape_1:output:0,backward_lstm/strided_slice_1/stack:output:0.backward_lstm/strided_slice_1/stack_1:output:0.backward_lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)backward_lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÞ
backward_lstm/TensorArrayV2TensorListReserve2backward_lstm/TensorArrayV2/element_shape:output:0&backward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
backward_lstm/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: °
backward_lstm/ReverseV2	ReverseV2backward_lstm/transpose:y:0%backward_lstm/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Cbackward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ
5backward_lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor backward_lstm/ReverseV2:output:0Lbackward_lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒm
#backward_lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
backward_lstm/strided_slice_2StridedSlicebackward_lstm/transpose:y:0,backward_lstm/strided_slice_2/stack:output:0.backward_lstm/strided_slice_2/stack_1:output:0.backward_lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask©
/backward_lstm/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp8backward_lstm_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0¾
 backward_lstm/lstm_cell_2/MatMulMatMul&backward_lstm/strided_slice_2:output:07backward_lstm/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp:backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0¸
"backward_lstm/lstm_cell_2/MatMul_1MatMulbackward_lstm/zeros:output:09backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
backward_lstm/lstm_cell_2/addAddV2*backward_lstm/lstm_cell_2/MatMul:product:0,backward_lstm/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp9backward_lstm_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¼
!backward_lstm/lstm_cell_2/BiasAddBiasAdd!backward_lstm/lstm_cell_2/add:z:08backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)backward_lstm/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm/lstm_cell_2/splitSplit2backward_lstm/lstm_cell_2/split/split_dim:output:0*backward_lstm/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
!backward_lstm/lstm_cell_2/SigmoidSigmoid(backward_lstm/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#backward_lstm/lstm_cell_2/Sigmoid_1Sigmoid(backward_lstm/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
backward_lstm/lstm_cell_2/mulMul'backward_lstm/lstm_cell_2/Sigmoid_1:y:0backward_lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
backward_lstm/lstm_cell_2/ReluRelu(backward_lstm/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ­
backward_lstm/lstm_cell_2/mul_1Mul%backward_lstm/lstm_cell_2/Sigmoid:y:0,backward_lstm/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
backward_lstm/lstm_cell_2/add_1AddV2!backward_lstm/lstm_cell_2/mul:z:0#backward_lstm/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#backward_lstm/lstm_cell_2/Sigmoid_2Sigmoid(backward_lstm/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 backward_lstm/lstm_cell_2/Relu_1Relu#backward_lstm/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ±
backward_lstm/lstm_cell_2/mul_2Mul'backward_lstm/lstm_cell_2/Sigmoid_2:y:0.backward_lstm/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
+backward_lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    â
backward_lstm/TensorArrayV2_1TensorListReserve4backward_lstm/TensorArrayV2_1/element_shape:output:0&backward_lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒT
backward_lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&backward_lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿb
 backward_lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Å
backward_lstm/whileWhile)backward_lstm/while/loop_counter:output:0/backward_lstm/while/maximum_iterations:output:0backward_lstm/time:output:0&backward_lstm/TensorArrayV2_1:handle:0backward_lstm/zeros:output:0backward_lstm/zeros_1:output:0&backward_lstm/strided_slice_1:output:0Ebackward_lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:08backward_lstm_lstm_cell_2_matmul_readvariableop_resource:backward_lstm_lstm_cell_2_matmul_1_readvariableop_resource9backward_lstm_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 backward_lstm_while_body_1218108*,
cond$R"
 backward_lstm_while_cond_1218107*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
>backward_lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    õ
0backward_lstm/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm/while:output:3Gbackward_lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0v
#backward_lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%backward_lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
backward_lstm/strided_slice_3StridedSlice9backward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0,backward_lstm/strided_slice_3/stack:output:0.backward_lstm/strided_slice_3/stack_1:output:0.backward_lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_masks
backward_lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          É
backward_lstm/transpose_1	Transpose9backward_lstm/TensorArrayV2Stack/TensorListStack:tensor:0'backward_lstm/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ i
backward_lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
	ReverseV2	ReverseV2backward_lstm/transpose_1:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¢
concatConcatV2forward_lstm/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@k
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@ 
NoOpNoOp1^backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp0^backward_lstm/lstm_cell_2/MatMul/ReadVariableOp2^backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp^backward_lstm/while0^forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp/^forward_lstm/lstm_cell_1/MatMul/ReadVariableOp1^forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp^forward_lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 2d
0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp0backward_lstm/lstm_cell_2/BiasAdd/ReadVariableOp2b
/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp/backward_lstm/lstm_cell_2/MatMul/ReadVariableOp2f
1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp1backward_lstm/lstm_cell_2/MatMul_1/ReadVariableOp2*
backward_lstm/whilebackward_lstm/while2b
/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp/forward_lstm/lstm_cell_1/BiasAdd/ReadVariableOp2`
.forward_lstm/lstm_cell_1/MatMul/ReadVariableOp.forward_lstm/lstm_cell_1/MatMul/ReadVariableOp2d
0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp0forward_lstm/lstm_cell_1/MatMul_1/ReadVariableOp2(
forward_lstm/whileforward_lstm/while:g c
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
÷9

J__inference_backward_lstm_layer_call_and_return_conditional_losses_1215562

inputs&
lstm_cell_2_1215480:	
&
lstm_cell_2_1215482:	 "
lstm_cell_2_1215484:	
identity¢#lstm_cell_2/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   å
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask÷
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_1215480lstm_cell_2_1215482lstm_cell_2_1215484*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1215432n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¹
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_1215480lstm_cell_2_1215482lstm_cell_2_1215484*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1215493*
condR
while_cond_1215492*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ t
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
: : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Ô


,__inference_sequential_layer_call_fn_1216644
bidirectional_input
unknown:	

	unknown_0:	 
	unknown_1:	
	unknown_2:	

	unknown_3:	 
	unknown_4:	
	unknown_5:@
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallbidirectional_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1216621o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

-
_user_specified_namebidirectional_input
î
ö
-__inference_lstm_cell_1_layer_call_fn_1220367

inputs
states_0
states_1
unknown:	

	unknown_0:	 
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_1_layer_call_and_return_conditional_losses_1214934o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/1
H

 backward_lstm_while_body_12186848
4backward_lstm_while_backward_lstm_while_loop_counter>
:backward_lstm_while_backward_lstm_while_maximum_iterations#
backward_lstm_while_placeholder%
!backward_lstm_while_placeholder_1%
!backward_lstm_while_placeholder_2%
!backward_lstm_while_placeholder_37
3backward_lstm_while_backward_lstm_strided_slice_1_0s
obackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0S
@backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0:	
U
Bbackward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 P
Abackward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0:	 
backward_lstm_while_identity"
backward_lstm_while_identity_1"
backward_lstm_while_identity_2"
backward_lstm_while_identity_3"
backward_lstm_while_identity_4"
backward_lstm_while_identity_55
1backward_lstm_while_backward_lstm_strided_slice_1q
mbackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensorQ
>backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource:	
S
@backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource:	 N
?backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource:	¢6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp¢5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp¢7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp
Ebackward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ì
7backward_lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemobackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0backward_lstm_while_placeholderNbackward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0·
5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp@backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0â
&backward_lstm/while/lstm_cell_2/MatMulMatMul>backward_lstm/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpBbackward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0É
(backward_lstm/while/lstm_cell_2/MatMul_1MatMul!backward_lstm_while_placeholder_2?backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
#backward_lstm/while/lstm_cell_2/addAddV20backward_lstm/while/lstm_cell_2/MatMul:product:02backward_lstm/while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpAbackward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
'backward_lstm/while/lstm_cell_2/BiasAddBiasAdd'backward_lstm/while/lstm_cell_2/add:z:0>backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
/backward_lstm/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%backward_lstm/while/lstm_cell_2/splitSplit8backward_lstm/while/lstm_cell_2/split/split_dim:output:00backward_lstm/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
'backward_lstm/while/lstm_cell_2/SigmoidSigmoid.backward_lstm/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)backward_lstm/while/lstm_cell_2/Sigmoid_1Sigmoid.backward_lstm/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ®
#backward_lstm/while/lstm_cell_2/mulMul-backward_lstm/while/lstm_cell_2/Sigmoid_1:y:0!backward_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
$backward_lstm/while/lstm_cell_2/ReluRelu.backward_lstm/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¿
%backward_lstm/while/lstm_cell_2/mul_1Mul+backward_lstm/while/lstm_cell_2/Sigmoid:y:02backward_lstm/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ´
%backward_lstm/while/lstm_cell_2/add_1AddV2'backward_lstm/while/lstm_cell_2/mul:z:0)backward_lstm/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)backward_lstm/while/lstm_cell_2/Sigmoid_2Sigmoid.backward_lstm/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&backward_lstm/while/lstm_cell_2/Relu_1Relu)backward_lstm/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ã
%backward_lstm/while/lstm_cell_2/mul_2Mul-backward_lstm/while/lstm_cell_2/Sigmoid_2:y:04backward_lstm/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ü
8backward_lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!backward_lstm_while_placeholder_1backward_lstm_while_placeholder)backward_lstm/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒ[
backward_lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm/while/addAddV2backward_lstm_while_placeholder"backward_lstm/while/add/y:output:0*
T0*
_output_shapes
: ]
backward_lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm/while/add_1AddV24backward_lstm_while_backward_lstm_while_loop_counter$backward_lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm/while/IdentityIdentitybackward_lstm/while/add_1:z:0^backward_lstm/while/NoOp*
T0*
_output_shapes
: ¢
backward_lstm/while/Identity_1Identity:backward_lstm_while_backward_lstm_while_maximum_iterations^backward_lstm/while/NoOp*
T0*
_output_shapes
: 
backward_lstm/while/Identity_2Identitybackward_lstm/while/add:z:0^backward_lstm/while/NoOp*
T0*
_output_shapes
: °
backward_lstm/while/Identity_3IdentityHbackward_lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm/while/NoOp*
T0*
_output_shapes
: ¢
backward_lstm/while/Identity_4Identity)backward_lstm/while/lstm_cell_2/mul_2:z:0^backward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
backward_lstm/while/Identity_5Identity)backward_lstm/while/lstm_cell_2/add_1:z:0^backward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
backward_lstm/while/NoOpNoOp7^backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp6^backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp8^backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1backward_lstm_while_backward_lstm_strided_slice_13backward_lstm_while_backward_lstm_strided_slice_1_0"E
backward_lstm_while_identity%backward_lstm/while/Identity:output:0"I
backward_lstm_while_identity_1'backward_lstm/while/Identity_1:output:0"I
backward_lstm_while_identity_2'backward_lstm/while/Identity_2:output:0"I
backward_lstm_while_identity_3'backward_lstm/while/Identity_3:output:0"I
backward_lstm_while_identity_4'backward_lstm/while/Identity_4:output:0"I
backward_lstm_while_identity_5'backward_lstm/while/Identity_5:output:0"
?backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resourceAbackward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0"
@backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resourceBbackward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0"
>backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource@backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0"à
mbackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensorobackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2p
6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp2n
5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp2r
7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
H

 backward_lstm_while_body_12164778
4backward_lstm_while_backward_lstm_while_loop_counter>
:backward_lstm_while_backward_lstm_while_maximum_iterations#
backward_lstm_while_placeholder%
!backward_lstm_while_placeholder_1%
!backward_lstm_while_placeholder_2%
!backward_lstm_while_placeholder_37
3backward_lstm_while_backward_lstm_strided_slice_1_0s
obackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0S
@backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0:	
U
Bbackward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 P
Abackward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0:	 
backward_lstm_while_identity"
backward_lstm_while_identity_1"
backward_lstm_while_identity_2"
backward_lstm_while_identity_3"
backward_lstm_while_identity_4"
backward_lstm_while_identity_55
1backward_lstm_while_backward_lstm_strided_slice_1q
mbackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensorQ
>backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource:	
S
@backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource:	 N
?backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource:	¢6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp¢5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp¢7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp
Ebackward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ì
7backward_lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemobackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0backward_lstm_while_placeholderNbackward_lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0·
5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp@backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	
*
dtype0â
&backward_lstm/while/lstm_cell_2/MatMulMatMul>backward_lstm/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpBbackward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0É
(backward_lstm/while/lstm_cell_2/MatMul_1MatMul!backward_lstm_while_placeholder_2?backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
#backward_lstm/while/lstm_cell_2/addAddV20backward_lstm/while/lstm_cell_2/MatMul:product:02backward_lstm/while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpAbackward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
'backward_lstm/while/lstm_cell_2/BiasAddBiasAdd'backward_lstm/while/lstm_cell_2/add:z:0>backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
/backward_lstm/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%backward_lstm/while/lstm_cell_2/splitSplit8backward_lstm/while/lstm_cell_2/split/split_dim:output:00backward_lstm/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
'backward_lstm/while/lstm_cell_2/SigmoidSigmoid.backward_lstm/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)backward_lstm/while/lstm_cell_2/Sigmoid_1Sigmoid.backward_lstm/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ®
#backward_lstm/while/lstm_cell_2/mulMul-backward_lstm/while/lstm_cell_2/Sigmoid_1:y:0!backward_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
$backward_lstm/while/lstm_cell_2/ReluRelu.backward_lstm/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¿
%backward_lstm/while/lstm_cell_2/mul_1Mul+backward_lstm/while/lstm_cell_2/Sigmoid:y:02backward_lstm/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ´
%backward_lstm/while/lstm_cell_2/add_1AddV2'backward_lstm/while/lstm_cell_2/mul:z:0)backward_lstm/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)backward_lstm/while/lstm_cell_2/Sigmoid_2Sigmoid.backward_lstm/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&backward_lstm/while/lstm_cell_2/Relu_1Relu)backward_lstm/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ã
%backward_lstm/while/lstm_cell_2/mul_2Mul-backward_lstm/while/lstm_cell_2/Sigmoid_2:y:04backward_lstm/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ü
8backward_lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!backward_lstm_while_placeholder_1backward_lstm_while_placeholder)backward_lstm/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒ[
backward_lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm/while/addAddV2backward_lstm_while_placeholder"backward_lstm/while/add/y:output:0*
T0*
_output_shapes
: ]
backward_lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm/while/add_1AddV24backward_lstm_while_backward_lstm_while_loop_counter$backward_lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm/while/IdentityIdentitybackward_lstm/while/add_1:z:0^backward_lstm/while/NoOp*
T0*
_output_shapes
: ¢
backward_lstm/while/Identity_1Identity:backward_lstm_while_backward_lstm_while_maximum_iterations^backward_lstm/while/NoOp*
T0*
_output_shapes
: 
backward_lstm/while/Identity_2Identitybackward_lstm/while/add:z:0^backward_lstm/while/NoOp*
T0*
_output_shapes
: °
backward_lstm/while/Identity_3IdentityHbackward_lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm/while/NoOp*
T0*
_output_shapes
: ¢
backward_lstm/while/Identity_4Identity)backward_lstm/while/lstm_cell_2/mul_2:z:0^backward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
backward_lstm/while/Identity_5Identity)backward_lstm/while/lstm_cell_2/add_1:z:0^backward_lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
backward_lstm/while/NoOpNoOp7^backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp6^backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp8^backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1backward_lstm_while_backward_lstm_strided_slice_13backward_lstm_while_backward_lstm_strided_slice_1_0"E
backward_lstm_while_identity%backward_lstm/while/Identity:output:0"I
backward_lstm_while_identity_1'backward_lstm/while/Identity_1:output:0"I
backward_lstm_while_identity_2'backward_lstm/while/Identity_2:output:0"I
backward_lstm_while_identity_3'backward_lstm/while/Identity_3:output:0"I
backward_lstm_while_identity_4'backward_lstm/while/Identity_4:output:0"I
backward_lstm_while_identity_5'backward_lstm/while/Identity_5:output:0"
?backward_lstm_while_lstm_cell_2_biasadd_readvariableop_resourceAbackward_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0"
@backward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resourceBbackward_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0"
>backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource@backward_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0"à
mbackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensorobackward_lstm_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2p
6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp6backward_lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp2n
5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp5backward_lstm/while/lstm_cell_2/MatMul/ReadVariableOp2r
7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp7backward_lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
º
È
while_cond_1215492
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1215492___redundant_placeholder05
1while_while_cond_1215492___redundant_placeholder15
1while_while_cond_1215492___redundant_placeholder25
1while_while_cond_1215492___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Æ
serving_default²
W
bidirectional_input@
%serving_default_bidirectional_input:0ÿÿÿÿÿÿÿÿÿ
;
dense_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:äÉ
è
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ì
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
forward_layer
backward_layer"
_tf_keras_layer
¥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias"
_tf_keras_layer
»
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias"
_tf_keras_layer
f
,0
-1
.2
/3
04
15
"6
#7
*8
+9"
trackable_list_wrapper
f
,0
-1
.2
/3
04
15
"6
#7
*8
+9"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
å
7trace_0
8trace_1
9trace_2
:trace_32ú
,__inference_sequential_layer_call_fn_1216644
,__inference_sequential_layer_call_fn_1217209
,__inference_sequential_layer_call_fn_1217234
,__inference_sequential_layer_call_fn_1217095¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z7trace_0z8trace_1z9trace_2z:trace_3
Ñ
;trace_0
<trace_1
=trace_2
>trace_32æ
G__inference_sequential_layer_call_and_return_conditional_losses_1217537
G__inference_sequential_layer_call_and_return_conditional_losses_1217840
G__inference_sequential_layer_call_and_return_conditional_losses_1217123
G__inference_sequential_layer_call_and_return_conditional_losses_1217151¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z;trace_0z<trace_1z=trace_2z>trace_3
ÙBÖ
"__inference__wrapped_model_1214867bidirectional_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 

?iter

@beta_1

Abeta_2
	Bdecay
Clearning_rate"mÈ#mÉ*mÊ+mË,mÌ-mÍ.mÎ/mÏ0mÐ1mÑ"vÒ#vÓ*vÔ+vÕ,vÖ-v×.vØ/vÙ0vÚ1vÛ"
	optimizer
,
Dserving_default"
signature_map
J
,0
-1
.2
/3
04
15"
trackable_list_wrapper
J
,0
-1
.2
/3
04
15"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object

Jtrace_0
Ktrace_1
Ltrace_2
Mtrace_32¬
/__inference_bidirectional_layer_call_fn_1217857
/__inference_bidirectional_layer_call_fn_1217874
/__inference_bidirectional_layer_call_fn_1217891
/__inference_bidirectional_layer_call_fn_1217908å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zJtrace_0zKtrace_1zLtrace_2zMtrace_3

Ntrace_0
Otrace_1
Ptrace_2
Qtrace_32
J__inference_bidirectional_layer_call_and_return_conditional_losses_1218196
J__inference_bidirectional_layer_call_and_return_conditional_losses_1218484
J__inference_bidirectional_layer_call_and_return_conditional_losses_1218772
J__inference_bidirectional_layer_call_and_return_conditional_losses_1219060å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zNtrace_0zOtrace_1zPtrace_2zQtrace_3
Ú
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses
X_random_generator
Ycell
Z
state_spec"
_tf_keras_rnn_layer
Ú
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
a_random_generator
bcell
c
state_spec"
_tf_keras_rnn_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
í
itrace_02Ð
)__inference_flatten_layer_call_fn_1219065¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zitrace_0

jtrace_02ë
D__inference_flatten_layer_call_and_return_conditional_losses_1219071¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zjtrace_0
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
ë
ptrace_02Î
'__inference_dense_layer_call_fn_1219080¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zptrace_0

qtrace_02é
B__inference_dense_layer_call_and_return_conditional_losses_1219091¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zqtrace_0
:@2dense/kernel
:2
dense/bias
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
í
wtrace_02Ð
)__inference_dense_1_layer_call_fn_1219100¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zwtrace_0

xtrace_02ë
D__inference_dense_1_layer_call_and_return_conditional_losses_1219110¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zxtrace_0
 :2dense_1/kernel
:2dense_1/bias
@:>	
2-bidirectional/forward_lstm/lstm_cell_1/kernel
J:H	 27bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel
::82+bidirectional/forward_lstm/lstm_cell_1/bias
A:?	
2.bidirectional/backward_lstm/lstm_cell_2/kernel
K:I	 28bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel
;:92,bidirectional/backward_lstm/lstm_cell_2/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
5
y0
z1
{2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_layer_call_fn_1216644bidirectional_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ýBú
,__inference_sequential_layer_call_fn_1217209inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ýBú
,__inference_sequential_layer_call_fn_1217234inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
,__inference_sequential_layer_call_fn_1217095bidirectional_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
G__inference_sequential_layer_call_and_return_conditional_losses_1217537inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
G__inference_sequential_layer_call_and_return_conditional_losses_1217840inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¥B¢
G__inference_sequential_layer_call_and_return_conditional_losses_1217123bidirectional_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¥B¢
G__inference_sequential_layer_call_and_return_conditional_losses_1217151bidirectional_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ØBÕ
%__inference_signature_wrapper_1217184bidirectional_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
¨B¥
/__inference_bidirectional_layer_call_fn_1217857inputs/0"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨B¥
/__inference_bidirectional_layer_call_fn_1217874inputs/0"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¦B£
/__inference_bidirectional_layer_call_fn_1217891inputs"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¦B£
/__inference_bidirectional_layer_call_fn_1217908inputs"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÃBÀ
J__inference_bidirectional_layer_call_and_return_conditional_losses_1218196inputs/0"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÃBÀ
J__inference_bidirectional_layer_call_and_return_conditional_losses_1218484inputs/0"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÁB¾
J__inference_bidirectional_layer_call_and_return_conditional_losses_1218772inputs"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÁB¾
J__inference_bidirectional_layer_call_and_return_conditional_losses_1219060inputs"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
5
,0
-1
.2"
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
 "
trackable_list_wrapper
»

|states
}non_trainable_variables

~layers
metrics
 layer_regularization_losses
layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object

trace_0
trace_1
trace_2
trace_32
.__inference_forward_lstm_layer_call_fn_1219121
.__inference_forward_lstm_layer_call_fn_1219132
.__inference_forward_lstm_layer_call_fn_1219143
.__inference_forward_lstm_layer_call_fn_1219154Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
ö
trace_0
trace_1
trace_2
trace_32
I__inference_forward_lstm_layer_call_and_return_conditional_losses_1219297
I__inference_forward_lstm_layer_call_and_return_conditional_losses_1219440
I__inference_forward_lstm_layer_call_and_return_conditional_losses_1219583
I__inference_forward_lstm_layer_call_and_return_conditional_losses_1219726Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
"
_generic_user_object

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator

state_size

,kernel
-recurrent_kernel
.bias"
_tf_keras_layer
 "
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
 "
trackable_list_wrapper
¿
states
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object

trace_0
trace_1
trace_2
trace_32
/__inference_backward_lstm_layer_call_fn_1219737
/__inference_backward_lstm_layer_call_fn_1219748
/__inference_backward_lstm_layer_call_fn_1219759
/__inference_backward_lstm_layer_call_fn_1219770Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
ú
trace_0
trace_1
trace_2
trace_32
J__inference_backward_lstm_layer_call_and_return_conditional_losses_1219915
J__inference_backward_lstm_layer_call_and_return_conditional_losses_1220060
J__inference_backward_lstm_layer_call_and_return_conditional_losses_1220205
J__inference_backward_lstm_layer_call_and_return_conditional_losses_1220350Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
"
_generic_user_object

 	variables
¡trainable_variables
¢regularization_losses
£	keras_api
¤__call__
+¥&call_and_return_all_conditional_losses
¦_random_generator
§
state_size

/kernel
0recurrent_kernel
1bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÝBÚ
)__inference_flatten_layer_call_fn_1219065inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_flatten_layer_call_and_return_conditional_losses_1219071inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÛBØ
'__inference_dense_layer_call_fn_1219080inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
öBó
B__inference_dense_layer_call_and_return_conditional_losses_1219091inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÝBÚ
)__inference_dense_1_layer_call_fn_1219100inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_dense_1_layer_call_and_return_conditional_losses_1219110inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
R
¨	variables
©	keras_api

ªtotal

«count"
_tf_keras_metric
c
¬	variables
­	keras_api

®total

¯count
°
_fn_kwargs"
_tf_keras_metric
c
±	variables
²	keras_api

³total

´count
µ
_fn_kwargs"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
.__inference_forward_lstm_layer_call_fn_1219121inputs/0"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
.__inference_forward_lstm_layer_call_fn_1219132inputs/0"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
.__inference_forward_lstm_layer_call_fn_1219143inputs"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
.__inference_forward_lstm_layer_call_fn_1219154inputs"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
±B®
I__inference_forward_lstm_layer_call_and_return_conditional_losses_1219297inputs/0"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
±B®
I__inference_forward_lstm_layer_call_and_return_conditional_losses_1219440inputs/0"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¯B¬
I__inference_forward_lstm_layer_call_and_return_conditional_losses_1219583inputs"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¯B¬
I__inference_forward_lstm_layer_call_and_return_conditional_losses_1219726inputs"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
5
,0
-1
.2"
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¶non_trainable_variables
·layers
¸metrics
 ¹layer_regularization_losses
ºlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ù
»trace_0
¼trace_12
-__inference_lstm_cell_1_layer_call_fn_1220367
-__inference_lstm_cell_1_layer_call_fn_1220384½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z»trace_0z¼trace_1

½trace_0
¾trace_12Ô
H__inference_lstm_cell_1_layer_call_and_return_conditional_losses_1220416
H__inference_lstm_cell_1_layer_call_and_return_conditional_losses_1220448½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z½trace_0z¾trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
b0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
/__inference_backward_lstm_layer_call_fn_1219737inputs/0"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
/__inference_backward_lstm_layer_call_fn_1219748inputs/0"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
/__inference_backward_lstm_layer_call_fn_1219759inputs"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
/__inference_backward_lstm_layer_call_fn_1219770inputs"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
²B¯
J__inference_backward_lstm_layer_call_and_return_conditional_losses_1219915inputs/0"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
²B¯
J__inference_backward_lstm_layer_call_and_return_conditional_losses_1220060inputs/0"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
°B­
J__inference_backward_lstm_layer_call_and_return_conditional_losses_1220205inputs"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
°B­
J__inference_backward_lstm_layer_call_and_return_conditional_losses_1220350inputs"Ô
Ë²Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
5
/0
01
12"
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
 	variables
¡trainable_variables
¢regularization_losses
¤__call__
+¥&call_and_return_all_conditional_losses
'¥"call_and_return_conditional_losses"
_generic_user_object
Ù
Ätrace_0
Åtrace_12
-__inference_lstm_cell_2_layer_call_fn_1220465
-__inference_lstm_cell_2_layer_call_fn_1220482½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÄtrace_0zÅtrace_1

Ætrace_0
Çtrace_12Ô
H__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1220514
H__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1220546½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÆtrace_0zÇtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
0
ª0
«1"
trackable_list_wrapper
.
¨	variables"
_generic_user_object
:  (2total
:  (2count
0
®0
¯1"
trackable_list_wrapper
.
¬	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
³0
´1"
trackable_list_wrapper
.
±	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
-__inference_lstm_cell_1_layer_call_fn_1220367inputsstates/0states/1"½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
-__inference_lstm_cell_1_layer_call_fn_1220384inputsstates/0states/1"½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
«B¨
H__inference_lstm_cell_1_layer_call_and_return_conditional_losses_1220416inputsstates/0states/1"½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
«B¨
H__inference_lstm_cell_1_layer_call_and_return_conditional_losses_1220448inputsstates/0states/1"½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
-__inference_lstm_cell_2_layer_call_fn_1220465inputsstates/0states/1"½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
-__inference_lstm_cell_2_layer_call_fn_1220482inputsstates/0states/1"½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
«B¨
H__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1220514inputsstates/0states/1"½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
«B¨
H__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1220546inputsstates/0states/1"½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
#:!@2Adam/dense/kernel/m
:2Adam/dense/bias/m
%:#2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
E:C	
24Adam/bidirectional/forward_lstm/lstm_cell_1/kernel/m
O:M	 2>Adam/bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel/m
?:=22Adam/bidirectional/forward_lstm/lstm_cell_1/bias/m
F:D	
25Adam/bidirectional/backward_lstm/lstm_cell_2/kernel/m
P:N	 2?Adam/bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel/m
@:>23Adam/bidirectional/backward_lstm/lstm_cell_2/bias/m
#:!@2Adam/dense/kernel/v
:2Adam/dense/bias/v
%:#2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
E:C	
24Adam/bidirectional/forward_lstm/lstm_cell_1/kernel/v
O:M	 2>Adam/bidirectional/forward_lstm/lstm_cell_1/recurrent_kernel/v
?:=22Adam/bidirectional/forward_lstm/lstm_cell_1/bias/v
F:D	
25Adam/bidirectional/backward_lstm/lstm_cell_2/kernel/v
P:N	 2?Adam/bidirectional/backward_lstm/lstm_cell_2/recurrent_kernel/v
@:>23Adam/bidirectional/backward_lstm/lstm_cell_2/bias/v¨
"__inference__wrapped_model_1214867
,-./01"#*+@¢=
6¢3
1.
bidirectional_inputÿÿÿÿÿÿÿÿÿ

ª "1ª.
,
dense_1!
dense_1ÿÿÿÿÿÿÿÿÿÙ
J__inference_backward_lstm_layer_call_and_return_conditional_losses_1219915/01O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ


 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 Ù
J__inference_backward_lstm_layer_call_and_return_conditional_losses_1220060/01O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ


 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 Û
J__inference_backward_lstm_layer_call_and_return_conditional_losses_1220205/01Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 Û
J__inference_backward_lstm_layer_call_and_return_conditional_losses_1220350/01Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 °
/__inference_backward_lstm_layer_call_fn_1219737}/01O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ


 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ °
/__inference_backward_lstm_layer_call_fn_1219748}/01O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ


 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ²
/__inference_backward_lstm_layer_call_fn_1219759/01Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ²
/__inference_backward_lstm_layer_call_fn_1219770/01Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ é
J__inference_bidirectional_layer_call_and_return_conditional_losses_1218196,-./01\¢Y
R¢O
=:
85
inputs/0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 

 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 é
J__inference_bidirectional_layer_call_and_return_conditional_losses_1218484,-./01\¢Y
R¢O
=:
85
inputs/0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 

 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 Æ
J__inference_bidirectional_layer_call_and_return_conditional_losses_1218772x,-./01C¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ

p 

 

 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 Æ
J__inference_bidirectional_layer_call_and_return_conditional_losses_1219060x,-./01C¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ

p

 

 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 Á
/__inference_bidirectional_layer_call_fn_1217857,-./01\¢Y
R¢O
=:
85
inputs/0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 

 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Á
/__inference_bidirectional_layer_call_fn_1217874,-./01\¢Y
R¢O
=:
85
inputs/0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 

 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
/__inference_bidirectional_layer_call_fn_1217891k,-./01C¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ

p 

 

 

 
ª "ÿÿÿÿÿÿÿÿÿ@
/__inference_bidirectional_layer_call_fn_1217908k,-./01C¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ

p

 

 

 
ª "ÿÿÿÿÿÿÿÿÿ@¤
D__inference_dense_1_layer_call_and_return_conditional_losses_1219110\*+/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_1_layer_call_fn_1219100O*+/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¢
B__inference_dense_layer_call_and_return_conditional_losses_1219091\"#/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
'__inference_dense_layer_call_fn_1219080O"#/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ¤
D__inference_flatten_layer_call_and_return_conditional_losses_1219071\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 |
)__inference_flatten_layer_call_fn_1219065O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ@Ø
I__inference_forward_lstm_layer_call_and_return_conditional_losses_1219297,-.O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ


 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 Ø
I__inference_forward_lstm_layer_call_and_return_conditional_losses_1219440,-.O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ


 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 Ú
I__inference_forward_lstm_layer_call_and_return_conditional_losses_1219583,-.Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 Ú
I__inference_forward_lstm_layer_call_and_return_conditional_losses_1219726,-.Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 ¯
.__inference_forward_lstm_layer_call_fn_1219121},-.O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ


 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ¯
.__inference_forward_lstm_layer_call_fn_1219132},-.O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ


 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ±
.__inference_forward_lstm_layer_call_fn_1219143,-.Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ±
.__inference_forward_lstm_layer_call_fn_1219154,-.Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Ê
H__inference_lstm_cell_1_layer_call_and_return_conditional_losses_1220416ý,-.¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ

K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ 
"
states/1ÿÿÿÿÿÿÿÿÿ 
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ 
EB

0/1/0ÿÿÿÿÿÿÿÿÿ 

0/1/1ÿÿÿÿÿÿÿÿÿ 
 Ê
H__inference_lstm_cell_1_layer_call_and_return_conditional_losses_1220448ý,-.¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ

K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ 
"
states/1ÿÿÿÿÿÿÿÿÿ 
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ 
EB

0/1/0ÿÿÿÿÿÿÿÿÿ 

0/1/1ÿÿÿÿÿÿÿÿÿ 
 
-__inference_lstm_cell_1_layer_call_fn_1220367í,-.¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ

K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ 
"
states/1ÿÿÿÿÿÿÿÿÿ 
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ 
A>

1/0ÿÿÿÿÿÿÿÿÿ 

1/1ÿÿÿÿÿÿÿÿÿ 
-__inference_lstm_cell_1_layer_call_fn_1220384í,-.¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ

K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ 
"
states/1ÿÿÿÿÿÿÿÿÿ 
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ 
A>

1/0ÿÿÿÿÿÿÿÿÿ 

1/1ÿÿÿÿÿÿÿÿÿ Ê
H__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1220514ý/01¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ

K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ 
"
states/1ÿÿÿÿÿÿÿÿÿ 
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ 
EB

0/1/0ÿÿÿÿÿÿÿÿÿ 

0/1/1ÿÿÿÿÿÿÿÿÿ 
 Ê
H__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1220546ý/01¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ

K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ 
"
states/1ÿÿÿÿÿÿÿÿÿ 
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ 
EB

0/1/0ÿÿÿÿÿÿÿÿÿ 

0/1/1ÿÿÿÿÿÿÿÿÿ 
 
-__inference_lstm_cell_2_layer_call_fn_1220465í/01¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ

K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ 
"
states/1ÿÿÿÿÿÿÿÿÿ 
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ 
A>

1/0ÿÿÿÿÿÿÿÿÿ 

1/1ÿÿÿÿÿÿÿÿÿ 
-__inference_lstm_cell_2_layer_call_fn_1220482í/01¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ

K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ 
"
states/1ÿÿÿÿÿÿÿÿÿ 
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ 
A>

1/0ÿÿÿÿÿÿÿÿÿ 

1/1ÿÿÿÿÿÿÿÿÿ È
G__inference_sequential_layer_call_and_return_conditional_losses_1217123}
,-./01"#*+H¢E
>¢;
1.
bidirectional_inputÿÿÿÿÿÿÿÿÿ

p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 È
G__inference_sequential_layer_call_and_return_conditional_losses_1217151}
,-./01"#*+H¢E
>¢;
1.
bidirectional_inputÿÿÿÿÿÿÿÿÿ

p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
G__inference_sequential_layer_call_and_return_conditional_losses_1217537p
,-./01"#*+;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
G__inference_sequential_layer_call_and_return_conditional_losses_1217840p
,-./01"#*+;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
  
,__inference_sequential_layer_call_fn_1216644p
,-./01"#*+H¢E
>¢;
1.
bidirectional_inputÿÿÿÿÿÿÿÿÿ

p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
,__inference_sequential_layer_call_fn_1217095p
,-./01"#*+H¢E
>¢;
1.
bidirectional_inputÿÿÿÿÿÿÿÿÿ

p

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_layer_call_fn_1217209c
,-./01"#*+;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_layer_call_fn_1217234c
,-./01"#*+;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p

 
ª "ÿÿÿÿÿÿÿÿÿÂ
%__inference_signature_wrapper_1217184
,-./01"#*+W¢T
¢ 
MªJ
H
bidirectional_input1.
bidirectional_inputÿÿÿÿÿÿÿÿÿ
"1ª.
,
dense_1!
dense_1ÿÿÿÿÿÿÿÿÿ