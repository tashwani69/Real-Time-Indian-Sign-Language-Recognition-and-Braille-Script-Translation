▀Р
М▌
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68╖Ъ
Д
conv2d_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_44/kernel
}
$conv2d_44/kernel/Read/ReadVariableOpReadVariableOpconv2d_44/kernel*&
_output_shapes
: *
dtype0
t
conv2d_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_44/bias
m
"conv2d_44/bias/Read/ReadVariableOpReadVariableOpconv2d_44/bias*
_output_shapes
: *
dtype0
Д
conv2d_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_45/kernel
}
$conv2d_45/kernel/Read/ReadVariableOpReadVariableOpconv2d_45/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_45/bias
m
"conv2d_45/bias/Read/ReadVariableOpReadVariableOpconv2d_45/bias*
_output_shapes
:@*
dtype0
Е
conv2d_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*!
shared_nameconv2d_46/kernel
~
$conv2d_46/kernel/Read/ReadVariableOpReadVariableOpconv2d_46/kernel*'
_output_shapes
:@А*
dtype0
u
conv2d_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_46/bias
n
"conv2d_46/bias/Read/ReadVariableOpReadVariableOpconv2d_46/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_47/kernel

$conv2d_47/kernel/Read/ReadVariableOpReadVariableOpconv2d_47/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_47/bias
n
"conv2d_47/bias/Read/ReadVariableOpReadVariableOpconv2d_47/bias*
_output_shapes	
:А*
dtype0
|
dense_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА* 
shared_namedense_33/kernel
u
#dense_33/kernel/Read/ReadVariableOpReadVariableOpdense_33/kernel* 
_output_shapes
:
АА*
dtype0
s
dense_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_33/bias
l
!dense_33/bias/Read/ReadVariableOpReadVariableOpdense_33/bias*
_output_shapes	
:А*
dtype0
{
dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@* 
shared_namedense_34/kernel
t
#dense_34/kernel/Read/ReadVariableOpReadVariableOpdense_34/kernel*
_output_shapes
:	А@*
dtype0
r
dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_34/bias
k
!dense_34/bias/Read/ReadVariableOpReadVariableOpdense_34/bias*
_output_shapes
:@*
dtype0
z
dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_35/kernel
s
#dense_35/kernel/Read/ReadVariableOpReadVariableOpdense_35/kernel*
_output_shapes

:@*
dtype0
r
dense_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_35/bias
k
!dense_35/bias/Read/ReadVariableOpReadVariableOpdense_35/bias*
_output_shapes
:*
dtype0
\
iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameiter
U
iter/Read/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
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
И
conv2d_44/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameconv2d_44/kernel/m
Б
&conv2d_44/kernel/m/Read/ReadVariableOpReadVariableOpconv2d_44/kernel/m*&
_output_shapes
: *
dtype0
x
conv2d_44/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_44/bias/m
q
$conv2d_44/bias/m/Read/ReadVariableOpReadVariableOpconv2d_44/bias/m*
_output_shapes
: *
dtype0
И
conv2d_45/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*#
shared_nameconv2d_45/kernel/m
Б
&conv2d_45/kernel/m/Read/ReadVariableOpReadVariableOpconv2d_45/kernel/m*&
_output_shapes
: @*
dtype0
x
conv2d_45/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_45/bias/m
q
$conv2d_45/bias/m/Read/ReadVariableOpReadVariableOpconv2d_45/bias/m*
_output_shapes
:@*
dtype0
Й
conv2d_46/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*#
shared_nameconv2d_46/kernel/m
В
&conv2d_46/kernel/m/Read/ReadVariableOpReadVariableOpconv2d_46/kernel/m*'
_output_shapes
:@А*
dtype0
y
conv2d_46/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*!
shared_nameconv2d_46/bias/m
r
$conv2d_46/bias/m/Read/ReadVariableOpReadVariableOpconv2d_46/bias/m*
_output_shapes	
:А*
dtype0
К
conv2d_47/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*#
shared_nameconv2d_47/kernel/m
Г
&conv2d_47/kernel/m/Read/ReadVariableOpReadVariableOpconv2d_47/kernel/m*(
_output_shapes
:АА*
dtype0
y
conv2d_47/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*!
shared_nameconv2d_47/bias/m
r
$conv2d_47/bias/m/Read/ReadVariableOpReadVariableOpconv2d_47/bias/m*
_output_shapes	
:А*
dtype0
А
dense_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*"
shared_namedense_33/kernel/m
y
%dense_33/kernel/m/Read/ReadVariableOpReadVariableOpdense_33/kernel/m* 
_output_shapes
:
АА*
dtype0
w
dense_33/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А* 
shared_namedense_33/bias/m
p
#dense_33/bias/m/Read/ReadVariableOpReadVariableOpdense_33/bias/m*
_output_shapes	
:А*
dtype0

dense_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*"
shared_namedense_34/kernel/m
x
%dense_34/kernel/m/Read/ReadVariableOpReadVariableOpdense_34/kernel/m*
_output_shapes
:	А@*
dtype0
v
dense_34/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_namedense_34/bias/m
o
#dense_34/bias/m/Read/ReadVariableOpReadVariableOpdense_34/bias/m*
_output_shapes
:@*
dtype0
~
dense_35/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*"
shared_namedense_35/kernel/m
w
%dense_35/kernel/m/Read/ReadVariableOpReadVariableOpdense_35/kernel/m*
_output_shapes

:@*
dtype0
v
dense_35/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_35/bias/m
o
#dense_35/bias/m/Read/ReadVariableOpReadVariableOpdense_35/bias/m*
_output_shapes
:*
dtype0
И
conv2d_44/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameconv2d_44/kernel/v
Б
&conv2d_44/kernel/v/Read/ReadVariableOpReadVariableOpconv2d_44/kernel/v*&
_output_shapes
: *
dtype0
x
conv2d_44/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_44/bias/v
q
$conv2d_44/bias/v/Read/ReadVariableOpReadVariableOpconv2d_44/bias/v*
_output_shapes
: *
dtype0
И
conv2d_45/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*#
shared_nameconv2d_45/kernel/v
Б
&conv2d_45/kernel/v/Read/ReadVariableOpReadVariableOpconv2d_45/kernel/v*&
_output_shapes
: @*
dtype0
x
conv2d_45/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_45/bias/v
q
$conv2d_45/bias/v/Read/ReadVariableOpReadVariableOpconv2d_45/bias/v*
_output_shapes
:@*
dtype0
Й
conv2d_46/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*#
shared_nameconv2d_46/kernel/v
В
&conv2d_46/kernel/v/Read/ReadVariableOpReadVariableOpconv2d_46/kernel/v*'
_output_shapes
:@А*
dtype0
y
conv2d_46/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*!
shared_nameconv2d_46/bias/v
r
$conv2d_46/bias/v/Read/ReadVariableOpReadVariableOpconv2d_46/bias/v*
_output_shapes	
:А*
dtype0
К
conv2d_47/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*#
shared_nameconv2d_47/kernel/v
Г
&conv2d_47/kernel/v/Read/ReadVariableOpReadVariableOpconv2d_47/kernel/v*(
_output_shapes
:АА*
dtype0
y
conv2d_47/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*!
shared_nameconv2d_47/bias/v
r
$conv2d_47/bias/v/Read/ReadVariableOpReadVariableOpconv2d_47/bias/v*
_output_shapes	
:А*
dtype0
А
dense_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*"
shared_namedense_33/kernel/v
y
%dense_33/kernel/v/Read/ReadVariableOpReadVariableOpdense_33/kernel/v* 
_output_shapes
:
АА*
dtype0
w
dense_33/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А* 
shared_namedense_33/bias/v
p
#dense_33/bias/v/Read/ReadVariableOpReadVariableOpdense_33/bias/v*
_output_shapes	
:А*
dtype0

dense_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*"
shared_namedense_34/kernel/v
x
%dense_34/kernel/v/Read/ReadVariableOpReadVariableOpdense_34/kernel/v*
_output_shapes
:	А@*
dtype0
v
dense_34/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_namedense_34/bias/v
o
#dense_34/bias/v/Read/ReadVariableOpReadVariableOpdense_34/bias/v*
_output_shapes
:@*
dtype0
~
dense_35/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*"
shared_namedense_35/kernel/v
w
%dense_35/kernel/v/Read/ReadVariableOpReadVariableOpdense_35/kernel/v*
_output_shapes

:@*
dtype0
v
dense_35/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_35/bias/v
o
#dense_35/bias/v/Read/ReadVariableOpReadVariableOpdense_35/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
▌m
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Шm
valueОmBЛm BДm
о
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer-11
layer_with_weights-6
layer-12
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
ж

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
О
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses* 
ж

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses*
О
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses* 
ж

3kernel
4bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses*
ж

;kernel
<bias
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses*
О
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses* 
О
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses* 
ж

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses*
е
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[_random_generator
\__call__
*]&call_and_return_all_conditional_losses* 
ж

^kernel
_bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses*
е
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j_random_generator
k__call__
*l&call_and_return_all_conditional_losses* 
ж

mkernel
nbias
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses*
▄
uiter

vbeta_1

wbeta_2
	xdecay
ylearning_ratem╠m═%m╬&m╧3m╨4m╤;m╥<m╙Om╘Pm╒^m╓_m╫mm╪nm┘v┌v█%v▄&v▌3v▐4v▀;vр<vсOvтPvу^vф_vхmvцnvч*
j
0
1
%2
&3
34
45
;6
<7
O8
P9
^10
_11
m12
n13*
j
0
1
%2
&3
34
45
;6
<7
O8
P9
^10
_11
m12
n13*
* 
░
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

serving_default* 
`Z
VARIABLE_VALUEconv2d_44/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_44/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
Ш
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_45/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_45/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

%0
&1*

%0
&1*
* 
Ш
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_46/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_46/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

30
41*

30
41*
* 
Ш
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_47/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_47/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

;0
<1*

;0
<1*
* 
Ш
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ц
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_33/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_33/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

O0
P1*

O0
P1*
* 
Ш
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_34/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_34/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

^0
_1*

^0
_1*
* 
Ш
▓non_trainable_variables
│layers
┤metrics
 ╡layer_regularization_losses
╢layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
╖non_trainable_variables
╕layers
╣metrics
 ║layer_regularization_losses
╗layer_metrics
f	variables
gtrainable_variables
hregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_35/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_35/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

m0
n1*

m0
n1*
* 
Ш
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses*
* 
* 
GA
VARIABLE_VALUEiter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
b
0
1
2
3
4
5
6
7
	8

9
10
11
12*

┴0
┬1*
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
* 
* 
<

├total

─count
┼	variables
╞	keras_api*
M

╟total

╚count
╔
_fn_kwargs
╩	variables
╦	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

├0
─1*

┼	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

╟0
╚1*

╩	variables*
~x
VARIABLE_VALUEconv2d_44/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEconv2d_44/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEconv2d_45/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEconv2d_45/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEconv2d_46/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEconv2d_46/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEconv2d_47/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEconv2d_47/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEdense_33/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEdense_33/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEdense_34/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEdense_34/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEdense_35/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEdense_35/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEconv2d_44/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEconv2d_44/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEconv2d_45/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEconv2d_45/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEconv2d_46/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEconv2d_46/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEconv2d_47/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEconv2d_47/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEdense_33/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEdense_33/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEdense_34/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEdense_34/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEdense_35/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEdense_35/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Т
serving_default_conv2d_44_inputPlaceholder*/
_output_shapes
:         **
dtype0*$
shape:         *
╔
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_44_inputconv2d_44/kernelconv2d_44/biasconv2d_45/kernelconv2d_45/biasconv2d_46/kernelconv2d_46/biasconv2d_47/kernelconv2d_47/biasdense_33/kerneldense_33/biasdense_34/kerneldense_34/biasdense_35/kerneldense_35/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

   D8В *-
f(R&
$__inference_signature_wrapper_303146
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
С
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_44/kernel/Read/ReadVariableOp"conv2d_44/bias/Read/ReadVariableOp$conv2d_45/kernel/Read/ReadVariableOp"conv2d_45/bias/Read/ReadVariableOp$conv2d_46/kernel/Read/ReadVariableOp"conv2d_46/bias/Read/ReadVariableOp$conv2d_47/kernel/Read/ReadVariableOp"conv2d_47/bias/Read/ReadVariableOp#dense_33/kernel/Read/ReadVariableOp!dense_33/bias/Read/ReadVariableOp#dense_34/kernel/Read/ReadVariableOp!dense_34/bias/Read/ReadVariableOp#dense_35/kernel/Read/ReadVariableOp!dense_35/bias/Read/ReadVariableOpiter/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp&conv2d_44/kernel/m/Read/ReadVariableOp$conv2d_44/bias/m/Read/ReadVariableOp&conv2d_45/kernel/m/Read/ReadVariableOp$conv2d_45/bias/m/Read/ReadVariableOp&conv2d_46/kernel/m/Read/ReadVariableOp$conv2d_46/bias/m/Read/ReadVariableOp&conv2d_47/kernel/m/Read/ReadVariableOp$conv2d_47/bias/m/Read/ReadVariableOp%dense_33/kernel/m/Read/ReadVariableOp#dense_33/bias/m/Read/ReadVariableOp%dense_34/kernel/m/Read/ReadVariableOp#dense_34/bias/m/Read/ReadVariableOp%dense_35/kernel/m/Read/ReadVariableOp#dense_35/bias/m/Read/ReadVariableOp&conv2d_44/kernel/v/Read/ReadVariableOp$conv2d_44/bias/v/Read/ReadVariableOp&conv2d_45/kernel/v/Read/ReadVariableOp$conv2d_45/bias/v/Read/ReadVariableOp&conv2d_46/kernel/v/Read/ReadVariableOp$conv2d_46/bias/v/Read/ReadVariableOp&conv2d_47/kernel/v/Read/ReadVariableOp$conv2d_47/bias/v/Read/ReadVariableOp%dense_33/kernel/v/Read/ReadVariableOp#dense_33/bias/v/Read/ReadVariableOp%dense_34/kernel/v/Read/ReadVariableOp#dense_34/bias/v/Read/ReadVariableOp%dense_35/kernel/v/Read/ReadVariableOp#dense_35/bias/v/Read/ReadVariableOpConst*@
Tin9
725	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *(
f#R!
__inference__traced_save_303557
Р	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_44/kernelconv2d_44/biasconv2d_45/kernelconv2d_45/biasconv2d_46/kernelconv2d_46/biasconv2d_47/kernelconv2d_47/biasdense_33/kerneldense_33/biasdense_34/kerneldense_34/biasdense_35/kerneldense_35/biasiterbeta_1beta_2decaylearning_ratetotalcounttotal_1count_1conv2d_44/kernel/mconv2d_44/bias/mconv2d_45/kernel/mconv2d_45/bias/mconv2d_46/kernel/mconv2d_46/bias/mconv2d_47/kernel/mconv2d_47/bias/mdense_33/kernel/mdense_33/bias/mdense_34/kernel/mdense_34/bias/mdense_35/kernel/mdense_35/bias/mconv2d_44/kernel/vconv2d_44/bias/vconv2d_45/kernel/vconv2d_45/bias/vconv2d_46/kernel/vconv2d_46/bias/vconv2d_47/kernel/vconv2d_47/bias/vdense_33/kernel/vdense_33/bias/vdense_34/kernel/vdense_34/bias/vdense_35/kernel/vdense_35/bias/v*?
Tin8
624*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *+
f&R$
"__inference__traced_restore_303720кн	
Ф
h
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_303176

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_302363

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_303206

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ў
Я
*__inference_conv2d_44_layer_call_fn_303155

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_44_layer_call_and_return_conditional_losses_302384w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         * `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         *: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         *
 
_user_specified_nameinputs
┼
M
1__inference_max_pooling2d_35_layer_call_fn_303251

inputs
identityх
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *U
fPRN
L__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_302363Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╨
Ч
)__inference_dense_34_layer_call_fn_303323

inputs
unknown:	А@
	unknown_0:@
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_302487o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_303256

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Н
А
E__inference_conv2d_46_layer_call_and_return_conditional_losses_303226

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         	@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         	@
 
_user_specified_nameinputs
┘
d
F__inference_dropout_23_layer_call_and_return_conditional_losses_303349

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         @[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
В
d
+__inference_dropout_22_layer_call_fn_303297

inputs
identityИвStatefulPartitionedCall═
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_302612p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
а

ї
D__inference_dense_35_layer_call_and_return_conditional_losses_303381

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
▌
d
F__inference_dropout_22_layer_call_and_return_conditional_losses_303302

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ВX
Ы
I__inference_sequential_11_layer_call_and_return_conditional_losses_303111

inputsB
(conv2d_44_conv2d_readvariableop_resource: 7
)conv2d_44_biasadd_readvariableop_resource: B
(conv2d_45_conv2d_readvariableop_resource: @7
)conv2d_45_biasadd_readvariableop_resource:@C
(conv2d_46_conv2d_readvariableop_resource:@А8
)conv2d_46_biasadd_readvariableop_resource:	АD
(conv2d_47_conv2d_readvariableop_resource:АА8
)conv2d_47_biasadd_readvariableop_resource:	А;
'dense_33_matmul_readvariableop_resource:
АА7
(dense_33_biasadd_readvariableop_resource:	А:
'dense_34_matmul_readvariableop_resource:	А@6
(dense_34_biasadd_readvariableop_resource:@9
'dense_35_matmul_readvariableop_resource:@6
(dense_35_biasadd_readvariableop_resource:
identityИв conv2d_44/BiasAdd/ReadVariableOpвconv2d_44/Conv2D/ReadVariableOpв conv2d_45/BiasAdd/ReadVariableOpвconv2d_45/Conv2D/ReadVariableOpв conv2d_46/BiasAdd/ReadVariableOpвconv2d_46/Conv2D/ReadVariableOpв conv2d_47/BiasAdd/ReadVariableOpвconv2d_47/Conv2D/ReadVariableOpвdense_33/BiasAdd/ReadVariableOpвdense_33/MatMul/ReadVariableOpвdense_34/BiasAdd/ReadVariableOpвdense_34/MatMul/ReadVariableOpвdense_35/BiasAdd/ReadVariableOpвdense_35/MatMul/ReadVariableOpР
conv2d_44/Conv2D/ReadVariableOpReadVariableOp(conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0н
conv2d_44/Conv2DConv2Dinputs'conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         * *
paddingSAME*
strides
Ж
 conv2d_44/BiasAdd/ReadVariableOpReadVariableOp)conv2d_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ы
conv2d_44/BiasAddBiasAddconv2d_44/Conv2D:output:0(conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         * l
conv2d_44/ReluReluconv2d_44/BiasAdd:output:0*
T0*/
_output_shapes
:         * о
max_pooling2d_33/MaxPoolMaxPoolconv2d_44/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
Р
conv2d_45/Conv2D/ReadVariableOpReadVariableOp(conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╔
conv2d_45/Conv2DConv2D!max_pooling2d_33/MaxPool:output:0'conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
Ж
 conv2d_45/BiasAdd/ReadVariableOpReadVariableOp)conv2d_45_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_45/BiasAddBiasAddconv2d_45/Conv2D:output:0(conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @l
conv2d_45/ReluReluconv2d_45/BiasAdd:output:0*
T0*/
_output_shapes
:         @о
max_pooling2d_34/MaxPoolMaxPoolconv2d_45/Relu:activations:0*/
_output_shapes
:         	@*
ksize
*
paddingVALID*
strides
С
conv2d_46/Conv2D/ReadVariableOpReadVariableOp(conv2d_46_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╩
conv2d_46/Conv2DConv2D!max_pooling2d_34/MaxPool:output:0'conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
З
 conv2d_46/BiasAdd/ReadVariableOpReadVariableOp)conv2d_46_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_46/BiasAddBiasAddconv2d_46/Conv2D:output:0(conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аm
conv2d_46/ReluReluconv2d_46/BiasAdd:output:0*
T0*0
_output_shapes
:         АТ
conv2d_47/Conv2D/ReadVariableOpReadVariableOp(conv2d_47_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0┼
conv2d_47/Conv2DConv2Dconv2d_46/Relu:activations:0'conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
З
 conv2d_47/BiasAdd/ReadVariableOpReadVariableOp)conv2d_47_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_47/BiasAddBiasAddconv2d_47/Conv2D:output:0(conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аm
conv2d_47/ReluReluconv2d_47/BiasAdd:output:0*
T0*0
_output_shapes
:         Ап
max_pooling2d_35/MaxPoolMaxPoolconv2d_47/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
a
flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"       О
flatten_11/ReshapeReshape!max_pooling2d_35/MaxPool:output:0flatten_11/Const:output:0*
T0*(
_output_shapes
:         АИ
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0С
dense_33/MatMulMatMulflatten_11/Reshape:output:0&dense_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аc
dense_33/ReluReludense_33/BiasAdd:output:0*
T0*(
_output_shapes
:         А]
dropout_22/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Р
dropout_22/dropout/MulMuldense_33/Relu:activations:0!dropout_22/dropout/Const:output:0*
T0*(
_output_shapes
:         Аc
dropout_22/dropout/ShapeShapedense_33/Relu:activations:0*
T0*
_output_shapes
:г
/dropout_22/dropout/random_uniform/RandomUniformRandomUniform!dropout_22/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0f
!dropout_22/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╚
dropout_22/dropout/GreaterEqualGreaterEqual8dropout_22/dropout/random_uniform/RandomUniform:output:0*dropout_22/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АЖ
dropout_22/dropout/CastCast#dropout_22/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЛ
dropout_22/dropout/Mul_1Muldropout_22/dropout/Mul:z:0dropout_22/dropout/Cast:y:0*
T0*(
_output_shapes
:         АЗ
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0С
dense_34/MatMulMatMuldropout_22/dropout/Mul_1:z:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Д
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0С
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @b
dense_34/ReluReludense_34/BiasAdd:output:0*
T0*'
_output_shapes
:         @]
dropout_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?П
dropout_23/dropout/MulMuldense_34/Relu:activations:0!dropout_23/dropout/Const:output:0*
T0*'
_output_shapes
:         @c
dropout_23/dropout/ShapeShapedense_34/Relu:activations:0*
T0*
_output_shapes
:в
/dropout_23/dropout/random_uniform/RandomUniformRandomUniform!dropout_23/dropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0f
!dropout_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╟
dropout_23/dropout/GreaterEqualGreaterEqual8dropout_23/dropout/random_uniform/RandomUniform:output:0*dropout_23/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @Е
dropout_23/dropout/CastCast#dropout_23/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @К
dropout_23/dropout/Mul_1Muldropout_23/dropout/Mul:z:0dropout_23/dropout/Cast:y:0*
T0*'
_output_shapes
:         @Ж
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0С
dense_35/MatMulMatMuldropout_23/dropout/Mul_1:z:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_35/SoftmaxSoftmaxdense_35/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_35/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         г
NoOpNoOp!^conv2d_44/BiasAdd/ReadVariableOp ^conv2d_44/Conv2D/ReadVariableOp!^conv2d_45/BiasAdd/ReadVariableOp ^conv2d_45/Conv2D/ReadVariableOp!^conv2d_46/BiasAdd/ReadVariableOp ^conv2d_46/Conv2D/ReadVariableOp!^conv2d_47/BiasAdd/ReadVariableOp ^conv2d_47/Conv2D/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         *: : : : : : : : : : : : : : 2D
 conv2d_44/BiasAdd/ReadVariableOp conv2d_44/BiasAdd/ReadVariableOp2B
conv2d_44/Conv2D/ReadVariableOpconv2d_44/Conv2D/ReadVariableOp2D
 conv2d_45/BiasAdd/ReadVariableOp conv2d_45/BiasAdd/ReadVariableOp2B
conv2d_45/Conv2D/ReadVariableOpconv2d_45/Conv2D/ReadVariableOp2D
 conv2d_46/BiasAdd/ReadVariableOp conv2d_46/BiasAdd/ReadVariableOp2B
conv2d_46/Conv2D/ReadVariableOpconv2d_46/Conv2D/ReadVariableOp2D
 conv2d_47/BiasAdd/ReadVariableOp conv2d_47/BiasAdd/ReadVariableOp2B
conv2d_47/Conv2D/ReadVariableOpconv2d_47/Conv2D/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:W S
/
_output_shapes
:         *
 
_user_specified_nameinputs
з

°
D__inference_dense_33_layer_call_and_return_conditional_losses_302463

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
й
Ф
.__inference_sequential_11_layer_call_fn_302815
conv2d_44_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А@

unknown_10:@

unknown_11:@

unknown_12:
identityИвStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallconv2d_44_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

   D8В *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_302751o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         *: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         *
)
_user_specified_nameconv2d_44_input
└
G
+__inference_flatten_11_layer_call_fn_303261

inputs
identity╜
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *O
fJRH
F__inference_flatten_11_layer_call_and_return_conditional_losses_302450a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Д
■
E__inference_conv2d_44_layer_call_and_return_conditional_losses_302384

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         * *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         * X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         * i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         * w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         *: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         *
 
_user_specified_nameinputs
Е
■
E__inference_conv2d_45_layer_call_and_return_conditional_losses_303196

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
з

°
D__inference_dense_33_layer_call_and_return_conditional_losses_303287

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╩
b
F__inference_flatten_11_layer_call_and_return_conditional_losses_302450

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
░
G
+__inference_dropout_22_layer_call_fn_303292

inputs
identity╜
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_302474a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┼
M
1__inference_max_pooling2d_33_layer_call_fn_303171

inputs
identityх
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *U
fPRN
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_302339Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_302339

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ї	
e
F__inference_dropout_23_layer_call_and_return_conditional_losses_303361

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         @Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
═
Ц
)__inference_dense_35_layer_call_fn_303370

inputs
unknown:@
	unknown_0:
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_302511o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
С
Б
E__inference_conv2d_47_layer_call_and_return_conditional_losses_302437

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Я

Ў
D__inference_dense_34_layer_call_and_return_conditional_losses_303334

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╘
Щ
)__inference_dense_33_layer_call_fn_303276

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_302463p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┘
d
F__inference_dropout_23_layer_call_and_return_conditional_losses_302498

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         @[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╡8
р
I__inference_sequential_11_layer_call_and_return_conditional_losses_302518

inputs*
conv2d_44_302385: 
conv2d_44_302387: *
conv2d_45_302403: @
conv2d_45_302405:@+
conv2d_46_302421:@А
conv2d_46_302423:	А,
conv2d_47_302438:АА
conv2d_47_302440:	А#
dense_33_302464:
АА
dense_33_302466:	А"
dense_34_302488:	А@
dense_34_302490:@!
dense_35_302512:@
dense_35_302514:
identityИв!conv2d_44/StatefulPartitionedCallв!conv2d_45/StatefulPartitionedCallв!conv2d_46/StatefulPartitionedCallв!conv2d_47/StatefulPartitionedCallв dense_33/StatefulPartitionedCallв dense_34/StatefulPartitionedCallв dense_35/StatefulPartitionedCallЗ
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_44_302385conv2d_44_302387*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_44_layer_call_and_return_conditional_losses_302384 
 max_pooling2d_33/PartitionedCallPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *U
fPRN
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_302339к
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_45_302403conv2d_45_302405*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_302402 
 max_pooling2d_34/PartitionedCallPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         	@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *U
fPRN
L__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_302351л
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_46_302421conv2d_46_302423*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_46_layer_call_and_return_conditional_losses_302420м
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall*conv2d_46/StatefulPartitionedCall:output:0conv2d_47_302438conv2d_47_302440*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_47_layer_call_and_return_conditional_losses_302437А
 max_pooling2d_35/PartitionedCallPartitionedCall*conv2d_47/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *U
fPRN
L__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_302363ы
flatten_11/PartitionedCallPartitionedCall)max_pooling2d_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *O
fJRH
F__inference_flatten_11_layer_call_and_return_conditional_losses_302450Щ
 dense_33/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_33_302464dense_33_302466*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_302463ы
dropout_22/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_302474Ш
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#dropout_22/PartitionedCall:output:0dense_34_302488dense_34_302490*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_302487ъ
dropout_23/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_302498Ш
 dense_35/StatefulPartitionedCallStatefulPartitionedCall#dropout_23/PartitionedCall:output:0dense_35_302512dense_35_302514*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_302511x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┐
NoOpNoOp"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         *: : : : : : : : : : : : : : 2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall:W S
/
_output_shapes
:         *
 
_user_specified_nameinputs
Я

Ў
D__inference_dense_34_layer_call_and_return_conditional_losses_302487

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┼
M
1__inference_max_pooling2d_34_layer_call_fn_303201

inputs
identityх
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *U
fPRN
L__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_302351Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_302351

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
а

ї
D__inference_dense_35_layer_call_and_return_conditional_losses_302511

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
▓;
к
I__inference_sequential_11_layer_call_and_return_conditional_losses_302751

inputs*
conv2d_44_302709: 
conv2d_44_302711: *
conv2d_45_302715: @
conv2d_45_302717:@+
conv2d_46_302721:@А
conv2d_46_302723:	А,
conv2d_47_302726:АА
conv2d_47_302728:	А#
dense_33_302733:
АА
dense_33_302735:	А"
dense_34_302739:	А@
dense_34_302741:@!
dense_35_302745:@
dense_35_302747:
identityИв!conv2d_44/StatefulPartitionedCallв!conv2d_45/StatefulPartitionedCallв!conv2d_46/StatefulPartitionedCallв!conv2d_47/StatefulPartitionedCallв dense_33/StatefulPartitionedCallв dense_34/StatefulPartitionedCallв dense_35/StatefulPartitionedCallв"dropout_22/StatefulPartitionedCallв"dropout_23/StatefulPartitionedCallЗ
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_44_302709conv2d_44_302711*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_44_layer_call_and_return_conditional_losses_302384 
 max_pooling2d_33/PartitionedCallPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *U
fPRN
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_302339к
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_45_302715conv2d_45_302717*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_302402 
 max_pooling2d_34/PartitionedCallPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         	@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *U
fPRN
L__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_302351л
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_46_302721conv2d_46_302723*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_46_layer_call_and_return_conditional_losses_302420м
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall*conv2d_46/StatefulPartitionedCall:output:0conv2d_47_302726conv2d_47_302728*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_47_layer_call_and_return_conditional_losses_302437А
 max_pooling2d_35/PartitionedCallPartitionedCall*conv2d_47/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *U
fPRN
L__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_302363ы
flatten_11/PartitionedCallPartitionedCall)max_pooling2d_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *O
fJRH
F__inference_flatten_11_layer_call_and_return_conditional_losses_302450Щ
 dense_33/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_33_302733dense_33_302735*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_302463√
"dropout_22/StatefulPartitionedCallStatefulPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_302612а
 dense_34/StatefulPartitionedCallStatefulPartitionedCall+dropout_22/StatefulPartitionedCall:output:0dense_34_302739dense_34_302741*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_302487Я
"dropout_23/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0#^dropout_22/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_302579а
 dense_35/StatefulPartitionedCallStatefulPartitionedCall+dropout_23/StatefulPartitionedCall:output:0dense_35_302745dense_35_302747*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_302511x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Й
NoOpNoOp"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         *: : : : : : : : : : : : : : 2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2H
"dropout_22/StatefulPartitionedCall"dropout_22/StatefulPartitionedCall2H
"dropout_23/StatefulPartitionedCall"dropout_23/StatefulPartitionedCall:W S
/
_output_shapes
:         *
 
_user_specified_nameinputs
Д
■
E__inference_conv2d_44_layer_call_and_return_conditional_losses_303166

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         * *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         * X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         * i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         * w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         *: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         *
 
_user_specified_nameinputs
╨8
щ
I__inference_sequential_11_layer_call_and_return_conditional_losses_302860
conv2d_44_input*
conv2d_44_302818: 
conv2d_44_302820: *
conv2d_45_302824: @
conv2d_45_302826:@+
conv2d_46_302830:@А
conv2d_46_302832:	А,
conv2d_47_302835:АА
conv2d_47_302837:	А#
dense_33_302842:
АА
dense_33_302844:	А"
dense_34_302848:	А@
dense_34_302850:@!
dense_35_302854:@
dense_35_302856:
identityИв!conv2d_44/StatefulPartitionedCallв!conv2d_45/StatefulPartitionedCallв!conv2d_46/StatefulPartitionedCallв!conv2d_47/StatefulPartitionedCallв dense_33/StatefulPartitionedCallв dense_34/StatefulPartitionedCallв dense_35/StatefulPartitionedCallР
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCallconv2d_44_inputconv2d_44_302818conv2d_44_302820*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_44_layer_call_and_return_conditional_losses_302384 
 max_pooling2d_33/PartitionedCallPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *U
fPRN
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_302339к
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_45_302824conv2d_45_302826*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_302402 
 max_pooling2d_34/PartitionedCallPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         	@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *U
fPRN
L__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_302351л
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_46_302830conv2d_46_302832*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_46_layer_call_and_return_conditional_losses_302420м
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall*conv2d_46/StatefulPartitionedCall:output:0conv2d_47_302835conv2d_47_302837*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_47_layer_call_and_return_conditional_losses_302437А
 max_pooling2d_35/PartitionedCallPartitionedCall*conv2d_47/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *U
fPRN
L__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_302363ы
flatten_11/PartitionedCallPartitionedCall)max_pooling2d_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *O
fJRH
F__inference_flatten_11_layer_call_and_return_conditional_losses_302450Щ
 dense_33/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_33_302842dense_33_302844*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_302463ы
dropout_22/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_302474Ш
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#dropout_22/PartitionedCall:output:0dense_34_302848dense_34_302850*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_302487ъ
dropout_23/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_302498Ш
 dense_35/StatefulPartitionedCallStatefulPartitionedCall#dropout_23/PartitionedCall:output:0dense_35_302854dense_35_302856*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_302511x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┐
NoOpNoOp"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         *: : : : : : : : : : : : : : 2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall:` \
/
_output_shapes
:         *
)
_user_specified_nameconv2d_44_input
й
Ф
.__inference_sequential_11_layer_call_fn_302549
conv2d_44_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А@

unknown_10:@

unknown_11:@

unknown_12:
identityИвStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallconv2d_44_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

   D8В *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_302518o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         *: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         *
)
_user_specified_nameconv2d_44_input
■
в
*__inference_conv2d_47_layer_call_fn_303235

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_47_layer_call_and_return_conditional_losses_302437x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
д╔
└
"__inference__traced_restore_303720
file_prefix;
!assignvariableop_conv2d_44_kernel: /
!assignvariableop_1_conv2d_44_bias: =
#assignvariableop_2_conv2d_45_kernel: @/
!assignvariableop_3_conv2d_45_bias:@>
#assignvariableop_4_conv2d_46_kernel:@А0
!assignvariableop_5_conv2d_46_bias:	А?
#assignvariableop_6_conv2d_47_kernel:АА0
!assignvariableop_7_conv2d_47_bias:	А6
"assignvariableop_8_dense_33_kernel:
АА/
 assignvariableop_9_dense_33_bias:	А6
#assignvariableop_10_dense_34_kernel:	А@/
!assignvariableop_11_dense_34_bias:@5
#assignvariableop_12_dense_35_kernel:@/
!assignvariableop_13_dense_35_bias:"
assignvariableop_14_iter:	 $
assignvariableop_15_beta_1: $
assignvariableop_16_beta_2: #
assignvariableop_17_decay: +
!assignvariableop_18_learning_rate: #
assignvariableop_19_total: #
assignvariableop_20_count: %
assignvariableop_21_total_1: %
assignvariableop_22_count_1: @
&assignvariableop_23_conv2d_44_kernel_m: 2
$assignvariableop_24_conv2d_44_bias_m: @
&assignvariableop_25_conv2d_45_kernel_m: @2
$assignvariableop_26_conv2d_45_bias_m:@A
&assignvariableop_27_conv2d_46_kernel_m:@А3
$assignvariableop_28_conv2d_46_bias_m:	АB
&assignvariableop_29_conv2d_47_kernel_m:АА3
$assignvariableop_30_conv2d_47_bias_m:	А9
%assignvariableop_31_dense_33_kernel_m:
АА2
#assignvariableop_32_dense_33_bias_m:	А8
%assignvariableop_33_dense_34_kernel_m:	А@1
#assignvariableop_34_dense_34_bias_m:@7
%assignvariableop_35_dense_35_kernel_m:@1
#assignvariableop_36_dense_35_bias_m:@
&assignvariableop_37_conv2d_44_kernel_v: 2
$assignvariableop_38_conv2d_44_bias_v: @
&assignvariableop_39_conv2d_45_kernel_v: @2
$assignvariableop_40_conv2d_45_bias_v:@A
&assignvariableop_41_conv2d_46_kernel_v:@А3
$assignvariableop_42_conv2d_46_bias_v:	АB
&assignvariableop_43_conv2d_47_kernel_v:АА3
$assignvariableop_44_conv2d_47_bias_v:	А9
%assignvariableop_45_dense_33_kernel_v:
АА2
#assignvariableop_46_dense_33_bias_v:	А8
%assignvariableop_47_dense_34_kernel_v:	А@1
#assignvariableop_48_dense_34_bias_v:@7
%assignvariableop_49_dense_35_kernel_v:@1
#assignvariableop_50_dense_35_bias_v:
identity_52ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9р
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*Ж
value№B∙4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╪
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B е
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ц
_output_shapes╙
╨::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_44_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_44_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_45_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_45_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_46_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_46_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_47_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_47_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_33_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_33_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_34_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_34_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_35_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_35_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:Й
AssignVariableOp_14AssignVariableOpassignvariableop_14_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_15AssignVariableOpassignvariableop_15_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_16AssignVariableOpassignvariableop_16_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_17AssignVariableOpassignvariableop_17_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_18AssignVariableOp!assignvariableop_18_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_23AssignVariableOp&assignvariableop_23_conv2d_44_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_24AssignVariableOp$assignvariableop_24_conv2d_44_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_25AssignVariableOp&assignvariableop_25_conv2d_45_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_26AssignVariableOp$assignvariableop_26_conv2d_45_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_27AssignVariableOp&assignvariableop_27_conv2d_46_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_28AssignVariableOp$assignvariableop_28_conv2d_46_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_29AssignVariableOp&assignvariableop_29_conv2d_47_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_30AssignVariableOp$assignvariableop_30_conv2d_47_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_31AssignVariableOp%assignvariableop_31_dense_33_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_32AssignVariableOp#assignvariableop_32_dense_33_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_33AssignVariableOp%assignvariableop_33_dense_34_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_34AssignVariableOp#assignvariableop_34_dense_34_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_35AssignVariableOp%assignvariableop_35_dense_35_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_36AssignVariableOp#assignvariableop_36_dense_35_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_37AssignVariableOp&assignvariableop_37_conv2d_44_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_38AssignVariableOp$assignvariableop_38_conv2d_44_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_39AssignVariableOp&assignvariableop_39_conv2d_45_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_40AssignVariableOp$assignvariableop_40_conv2d_45_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_41AssignVariableOp&assignvariableop_41_conv2d_46_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_42AssignVariableOp$assignvariableop_42_conv2d_46_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_43AssignVariableOp&assignvariableop_43_conv2d_47_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_44AssignVariableOp$assignvariableop_44_conv2d_47_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_45AssignVariableOp%assignvariableop_45_dense_33_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_46AssignVariableOp#assignvariableop_46_dense_33_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_47AssignVariableOp%assignvariableop_47_dense_34_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_48AssignVariableOp#assignvariableop_48_dense_34_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_49AssignVariableOp%assignvariableop_49_dense_35_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_50AssignVariableOp#assignvariableop_50_dense_35_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ▒	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_52IdentityIdentity_51:output:0^NoOp_1*
T0*
_output_shapes
: Ю	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_52Identity_52:output:0*{
_input_shapesj
h: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
■
d
+__inference_dropout_23_layer_call_fn_303344

inputs
identityИвStatefulPartitionedCall╠
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_302579o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
═;
│
I__inference_sequential_11_layer_call_and_return_conditional_losses_302905
conv2d_44_input*
conv2d_44_302863: 
conv2d_44_302865: *
conv2d_45_302869: @
conv2d_45_302871:@+
conv2d_46_302875:@А
conv2d_46_302877:	А,
conv2d_47_302880:АА
conv2d_47_302882:	А#
dense_33_302887:
АА
dense_33_302889:	А"
dense_34_302893:	А@
dense_34_302895:@!
dense_35_302899:@
dense_35_302901:
identityИв!conv2d_44/StatefulPartitionedCallв!conv2d_45/StatefulPartitionedCallв!conv2d_46/StatefulPartitionedCallв!conv2d_47/StatefulPartitionedCallв dense_33/StatefulPartitionedCallв dense_34/StatefulPartitionedCallв dense_35/StatefulPartitionedCallв"dropout_22/StatefulPartitionedCallв"dropout_23/StatefulPartitionedCallР
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCallconv2d_44_inputconv2d_44_302863conv2d_44_302865*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_44_layer_call_and_return_conditional_losses_302384 
 max_pooling2d_33/PartitionedCallPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *U
fPRN
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_302339к
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_45_302869conv2d_45_302871*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_302402 
 max_pooling2d_34/PartitionedCallPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         	@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *U
fPRN
L__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_302351л
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_46_302875conv2d_46_302877*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_46_layer_call_and_return_conditional_losses_302420м
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall*conv2d_46/StatefulPartitionedCall:output:0conv2d_47_302880conv2d_47_302882*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_47_layer_call_and_return_conditional_losses_302437А
 max_pooling2d_35/PartitionedCallPartitionedCall*conv2d_47/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *U
fPRN
L__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_302363ы
flatten_11/PartitionedCallPartitionedCall)max_pooling2d_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *O
fJRH
F__inference_flatten_11_layer_call_and_return_conditional_losses_302450Щ
 dense_33/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_33_302887dense_33_302889*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_302463√
"dropout_22/StatefulPartitionedCallStatefulPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_302612а
 dense_34/StatefulPartitionedCallStatefulPartitionedCall+dropout_22/StatefulPartitionedCall:output:0dense_34_302893dense_34_302895*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_302487Я
"dropout_23/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0#^dropout_22/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_302579а
 dense_35/StatefulPartitionedCallStatefulPartitionedCall+dropout_23/StatefulPartitionedCall:output:0dense_35_302899dense_35_302901*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_302511x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Й
NoOpNoOp"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         *: : : : : : : : : : : : : : 2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2H
"dropout_22/StatefulPartitionedCall"dropout_22/StatefulPartitionedCall2H
"dropout_23/StatefulPartitionedCall"dropout_23/StatefulPartitionedCall:` \
/
_output_shapes
:         *
)
_user_specified_nameconv2d_44_input
ў
Я
*__inference_conv2d_45_layer_call_fn_303185

inputs!
unknown: @
	unknown_0:@
identityИвStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_302402w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
▌
d
F__inference_dropout_22_layer_call_and_return_conditional_losses_302474

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
О
Л
.__inference_sequential_11_layer_call_fn_302977

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А@

unknown_10:@

unknown_11:@

unknown_12:
identityИвStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

   D8В *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_302751o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         *: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         *
 
_user_specified_nameinputs
Д[
Д
!__inference__wrapped_model_302330
conv2d_44_inputP
6sequential_11_conv2d_44_conv2d_readvariableop_resource: E
7sequential_11_conv2d_44_biasadd_readvariableop_resource: P
6sequential_11_conv2d_45_conv2d_readvariableop_resource: @E
7sequential_11_conv2d_45_biasadd_readvariableop_resource:@Q
6sequential_11_conv2d_46_conv2d_readvariableop_resource:@АF
7sequential_11_conv2d_46_biasadd_readvariableop_resource:	АR
6sequential_11_conv2d_47_conv2d_readvariableop_resource:ААF
7sequential_11_conv2d_47_biasadd_readvariableop_resource:	АI
5sequential_11_dense_33_matmul_readvariableop_resource:
ААE
6sequential_11_dense_33_biasadd_readvariableop_resource:	АH
5sequential_11_dense_34_matmul_readvariableop_resource:	А@D
6sequential_11_dense_34_biasadd_readvariableop_resource:@G
5sequential_11_dense_35_matmul_readvariableop_resource:@D
6sequential_11_dense_35_biasadd_readvariableop_resource:
identityИв.sequential_11/conv2d_44/BiasAdd/ReadVariableOpв-sequential_11/conv2d_44/Conv2D/ReadVariableOpв.sequential_11/conv2d_45/BiasAdd/ReadVariableOpв-sequential_11/conv2d_45/Conv2D/ReadVariableOpв.sequential_11/conv2d_46/BiasAdd/ReadVariableOpв-sequential_11/conv2d_46/Conv2D/ReadVariableOpв.sequential_11/conv2d_47/BiasAdd/ReadVariableOpв-sequential_11/conv2d_47/Conv2D/ReadVariableOpв-sequential_11/dense_33/BiasAdd/ReadVariableOpв,sequential_11/dense_33/MatMul/ReadVariableOpв-sequential_11/dense_34/BiasAdd/ReadVariableOpв,sequential_11/dense_34/MatMul/ReadVariableOpв-sequential_11/dense_35/BiasAdd/ReadVariableOpв,sequential_11/dense_35/MatMul/ReadVariableOpм
-sequential_11/conv2d_44/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0╥
sequential_11/conv2d_44/Conv2DConv2Dconv2d_44_input5sequential_11/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         * *
paddingSAME*
strides
в
.sequential_11/conv2d_44/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0┼
sequential_11/conv2d_44/BiasAddBiasAdd'sequential_11/conv2d_44/Conv2D:output:06sequential_11/conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         * И
sequential_11/conv2d_44/ReluRelu(sequential_11/conv2d_44/BiasAdd:output:0*
T0*/
_output_shapes
:         * ╩
&sequential_11/max_pooling2d_33/MaxPoolMaxPool*sequential_11/conv2d_44/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
м
-sequential_11/conv2d_45/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0є
sequential_11/conv2d_45/Conv2DConv2D/sequential_11/max_pooling2d_33/MaxPool:output:05sequential_11/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
в
.sequential_11/conv2d_45/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_45_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┼
sequential_11/conv2d_45/BiasAddBiasAdd'sequential_11/conv2d_45/Conv2D:output:06sequential_11/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @И
sequential_11/conv2d_45/ReluRelu(sequential_11/conv2d_45/BiasAdd:output:0*
T0*/
_output_shapes
:         @╩
&sequential_11/max_pooling2d_34/MaxPoolMaxPool*sequential_11/conv2d_45/Relu:activations:0*/
_output_shapes
:         	@*
ksize
*
paddingVALID*
strides
н
-sequential_11/conv2d_46/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_46_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ї
sequential_11/conv2d_46/Conv2DConv2D/sequential_11/max_pooling2d_34/MaxPool:output:05sequential_11/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
г
.sequential_11/conv2d_46/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_46_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╞
sequential_11/conv2d_46/BiasAddBiasAdd'sequential_11/conv2d_46/Conv2D:output:06sequential_11/conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЙ
sequential_11/conv2d_46/ReluRelu(sequential_11/conv2d_46/BiasAdd:output:0*
T0*0
_output_shapes
:         Ао
-sequential_11/conv2d_47/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_47_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0я
sequential_11/conv2d_47/Conv2DConv2D*sequential_11/conv2d_46/Relu:activations:05sequential_11/conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
г
.sequential_11/conv2d_47/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_47_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╞
sequential_11/conv2d_47/BiasAddBiasAdd'sequential_11/conv2d_47/Conv2D:output:06sequential_11/conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЙ
sequential_11/conv2d_47/ReluRelu(sequential_11/conv2d_47/BiasAdd:output:0*
T0*0
_output_shapes
:         А╦
&sequential_11/max_pooling2d_35/MaxPoolMaxPool*sequential_11/conv2d_47/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
o
sequential_11/flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╕
 sequential_11/flatten_11/ReshapeReshape/sequential_11/max_pooling2d_35/MaxPool:output:0'sequential_11/flatten_11/Const:output:0*
T0*(
_output_shapes
:         Ад
,sequential_11/dense_33/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_33_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╗
sequential_11/dense_33/MatMulMatMul)sequential_11/flatten_11/Reshape:output:04sequential_11/dense_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аб
-sequential_11/dense_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_33_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╝
sequential_11/dense_33/BiasAddBiasAdd'sequential_11/dense_33/MatMul:product:05sequential_11/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А
sequential_11/dense_33/ReluRelu'sequential_11/dense_33/BiasAdd:output:0*
T0*(
_output_shapes
:         АЛ
!sequential_11/dropout_22/IdentityIdentity)sequential_11/dense_33/Relu:activations:0*
T0*(
_output_shapes
:         Аг
,sequential_11/dense_34/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_34_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0╗
sequential_11/dense_34/MatMulMatMul*sequential_11/dropout_22/Identity:output:04sequential_11/dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @а
-sequential_11/dense_34/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_34_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╗
sequential_11/dense_34/BiasAddBiasAdd'sequential_11/dense_34/MatMul:product:05sequential_11/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @~
sequential_11/dense_34/ReluRelu'sequential_11/dense_34/BiasAdd:output:0*
T0*'
_output_shapes
:         @К
!sequential_11/dropout_23/IdentityIdentity)sequential_11/dense_34/Relu:activations:0*
T0*'
_output_shapes
:         @в
,sequential_11/dense_35/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_35_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0╗
sequential_11/dense_35/MatMulMatMul*sequential_11/dropout_23/Identity:output:04sequential_11/dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_11/dense_35/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_11/dense_35/BiasAddBiasAdd'sequential_11/dense_35/MatMul:product:05sequential_11/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
sequential_11/dense_35/SoftmaxSoftmax'sequential_11/dense_35/BiasAdd:output:0*
T0*'
_output_shapes
:         w
IdentityIdentity(sequential_11/dense_35/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ч
NoOpNoOp/^sequential_11/conv2d_44/BiasAdd/ReadVariableOp.^sequential_11/conv2d_44/Conv2D/ReadVariableOp/^sequential_11/conv2d_45/BiasAdd/ReadVariableOp.^sequential_11/conv2d_45/Conv2D/ReadVariableOp/^sequential_11/conv2d_46/BiasAdd/ReadVariableOp.^sequential_11/conv2d_46/Conv2D/ReadVariableOp/^sequential_11/conv2d_47/BiasAdd/ReadVariableOp.^sequential_11/conv2d_47/Conv2D/ReadVariableOp.^sequential_11/dense_33/BiasAdd/ReadVariableOp-^sequential_11/dense_33/MatMul/ReadVariableOp.^sequential_11/dense_34/BiasAdd/ReadVariableOp-^sequential_11/dense_34/MatMul/ReadVariableOp.^sequential_11/dense_35/BiasAdd/ReadVariableOp-^sequential_11/dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         *: : : : : : : : : : : : : : 2`
.sequential_11/conv2d_44/BiasAdd/ReadVariableOp.sequential_11/conv2d_44/BiasAdd/ReadVariableOp2^
-sequential_11/conv2d_44/Conv2D/ReadVariableOp-sequential_11/conv2d_44/Conv2D/ReadVariableOp2`
.sequential_11/conv2d_45/BiasAdd/ReadVariableOp.sequential_11/conv2d_45/BiasAdd/ReadVariableOp2^
-sequential_11/conv2d_45/Conv2D/ReadVariableOp-sequential_11/conv2d_45/Conv2D/ReadVariableOp2`
.sequential_11/conv2d_46/BiasAdd/ReadVariableOp.sequential_11/conv2d_46/BiasAdd/ReadVariableOp2^
-sequential_11/conv2d_46/Conv2D/ReadVariableOp-sequential_11/conv2d_46/Conv2D/ReadVariableOp2`
.sequential_11/conv2d_47/BiasAdd/ReadVariableOp.sequential_11/conv2d_47/BiasAdd/ReadVariableOp2^
-sequential_11/conv2d_47/Conv2D/ReadVariableOp-sequential_11/conv2d_47/Conv2D/ReadVariableOp2^
-sequential_11/dense_33/BiasAdd/ReadVariableOp-sequential_11/dense_33/BiasAdd/ReadVariableOp2\
,sequential_11/dense_33/MatMul/ReadVariableOp,sequential_11/dense_33/MatMul/ReadVariableOp2^
-sequential_11/dense_34/BiasAdd/ReadVariableOp-sequential_11/dense_34/BiasAdd/ReadVariableOp2\
,sequential_11/dense_34/MatMul/ReadVariableOp,sequential_11/dense_34/MatMul/ReadVariableOp2^
-sequential_11/dense_35/BiasAdd/ReadVariableOp-sequential_11/dense_35/BiasAdd/ReadVariableOp2\
,sequential_11/dense_35/MatMul/ReadVariableOp,sequential_11/dense_35/MatMul/ReadVariableOp:` \
/
_output_shapes
:         *
)
_user_specified_nameconv2d_44_input
Е
■
E__inference_conv2d_45_layer_call_and_return_conditional_losses_302402

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
┌H
Ы
I__inference_sequential_11_layer_call_and_return_conditional_losses_303037

inputsB
(conv2d_44_conv2d_readvariableop_resource: 7
)conv2d_44_biasadd_readvariableop_resource: B
(conv2d_45_conv2d_readvariableop_resource: @7
)conv2d_45_biasadd_readvariableop_resource:@C
(conv2d_46_conv2d_readvariableop_resource:@А8
)conv2d_46_biasadd_readvariableop_resource:	АD
(conv2d_47_conv2d_readvariableop_resource:АА8
)conv2d_47_biasadd_readvariableop_resource:	А;
'dense_33_matmul_readvariableop_resource:
АА7
(dense_33_biasadd_readvariableop_resource:	А:
'dense_34_matmul_readvariableop_resource:	А@6
(dense_34_biasadd_readvariableop_resource:@9
'dense_35_matmul_readvariableop_resource:@6
(dense_35_biasadd_readvariableop_resource:
identityИв conv2d_44/BiasAdd/ReadVariableOpвconv2d_44/Conv2D/ReadVariableOpв conv2d_45/BiasAdd/ReadVariableOpвconv2d_45/Conv2D/ReadVariableOpв conv2d_46/BiasAdd/ReadVariableOpвconv2d_46/Conv2D/ReadVariableOpв conv2d_47/BiasAdd/ReadVariableOpвconv2d_47/Conv2D/ReadVariableOpвdense_33/BiasAdd/ReadVariableOpвdense_33/MatMul/ReadVariableOpвdense_34/BiasAdd/ReadVariableOpвdense_34/MatMul/ReadVariableOpвdense_35/BiasAdd/ReadVariableOpвdense_35/MatMul/ReadVariableOpР
conv2d_44/Conv2D/ReadVariableOpReadVariableOp(conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0н
conv2d_44/Conv2DConv2Dinputs'conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         * *
paddingSAME*
strides
Ж
 conv2d_44/BiasAdd/ReadVariableOpReadVariableOp)conv2d_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ы
conv2d_44/BiasAddBiasAddconv2d_44/Conv2D:output:0(conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         * l
conv2d_44/ReluReluconv2d_44/BiasAdd:output:0*
T0*/
_output_shapes
:         * о
max_pooling2d_33/MaxPoolMaxPoolconv2d_44/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
Р
conv2d_45/Conv2D/ReadVariableOpReadVariableOp(conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╔
conv2d_45/Conv2DConv2D!max_pooling2d_33/MaxPool:output:0'conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
Ж
 conv2d_45/BiasAdd/ReadVariableOpReadVariableOp)conv2d_45_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_45/BiasAddBiasAddconv2d_45/Conv2D:output:0(conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @l
conv2d_45/ReluReluconv2d_45/BiasAdd:output:0*
T0*/
_output_shapes
:         @о
max_pooling2d_34/MaxPoolMaxPoolconv2d_45/Relu:activations:0*/
_output_shapes
:         	@*
ksize
*
paddingVALID*
strides
С
conv2d_46/Conv2D/ReadVariableOpReadVariableOp(conv2d_46_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╩
conv2d_46/Conv2DConv2D!max_pooling2d_34/MaxPool:output:0'conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
З
 conv2d_46/BiasAdd/ReadVariableOpReadVariableOp)conv2d_46_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_46/BiasAddBiasAddconv2d_46/Conv2D:output:0(conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аm
conv2d_46/ReluReluconv2d_46/BiasAdd:output:0*
T0*0
_output_shapes
:         АТ
conv2d_47/Conv2D/ReadVariableOpReadVariableOp(conv2d_47_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0┼
conv2d_47/Conv2DConv2Dconv2d_46/Relu:activations:0'conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
З
 conv2d_47/BiasAdd/ReadVariableOpReadVariableOp)conv2d_47_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_47/BiasAddBiasAddconv2d_47/Conv2D:output:0(conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аm
conv2d_47/ReluReluconv2d_47/BiasAdd:output:0*
T0*0
_output_shapes
:         Ап
max_pooling2d_35/MaxPoolMaxPoolconv2d_47/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
a
flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"       О
flatten_11/ReshapeReshape!max_pooling2d_35/MaxPool:output:0flatten_11/Const:output:0*
T0*(
_output_shapes
:         АИ
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0С
dense_33/MatMulMatMulflatten_11/Reshape:output:0&dense_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аc
dense_33/ReluReludense_33/BiasAdd:output:0*
T0*(
_output_shapes
:         Аo
dropout_22/IdentityIdentitydense_33/Relu:activations:0*
T0*(
_output_shapes
:         АЗ
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0С
dense_34/MatMulMatMuldropout_22/Identity:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Д
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0С
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @b
dense_34/ReluReludense_34/BiasAdd:output:0*
T0*'
_output_shapes
:         @n
dropout_23/IdentityIdentitydense_34/Relu:activations:0*
T0*'
_output_shapes
:         @Ж
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0С
dense_35/MatMulMatMuldropout_23/Identity:output:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_35/SoftmaxSoftmaxdense_35/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_35/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         г
NoOpNoOp!^conv2d_44/BiasAdd/ReadVariableOp ^conv2d_44/Conv2D/ReadVariableOp!^conv2d_45/BiasAdd/ReadVariableOp ^conv2d_45/Conv2D/ReadVariableOp!^conv2d_46/BiasAdd/ReadVariableOp ^conv2d_46/Conv2D/ReadVariableOp!^conv2d_47/BiasAdd/ReadVariableOp ^conv2d_47/Conv2D/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         *: : : : : : : : : : : : : : 2D
 conv2d_44/BiasAdd/ReadVariableOp conv2d_44/BiasAdd/ReadVariableOp2B
conv2d_44/Conv2D/ReadVariableOpconv2d_44/Conv2D/ReadVariableOp2D
 conv2d_45/BiasAdd/ReadVariableOp conv2d_45/BiasAdd/ReadVariableOp2B
conv2d_45/Conv2D/ReadVariableOpconv2d_45/Conv2D/ReadVariableOp2D
 conv2d_46/BiasAdd/ReadVariableOp conv2d_46/BiasAdd/ReadVariableOp2B
conv2d_46/Conv2D/ReadVariableOpconv2d_46/Conv2D/ReadVariableOp2D
 conv2d_47/BiasAdd/ReadVariableOp conv2d_47/BiasAdd/ReadVariableOp2B
conv2d_47/Conv2D/ReadVariableOpconv2d_47/Conv2D/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:W S
/
_output_shapes
:         *
 
_user_specified_nameinputs
Н
А
E__inference_conv2d_46_layer_call_and_return_conditional_losses_302420

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         	@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         	@
 
_user_specified_nameinputs
О
Л
.__inference_sequential_11_layer_call_fn_302944

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А@

unknown_10:@

unknown_11:@

unknown_12:
identityИвStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

   D8В *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_302518o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         *: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         *
 
_user_specified_nameinputs
№	
e
F__inference_dropout_22_layer_call_and_return_conditional_losses_302612

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
С
Б
E__inference_conv2d_47_layer_call_and_return_conditional_losses_303246

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ў
К
$__inference_signature_wrapper_303146
conv2d_44_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А@

unknown_10:@

unknown_11:@

unknown_12:
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallconv2d_44_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

   D8В **
f%R#
!__inference__wrapped_model_302330o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         *: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         *
)
_user_specified_nameconv2d_44_input
Ї	
e
F__inference_dropout_23_layer_call_and_return_conditional_losses_302579

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         @Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
м
G
+__inference_dropout_23_layer_call_fn_303339

inputs
identity╝
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

   D8В *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_302498`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
√
б
*__inference_conv2d_46_layer_call_fn_303215

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

   D8В *N
fIRG
E__inference_conv2d_46_layer_call_and_return_conditional_losses_302420x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         	@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         	@
 
_user_specified_nameinputs
№	
e
F__inference_dropout_22_layer_call_and_return_conditional_losses_303314

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╓d
╒
__inference__traced_save_303557
file_prefix/
+savev2_conv2d_44_kernel_read_readvariableop-
)savev2_conv2d_44_bias_read_readvariableop/
+savev2_conv2d_45_kernel_read_readvariableop-
)savev2_conv2d_45_bias_read_readvariableop/
+savev2_conv2d_46_kernel_read_readvariableop-
)savev2_conv2d_46_bias_read_readvariableop/
+savev2_conv2d_47_kernel_read_readvariableop-
)savev2_conv2d_47_bias_read_readvariableop.
*savev2_dense_33_kernel_read_readvariableop,
(savev2_dense_33_bias_read_readvariableop.
*savev2_dense_34_kernel_read_readvariableop,
(savev2_dense_34_bias_read_readvariableop.
*savev2_dense_35_kernel_read_readvariableop,
(savev2_dense_35_bias_read_readvariableop#
savev2_iter_read_readvariableop	%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop1
-savev2_conv2d_44_kernel_m_read_readvariableop/
+savev2_conv2d_44_bias_m_read_readvariableop1
-savev2_conv2d_45_kernel_m_read_readvariableop/
+savev2_conv2d_45_bias_m_read_readvariableop1
-savev2_conv2d_46_kernel_m_read_readvariableop/
+savev2_conv2d_46_bias_m_read_readvariableop1
-savev2_conv2d_47_kernel_m_read_readvariableop/
+savev2_conv2d_47_bias_m_read_readvariableop0
,savev2_dense_33_kernel_m_read_readvariableop.
*savev2_dense_33_bias_m_read_readvariableop0
,savev2_dense_34_kernel_m_read_readvariableop.
*savev2_dense_34_bias_m_read_readvariableop0
,savev2_dense_35_kernel_m_read_readvariableop.
*savev2_dense_35_bias_m_read_readvariableop1
-savev2_conv2d_44_kernel_v_read_readvariableop/
+savev2_conv2d_44_bias_v_read_readvariableop1
-savev2_conv2d_45_kernel_v_read_readvariableop/
+savev2_conv2d_45_bias_v_read_readvariableop1
-savev2_conv2d_46_kernel_v_read_readvariableop/
+savev2_conv2d_46_bias_v_read_readvariableop1
-savev2_conv2d_47_kernel_v_read_readvariableop/
+savev2_conv2d_47_bias_v_read_readvariableop0
,savev2_dense_33_kernel_v_read_readvariableop.
*savev2_dense_33_bias_v_read_readvariableop0
,savev2_dense_34_kernel_v_read_readvariableop.
*savev2_dense_34_bias_v_read_readvariableop0
,savev2_dense_35_kernel_v_read_readvariableop.
*savev2_dense_35_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ▌
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*Ж
value№B∙4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╒
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B А
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_44_kernel_read_readvariableop)savev2_conv2d_44_bias_read_readvariableop+savev2_conv2d_45_kernel_read_readvariableop)savev2_conv2d_45_bias_read_readvariableop+savev2_conv2d_46_kernel_read_readvariableop)savev2_conv2d_46_bias_read_readvariableop+savev2_conv2d_47_kernel_read_readvariableop)savev2_conv2d_47_bias_read_readvariableop*savev2_dense_33_kernel_read_readvariableop(savev2_dense_33_bias_read_readvariableop*savev2_dense_34_kernel_read_readvariableop(savev2_dense_34_bias_read_readvariableop*savev2_dense_35_kernel_read_readvariableop(savev2_dense_35_bias_read_readvariableopsavev2_iter_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop-savev2_conv2d_44_kernel_m_read_readvariableop+savev2_conv2d_44_bias_m_read_readvariableop-savev2_conv2d_45_kernel_m_read_readvariableop+savev2_conv2d_45_bias_m_read_readvariableop-savev2_conv2d_46_kernel_m_read_readvariableop+savev2_conv2d_46_bias_m_read_readvariableop-savev2_conv2d_47_kernel_m_read_readvariableop+savev2_conv2d_47_bias_m_read_readvariableop,savev2_dense_33_kernel_m_read_readvariableop*savev2_dense_33_bias_m_read_readvariableop,savev2_dense_34_kernel_m_read_readvariableop*savev2_dense_34_bias_m_read_readvariableop,savev2_dense_35_kernel_m_read_readvariableop*savev2_dense_35_bias_m_read_readvariableop-savev2_conv2d_44_kernel_v_read_readvariableop+savev2_conv2d_44_bias_v_read_readvariableop-savev2_conv2d_45_kernel_v_read_readvariableop+savev2_conv2d_45_bias_v_read_readvariableop-savev2_conv2d_46_kernel_v_read_readvariableop+savev2_conv2d_46_bias_v_read_readvariableop-savev2_conv2d_47_kernel_v_read_readvariableop+savev2_conv2d_47_bias_v_read_readvariableop,savev2_dense_33_kernel_v_read_readvariableop*savev2_dense_33_bias_v_read_readvariableop,savev2_dense_34_kernel_v_read_readvariableop*savev2_dense_34_bias_v_read_readvariableop,savev2_dense_35_kernel_v_read_readvariableop*savev2_dense_35_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
624	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*Ў
_input_shapesф
с: : : : @:@:@А:А:АА:А:
АА:А:	А@:@:@:: : : : : : : : : : : : @:@:@А:А:АА:А:
АА:А:	А@:@:@:: : : @:@:@А:А:АА:А:
АА:А:	А@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А:%!

_output_shapes
:	А@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:& "
 
_output_shapes
:
АА:!!

_output_shapes	
:А:%"!

_output_shapes
:	А@: #

_output_shapes
:@:$$ 

_output_shapes

:@: %

_output_shapes
::,&(
&
_output_shapes
: : '

_output_shapes
: :,((
&
_output_shapes
: @: )

_output_shapes
:@:-*)
'
_output_shapes
:@А:!+

_output_shapes	
:А:.,*
(
_output_shapes
:АА:!-

_output_shapes	
:А:&."
 
_output_shapes
:
АА:!/

_output_shapes	
:А:%0!

_output_shapes
:	А@: 1

_output_shapes
:@:$2 

_output_shapes

:@: 3

_output_shapes
::4

_output_shapes
: 
╩
b
F__inference_flatten_11_layer_call_and_return_conditional_losses_303267

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs"█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*├
serving_defaultп
S
conv2d_44_input@
!serving_default_conv2d_44_input:0         *<
dense_350
StatefulPartitionedCall:0         tensorflow/serving/predict:Ьр
╚
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer-11
layer_with_weights-6
layer-12
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
╗

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
е
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
е
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

3kernel
4bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

;kernel
<bias
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
е
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
е
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[_random_generator
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

^kernel
_bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j_random_generator
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

mkernel
nbias
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
ы
uiter

vbeta_1

wbeta_2
	xdecay
ylearning_ratem╠m═%m╬&m╧3m╨4m╤;m╥<m╙Om╘Pm╒^m╓_m╫mm╪nm┘v┌v█%v▄&v▌3v▐4v▀;vр<vсOvтPvу^vф_vхmvцnvч"
	optimizer
Ж
0
1
%2
&3
34
45
;6
<7
O8
P9
^10
_11
m12
n13"
trackable_list_wrapper
Ж
0
1
%2
&3
34
45
;6
<7
O8
P9
^10
_11
m12
n13"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ж2Г
.__inference_sequential_11_layer_call_fn_302549
.__inference_sequential_11_layer_call_fn_302944
.__inference_sequential_11_layer_call_fn_302977
.__inference_sequential_11_layer_call_fn_302815└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Є2я
I__inference_sequential_11_layer_call_and_return_conditional_losses_303037
I__inference_sequential_11_layer_call_and_return_conditional_losses_303111
I__inference_sequential_11_layer_call_and_return_conditional_losses_302860
I__inference_sequential_11_layer_call_and_return_conditional_losses_302905└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╘B╤
!__inference__wrapped_model_302330conv2d_44_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
,
serving_default"
signature_map
*:( 2conv2d_44/kernel
: 2conv2d_44/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╘2╤
*__inference_conv2d_44_layer_call_fn_303155в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_44_layer_call_and_return_conditional_losses_303166в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
█2╪
1__inference_max_pooling2d_33_layer_call_fn_303171в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ў2є
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_303176в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
*:( @2conv2d_45/kernel
:@2conv2d_45/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
╘2╤
*__inference_conv2d_45_layer_call_fn_303185в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_45_layer_call_and_return_conditional_losses_303196в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
█2╪
1__inference_max_pooling2d_34_layer_call_fn_303201в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ў2є
L__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_303206в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
+:)@А2conv2d_46/kernel
:А2conv2d_46/bias
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
╘2╤
*__inference_conv2d_46_layer_call_fn_303215в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_46_layer_call_and_return_conditional_losses_303226в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
,:*АА2conv2d_47/kernel
:А2conv2d_47/bias
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
╘2╤
*__inference_conv2d_47_layer_call_fn_303235в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_47_layer_call_and_return_conditional_losses_303246в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
█2╪
1__inference_max_pooling2d_35_layer_call_fn_303251в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ў2є
L__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_303256в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
╒2╥
+__inference_flatten_11_layer_call_fn_303261в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_flatten_11_layer_call_and_return_conditional_losses_303267в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
#:!
АА2dense_33/kernel
:А2dense_33/bias
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
╙2╨
)__inference_dense_33_layer_call_fn_303276в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_dense_33_layer_call_and_return_conditional_losses_303287в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Ф2С
+__inference_dropout_22_layer_call_fn_303292
+__inference_dropout_22_layer_call_fn_303297┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╩2╟
F__inference_dropout_22_layer_call_and_return_conditional_losses_303302
F__inference_dropout_22_layer_call_and_return_conditional_losses_303314┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
": 	А@2dense_34/kernel
:@2dense_34/bias
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▓non_trainable_variables
│layers
┤metrics
 ╡layer_regularization_losses
╢layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
╙2╨
)__inference_dense_34_layer_call_fn_303323в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_dense_34_layer_call_and_return_conditional_losses_303334в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╖non_trainable_variables
╕layers
╣metrics
 ║layer_regularization_losses
╗layer_metrics
f	variables
gtrainable_variables
hregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Ф2С
+__inference_dropout_23_layer_call_fn_303339
+__inference_dropout_23_layer_call_fn_303344┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╩2╟
F__inference_dropout_23_layer_call_and_return_conditional_losses_303349
F__inference_dropout_23_layer_call_and_return_conditional_losses_303361┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
!:@2dense_35/kernel
:2dense_35/bias
.
m0
n1"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
╙2╨
)__inference_dense_35_layer_call_fn_303370в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_dense_35_layer_call_and_return_conditional_losses_303381в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
:	 (2iter
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
 "
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
	8

9
10
11
12"
trackable_list_wrapper
0
┴0
┬1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╙B╨
$__inference_signature_wrapper_303146conv2d_44_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
R

├total

─count
┼	variables
╞	keras_api"
_tf_keras_metric
c

╟total

╚count
╔
_fn_kwargs
╩	variables
╦	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
├0
─1"
trackable_list_wrapper
.
┼	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
╟0
╚1"
trackable_list_wrapper
.
╩	variables"
_generic_user_object
*:( 2conv2d_44/kernel/m
: 2conv2d_44/bias/m
*:( @2conv2d_45/kernel/m
:@2conv2d_45/bias/m
+:)@А2conv2d_46/kernel/m
:А2conv2d_46/bias/m
,:*АА2conv2d_47/kernel/m
:А2conv2d_47/bias/m
#:!
АА2dense_33/kernel/m
:А2dense_33/bias/m
": 	А@2dense_34/kernel/m
:@2dense_34/bias/m
!:@2dense_35/kernel/m
:2dense_35/bias/m
*:( 2conv2d_44/kernel/v
: 2conv2d_44/bias/v
*:( @2conv2d_45/kernel/v
:@2conv2d_45/bias/v
+:)@А2conv2d_46/kernel/v
:А2conv2d_46/bias/v
,:*АА2conv2d_47/kernel/v
:А2conv2d_47/bias/v
#:!
АА2dense_33/kernel/v
:А2dense_33/bias/v
": 	А@2dense_34/kernel/v
:@2dense_34/bias/v
!:@2dense_35/kernel/v
:2dense_35/bias/vн
!__inference__wrapped_model_302330З%&34;<OP^_mn@в=
6в3
1К.
conv2d_44_input         *
к "3к0
.
dense_35"К
dense_35         ╡
E__inference_conv2d_44_layer_call_and_return_conditional_losses_303166l7в4
-в*
(К%
inputs         *
к "-в*
#К 
0         * 
Ъ Н
*__inference_conv2d_44_layer_call_fn_303155_7в4
-в*
(К%
inputs         *
к " К         * ╡
E__inference_conv2d_45_layer_call_and_return_conditional_losses_303196l%&7в4
-в*
(К%
inputs          
к "-в*
#К 
0         @
Ъ Н
*__inference_conv2d_45_layer_call_fn_303185_%&7в4
-в*
(К%
inputs          
к " К         @╢
E__inference_conv2d_46_layer_call_and_return_conditional_losses_303226m347в4
-в*
(К%
inputs         	@
к ".в+
$К!
0         А
Ъ О
*__inference_conv2d_46_layer_call_fn_303215`347в4
-в*
(К%
inputs         	@
к "!К         А╖
E__inference_conv2d_47_layer_call_and_return_conditional_losses_303246n;<8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ П
*__inference_conv2d_47_layer_call_fn_303235a;<8в5
.в+
)К&
inputs         А
к "!К         Аж
D__inference_dense_33_layer_call_and_return_conditional_losses_303287^OP0в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ ~
)__inference_dense_33_layer_call_fn_303276QOP0в-
&в#
!К
inputs         А
к "К         Ае
D__inference_dense_34_layer_call_and_return_conditional_losses_303334]^_0в-
&в#
!К
inputs         А
к "%в"
К
0         @
Ъ }
)__inference_dense_34_layer_call_fn_303323P^_0в-
&в#
!К
inputs         А
к "К         @д
D__inference_dense_35_layer_call_and_return_conditional_losses_303381\mn/в,
%в"
 К
inputs         @
к "%в"
К
0         
Ъ |
)__inference_dense_35_layer_call_fn_303370Omn/в,
%в"
 К
inputs         @
к "К         и
F__inference_dropout_22_layer_call_and_return_conditional_losses_303302^4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ и
F__inference_dropout_22_layer_call_and_return_conditional_losses_303314^4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ А
+__inference_dropout_22_layer_call_fn_303292Q4в1
*в'
!К
inputs         А
p 
к "К         АА
+__inference_dropout_22_layer_call_fn_303297Q4в1
*в'
!К
inputs         А
p
к "К         Аж
F__inference_dropout_23_layer_call_and_return_conditional_losses_303349\3в0
)в&
 К
inputs         @
p 
к "%в"
К
0         @
Ъ ж
F__inference_dropout_23_layer_call_and_return_conditional_losses_303361\3в0
)в&
 К
inputs         @
p
к "%в"
К
0         @
Ъ ~
+__inference_dropout_23_layer_call_fn_303339O3в0
)в&
 К
inputs         @
p 
к "К         @~
+__inference_dropout_23_layer_call_fn_303344O3в0
)в&
 К
inputs         @
p
к "К         @м
F__inference_flatten_11_layer_call_and_return_conditional_losses_303267b8в5
.в+
)К&
inputs         А
к "&в#
К
0         А
Ъ Д
+__inference_flatten_11_layer_call_fn_303261U8в5
.в+
)К&
inputs         А
к "К         Ая
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_303176ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╟
1__inference_max_pooling2d_33_layer_call_fn_303171СRвO
HвE
CК@
inputs4                                    
к ";К84                                    я
L__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_303206ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╟
1__inference_max_pooling2d_34_layer_call_fn_303201СRвO
HвE
CК@
inputs4                                    
к ";К84                                    я
L__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_303256ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╟
1__inference_max_pooling2d_35_layer_call_fn_303251СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ╧
I__inference_sequential_11_layer_call_and_return_conditional_losses_302860Б%&34;<OP^_mnHвE
>в;
1К.
conv2d_44_input         *
p 

 
к "%в"
К
0         
Ъ ╧
I__inference_sequential_11_layer_call_and_return_conditional_losses_302905Б%&34;<OP^_mnHвE
>в;
1К.
conv2d_44_input         *
p

 
к "%в"
К
0         
Ъ ┼
I__inference_sequential_11_layer_call_and_return_conditional_losses_303037x%&34;<OP^_mn?в<
5в2
(К%
inputs         *
p 

 
к "%в"
К
0         
Ъ ┼
I__inference_sequential_11_layer_call_and_return_conditional_losses_303111x%&34;<OP^_mn?в<
5в2
(К%
inputs         *
p

 
к "%в"
К
0         
Ъ ж
.__inference_sequential_11_layer_call_fn_302549t%&34;<OP^_mnHвE
>в;
1К.
conv2d_44_input         *
p 

 
к "К         ж
.__inference_sequential_11_layer_call_fn_302815t%&34;<OP^_mnHвE
>в;
1К.
conv2d_44_input         *
p

 
к "К         Э
.__inference_sequential_11_layer_call_fn_302944k%&34;<OP^_mn?в<
5в2
(К%
inputs         *
p 

 
к "К         Э
.__inference_sequential_11_layer_call_fn_302977k%&34;<OP^_mn?в<
5в2
(К%
inputs         *
p

 
к "К         ├
$__inference_signature_wrapper_303146Ъ%&34;<OP^_mnSвP
в 
IкF
D
conv2d_44_input1К.
conv2d_44_input         *"3к0
.
dense_35"К
dense_35         