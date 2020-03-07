module Cyberbrain.PyInstructions where
import Data.Generic.Rep
import Data.Generic.Rep.Show
import Data.Show

data PyInstr
    = BEFORE_ASYNC_WITH
    | BEGIN_FINALLY
    | BINARY_ADD
    | BINARY_AND
    | BINARY_DIVIDE
    | BINARY_FLOOR_DIVIDE
    | BINARY_LSHIFT
    | BINARY_MATRIX_MULTIPLY
    | BINARY_MODULO
    | BINARY_MULTIPLY
    | BINARY_OR
    | BINARY_POWER
    | BINARY_RSHIFT
    | BINARY_SUBSCR
    | BINARY_SUBTRACT
    | BINARY_TRUE_DIVIDE
    | BINARY_XOR
    | BREAK_LOOP
    | BUILD_CLASS
    | BUILD_CONST_KEY_MAP
    | BUILD_LIST
    | BUILD_LIST_UNPACK
    | BUILD_MAP
    | BUILD_MAP_UNPACK
    | BUILD_MAP_UNPACK_WITH_CALL
    | BUILD_SET
    | BUILD_SET_UNPACK
    | BUILD_SLICE
    | BUILD_STRING
    | BUILD_TUPLE
    | BUILD_TUPLE_UNPACK
    | BUILD_TUPLE_UNPACK_WITH_CALL
    | CALL_FINALLY
    | CALL_FUNCTION
    | CALL_FUNCTION_EX
    | CALL_FUNCTION_KW
    | CALL_FUNCTION_VAR
    | CALL_FUNCTION_VAR_KW
    | CALL_METHOD
    | COMPARE_OP
    | CONTINUE_LOOP
    | DELETE_ATTR
    | DELETE_DEREF
    | DELETE_FAST
    | DELETE_GLOBAL
    | DELETE_NAME
    | DELETE_SUBSCR
    | DUP_TOP
    | DUP_TOPX
    | DUP_TOP_TWO
    | END_ASYNC_FOR
    | END_FINALLY
    | EXEC_STMT
    | EXTENDED_ARG
    | FORMAT_VALUE
    | FOR_ITER
    | GET_AITER
    | GET_ANEXT
    | GET_AWAITABLE
    | GET_ITER
    | GET_YIELD_FROM_ITER
    | IMPORT_FROM
    | IMPORT_NAME
    | IMPORT_STAR
    | INPLACE_ADD
    | INPLACE_AND
    | INPLACE_DIVIDE
    | INPLACE_FLOOR_DIVIDE
    | INPLACE_LSHIFT
    | INPLACE_MATRIX_MULTIPLY
    | INPLACE_MODULO
    | INPLACE_MULTIPLY
    | INPLACE_OR
    | INPLACE_POWER
    | INPLACE_RSHIFT
    | INPLACE_SUBTRACT
    | INPLACE_TRUE_DIVIDE
    | INPLACE_XOR
    | JUMP_ABSOLUTE
    | JUMP_FORWARD
    | JUMP_IF_FALSE_OR_POP
    | JUMP_IF_TRUE_OR_POP
    | LIST_APPEND
    | LOAD_ATTR
    | LOAD_BUILD_CLASS
    | LOAD_CLASSDEREF
    | LOAD_CLOSURE
    | LOAD_CONST
    | LOAD_DEREF
    | LOAD_FAST
    | LOAD_GLOBAL
    | LOAD_LOCALS
    | LOAD_METHOD
    | LOAD_NAME
    | MAKE_CLOSURE
    | MAKE_FUNCTION
    | MAP_ADD
    | NOP
    | POP_BLOCK
    | POP_EXCEPT
    | POP_FINALLY
    | POP_JUMP_IF_FALSE
    | POP_JUMP_IF_TRUE
    | POP_TOP
    | PRINT_EXPR
    | PRINT_ITEM
    | PRINT_ITEM_TO
    | PRINT_NEWLINE
    | PRINT_NEWLINE_TO
    | RAISE_VARARGS
    | RETURN_VALUE
    | ROT_FOUR
    | ROT_THREE
    | ROT_TWO
    | SETUP_ANNOTATIONS
    | SETUP_ASYNC_WITH
    | SETUP_EXCEPT
    | SETUP_FINALLY
    | SETUP_LOOP
    | SETUP_WITH
    | SET_ADD
    | STOP_CODE
    | STORE_ANNOTATION
    | STORE_ATTR
    | STORE_DEREF
    | STORE_FAST
    | STORE_GLOBAL
    | STORE_MAP
    | STORE_NAME
    | STORE_SUBSCR
    | UNARY_CONVERT
    | UNARY_INVERT
    | UNARY_NEGATIVE
    | UNARY_NOT
    | UNARY_POSITIVE
    | UNPACK_EX
    | UNPACK_SEQUENCE
    | WITH_CLEANUP
    | WITH_CLEANUP_FINISH
    | WITH_CLEANUP_START
    | YIELD_FROM
    | YIELD_VALUE

instance showPyInstr :: Show PyInstr where
    show BEFORE_ASYNC_WITH = "BEFORE_ASYNC_WITH"
    show BEGIN_FINALLY = "BEGIN_FINALLY"
    show BINARY_ADD = "BINARY_ADD"
    show BINARY_AND = "BINARY_AND"
    show BINARY_DIVIDE = "BINARY_DIVIDE"
    show BINARY_FLOOR_DIVIDE = "BINARY_FLOOR_DIVIDE"
    show BINARY_LSHIFT = "BINARY_LSHIFT"
    show BINARY_MATRIX_MULTIPLY = "BINARY_MATRIX_MULTIPLY"
    show BINARY_MODULO = "BINARY_MODULO"
    show BINARY_MULTIPLY = "BINARY_MULTIPLY"
    show BINARY_OR = "BINARY_OR"
    show BINARY_POWER = "BINARY_POWER"
    show BINARY_RSHIFT = "BINARY_RSHIFT"
    show BINARY_SUBSCR = "BINARY_SUBSCR"
    show BINARY_SUBTRACT = "BINARY_SUBTRACT"
    show BINARY_TRUE_DIVIDE = "BINARY_TRUE_DIVIDE"
    show BINARY_XOR = "BINARY_XOR"
    show BREAK_LOOP = "BREAK_LOOP"
    show BUILD_CLASS = "BUILD_CLASS"
    show BUILD_CONST_KEY_MAP = "BUILD_CONST_KEY_MAP"
    show BUILD_LIST = "BUILD_LIST"
    show BUILD_LIST_UNPACK = "BUILD_LIST_UNPACK"
    show BUILD_MAP = "BUILD_MAP"
    show BUILD_MAP_UNPACK = "BUILD_MAP_UNPACK"
    show BUILD_MAP_UNPACK_WITH_CALL = "BUILD_MAP_UNPACK_WITH_CALL"
    show BUILD_SET = "BUILD_SET"
    show BUILD_SET_UNPACK = "BUILD_SET_UNPACK"
    show BUILD_SLICE = "BUILD_SLICE"
    show BUILD_STRING = "BUILD_STRING"
    show BUILD_TUPLE = "BUILD_TUPLE"
    show BUILD_TUPLE_UNPACK = "BUILD_TUPLE_UNPACK"
    show BUILD_TUPLE_UNPACK_WITH_CALL = "BUILD_TUPLE_UNPACK_WITH_CALL"
    show CALL_FINALLY = "CALL_FINALLY"
    show CALL_FUNCTION = "CALL_FUNCTION"
    show CALL_FUNCTION_EX = "CALL_FUNCTION_EX"
    show CALL_FUNCTION_KW = "CALL_FUNCTION_KW"
    show CALL_FUNCTION_VAR = "CALL_FUNCTION_VAR"
    show CALL_FUNCTION_VAR_KW = "CALL_FUNCTION_VAR_KW"
    show CALL_METHOD = "CALL_METHOD"
    show COMPARE_OP = "COMPARE_OP"
    show CONTINUE_LOOP = "CONTINUE_LOOP"
    show DELETE_ATTR = "DELETE_ATTR"
    show DELETE_DEREF = "DELETE_DEREF"
    show DELETE_FAST = "DELETE_FAST"
    show DELETE_GLOBAL = "DELETE_GLOBAL"
    show DELETE_NAME = "DELETE_NAME"
    show DELETE_SUBSCR = "DELETE_SUBSCR"
    show DUP_TOP = "DUP_TOP"
    show DUP_TOPX = "DUP_TOPX"
    show DUP_TOP_TWO = "DUP_TOP_TWO"
    show END_ASYNC_FOR = "END_ASYNC_FOR"
    show END_FINALLY = "END_FINALLY"
    show EXEC_STMT = "EXEC_STMT"
    show EXTENDED_ARG = "EXTENDED_ARG"
    show FORMAT_VALUE = "FORMAT_VALUE"
    show FOR_ITER = "FOR_ITER"
    show GET_AITER = "GET_AITER"
    show GET_ANEXT = "GET_ANEXT"
    show GET_AWAITABLE = "GET_AWAITABLE"
    show GET_ITER = "GET_ITER"
    show GET_YIELD_FROM_ITER = "GET_YIELD_FROM_ITER"
    show IMPORT_FROM = "IMPORT_FROM"
    show IMPORT_NAME = "IMPORT_NAME"
    show IMPORT_STAR = "IMPORT_STAR"
    show INPLACE_ADD = "INPLACE_ADD"
    show INPLACE_AND = "INPLACE_AND"
    show INPLACE_DIVIDE = "INPLACE_DIVIDE"
    show INPLACE_FLOOR_DIVIDE = "INPLACE_FLOOR_DIVIDE"
    show INPLACE_LSHIFT = "INPLACE_LSHIFT"
    show INPLACE_MATRIX_MULTIPLY = "INPLACE_MATRIX_MULTIPLY"
    show INPLACE_MODULO = "INPLACE_MODULO"
    show INPLACE_MULTIPLY = "INPLACE_MULTIPLY"
    show INPLACE_OR = "INPLACE_OR"
    show INPLACE_POWER = "INPLACE_POWER"
    show INPLACE_RSHIFT = "INPLACE_RSHIFT"
    show INPLACE_SUBTRACT = "INPLACE_SUBTRACT"
    show INPLACE_TRUE_DIVIDE = "INPLACE_TRUE_DIVIDE"
    show INPLACE_XOR = "INPLACE_XOR"
    show JUMP_ABSOLUTE = "JUMP_ABSOLUTE"
    show JUMP_FORWARD = "JUMP_FORWARD"
    show JUMP_IF_FALSE_OR_POP = "JUMP_IF_FALSE_OR_POP"
    show JUMP_IF_TRUE_OR_POP = "JUMP_IF_TRUE_OR_POP"
    show LIST_APPEND = "LIST_APPEND"
    show LOAD_ATTR = "LOAD_ATTR"
    show LOAD_BUILD_CLASS = "LOAD_BUILD_CLASS"
    show LOAD_CLASSDEREF = "LOAD_CLASSDEREF"
    show LOAD_CLOSURE = "LOAD_CLOSURE"
    show LOAD_CONST = "LOAD_CONST"
    show LOAD_DEREF = "LOAD_DEREF"
    show LOAD_FAST = "LOAD_FAST"
    show LOAD_GLOBAL = "LOAD_GLOBAL"
    show LOAD_LOCALS = "LOAD_LOCALS"
    show LOAD_METHOD = "LOAD_METHOD"
    show LOAD_NAME = "LOAD_NAME"
    show MAKE_CLOSURE = "MAKE_CLOSURE"
    show MAKE_FUNCTION = "MAKE_FUNCTION"
    show MAP_ADD = "MAP_ADD"
    show NOP = "NOP"
    show POP_BLOCK = "POP_BLOCK"
    show POP_EXCEPT = "POP_EXCEPT"
    show POP_FINALLY = "POP_FINALLY"
    show POP_JUMP_IF_FALSE = "POP_JUMP_IF_FALSE"
    show POP_JUMP_IF_TRUE = "POP_JUMP_IF_TRUE"
    show POP_TOP = "POP_TOP"
    show PRINT_EXPR = "PRINT_EXPR"
    show PRINT_ITEM = "PRINT_ITEM"
    show PRINT_ITEM_TO = "PRINT_ITEM_TO"
    show PRINT_NEWLINE = "PRINT_NEWLINE"
    show PRINT_NEWLINE_TO = "PRINT_NEWLINE_TO"
    show RAISE_VARARGS = "RAISE_VARARGS"
    show RETURN_VALUE = "RETURN_VALUE"
    show ROT_FOUR = "ROT_FOUR"
    show ROT_THREE = "ROT_THREE"
    show ROT_TWO = "ROT_TWO"
    show SETUP_ANNOTATIONS = "SETUP_ANNOTATIONS"
    show SETUP_ASYNC_WITH = "SETUP_ASYNC_WITH"
    show SETUP_EXCEPT = "SETUP_EXCEPT"
    show SETUP_FINALLY = "SETUP_FINALLY"
    show SETUP_LOOP = "SETUP_LOOP"
    show SETUP_WITH = "SETUP_WITH"
    show SET_ADD = "SET_ADD"
    show STOP_CODE = "STOP_CODE"
    show STORE_ANNOTATION = "STORE_ANNOTATION"
    show STORE_ATTR = "STORE_ATTR"
    show STORE_DEREF = "STORE_DEREF"
    show STORE_FAST = "STORE_FAST"
    show STORE_GLOBAL = "STORE_GLOBAL"
    show STORE_MAP = "STORE_MAP"
    show STORE_NAME = "STORE_NAME"
    show STORE_SUBSCR = "STORE_SUBSCR"
    show UNARY_CONVERT = "UNARY_CONVERT"
    show UNARY_INVERT = "UNARY_INVERT"
    show UNARY_NEGATIVE = "UNARY_NEGATIVE"
    show UNARY_NOT = "UNARY_NOT"
    show UNARY_POSITIVE = "UNARY_POSITIVE"
    show UNPACK_EX = "UNPACK_EX"
    show UNPACK_SEQUENCE = "UNPACK_SEQUENCE"
    show WITH_CLEANUP = "WITH_CLEANUP"
    show WITH_CLEANUP_FINISH = "WITH_CLEANUP_FINISH"
    show WITH_CLEANUP_START = "WITH_CLEANUP_START"
    show YIELD_FROM = "YIELD_FROM"
    show YIELD_VALUE = "YIELD_VALUE"