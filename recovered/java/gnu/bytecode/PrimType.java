package gnu.bytecode;

/* loaded from: classes2.dex */
public class PrimType extends Type {
    private static final String numberHierarchy = "A:java.lang.Byte;B:java.lang.Short;C:java.lang.Integer;D:java.lang.Long;E:gnu.math.IntNum;E:java.gnu.math.BitInteger;G:gnu.math.RatNum;H:java.lang.Float;I:java.lang.Double;I:gnu.math.DFloNum;J:gnu.math.RealNum;K:gnu.math.Complex;L:gnu.math.Quantity;K:gnu.math.Numeric;N:java.lang.Number;";

    public PrimType(String str, String str2, int i, Class cls) {
        super(str, str2);
        this.size = i;
        this.reflectClass = cls;
        Type.registerTypeForClass(cls, this);
    }

    public PrimType(PrimType primType) {
        super(primType.this_name, primType.signature);
        this.size = primType.size;
        this.reflectClass = primType.reflectClass;
    }

    @Override // gnu.bytecode.Type
    public Object coerceFromObject(Object obj) {
        if (obj.getClass() == this.reflectClass) {
            return obj;
        }
        String str = this.signature;
        char cCharAt = (str == null || str.length() != 1) ? ' ' : this.signature.charAt(0);
        if (cCharAt == 'B') {
            return Byte.valueOf(((Number) obj).byteValue());
        }
        if (cCharAt == 'D') {
            return Double.valueOf(((Number) obj).doubleValue());
        }
        if (cCharAt == 'F') {
            return Float.valueOf(((Number) obj).floatValue());
        }
        if (cCharAt == 'S') {
            return Short.valueOf(((Number) obj).shortValue());
        }
        if (cCharAt == 'Z') {
            return (Boolean) obj;
        }
        if (cCharAt == 'I') {
            return Integer.valueOf(((Number) obj).intValue());
        }
        if (cCharAt == 'J') {
            return Long.valueOf(((Number) obj).longValue());
        }
        throw new ClassCastException("don't know how to coerce " + obj.getClass().getName() + " to " + getName());
    }

    public char charValue(Object obj) {
        return ((Character) obj).charValue();
    }

    public static boolean booleanValue(Object obj) {
        return !(obj instanceof Boolean) || ((Boolean) obj).booleanValue();
    }

    public ClassType boxedType() {
        String str;
        char cCharAt = getSignature().charAt(0);
        if (cCharAt == 'F') {
            str = "java.lang.Float";
        } else if (cCharAt == 'S') {
            str = "java.lang.Short";
        } else if (cCharAt == 'Z') {
            str = "java.lang.Boolean";
        } else if (cCharAt == 'I') {
            str = "java.lang.Integer";
        } else if (cCharAt != 'J') {
            switch (cCharAt) {
                case 'B':
                    str = "java.lang.Byte";
                    break;
                case 'C':
                    str = "java.lang.Character";
                    break;
                case 'D':
                    str = "java.lang.Double";
                    break;
                default:
                    str = null;
                    break;
            }
        } else {
            str = "java.lang.Long";
        }
        return ClassType.make(str);
    }

    @Override // gnu.bytecode.Type
    public void emitCoerceToObject(CodeAttr codeAttr) {
        Method declaredMethod;
        char cCharAt = getSignature().charAt(0);
        ClassType classTypeBoxedType = boxedType();
        if (cCharAt == 'Z') {
            codeAttr.emitIfIntNotZero();
            codeAttr.emitGetStatic(classTypeBoxedType.getDeclaredField("TRUE"));
            codeAttr.emitElse();
            codeAttr.emitGetStatic(classTypeBoxedType.getDeclaredField("FALSE"));
            codeAttr.emitFi();
            return;
        }
        Type[] typeArr = {this};
        if (codeAttr.getMethod().getDeclaringClass().classfileFormatVersion >= 3211264) {
            declaredMethod = classTypeBoxedType.getDeclaredMethod("valueOf", typeArr);
        } else {
            declaredMethod = classTypeBoxedType.getDeclaredMethod("<init>", typeArr);
            codeAttr.emitNew(classTypeBoxedType);
            codeAttr.emitDupX();
            codeAttr.emitSwap();
        }
        codeAttr.emitInvoke(declaredMethod);
    }

    @Override // gnu.bytecode.Type
    public void emitIsInstance(CodeAttr codeAttr) {
        String str = this.signature;
        char cCharAt = (str == null || str.length() != 1) ? ' ' : this.signature.charAt(0);
        if (cCharAt == 'Z') {
            Type.javalangBooleanType.emitIsInstance(codeAttr);
        } else if (cCharAt == 'V') {
            codeAttr.emitPop(1);
            codeAttr.emitPushInt(1);
        } else {
            Type.javalangNumberType.emitIsInstance(codeAttr);
        }
    }

    @Override // gnu.bytecode.Type
    public void emitCoerceFromObject(CodeAttr codeAttr) {
        String str = this.signature;
        char cCharAt = (str == null || str.length() != 1) ? ' ' : this.signature.charAt(0);
        if (cCharAt == 'Z') {
            codeAttr.emitCheckcast(Type.javalangBooleanType);
            codeAttr.emitInvokeVirtual(Type.booleanValue_method);
            return;
        }
        if (cCharAt == 'V') {
            codeAttr.emitPop(1);
            return;
        }
        codeAttr.emitCheckcast(Type.javalangNumberType);
        if (cCharAt == 'I' || cCharAt == 'S' || cCharAt == 'B') {
            codeAttr.emitInvokeVirtual(Type.intValue_method);
            return;
        }
        if (cCharAt == 'J') {
            codeAttr.emitInvokeVirtual(Type.longValue_method);
            return;
        }
        if (cCharAt == 'D') {
            codeAttr.emitInvokeVirtual(Type.doubleValue_method);
        } else if (cCharAt == 'F') {
            codeAttr.emitInvokeVirtual(Type.floatValue_method);
        } else {
            super.emitCoerceFromObject(codeAttr);
        }
    }

    public static int compare(PrimType primType, PrimType primType2) {
        char cCharAt = primType.signature.charAt(0);
        char cCharAt2 = primType2.signature.charAt(0);
        if (cCharAt == cCharAt2) {
            return 0;
        }
        if (cCharAt == 'V') {
            return 1;
        }
        if (cCharAt2 == 'V') {
            return -1;
        }
        if (cCharAt != 'Z' && cCharAt2 != 'Z') {
            if (cCharAt == 'C') {
                return primType2.size > 2 ? -1 : -3;
            }
            if (cCharAt2 == 'C') {
                return primType.size > 2 ? 1 : -3;
            }
            if (cCharAt == 'D') {
                return 1;
            }
            if (cCharAt2 == 'D') {
                return -1;
            }
            if (cCharAt == 'F') {
                return 1;
            }
            if (cCharAt2 == 'F') {
                return -1;
            }
            if (cCharAt == 'J') {
                return 1;
            }
            if (cCharAt2 == 'J') {
                return -1;
            }
            if (cCharAt == 'I') {
                return 1;
            }
            if (cCharAt2 == 'I') {
                return -1;
            }
            if (cCharAt == 'S') {
                return 1;
            }
            if (cCharAt2 == 'S') {
                return -1;
            }
        }
        return -3;
    }

    public Type promotedType() {
        char cCharAt = this.signature.charAt(0);
        if (cCharAt == 'B' || cCharAt == 'C' || cCharAt == 'I' || cCharAt == 'S' || cCharAt == 'Z') {
            return Type.intType;
        }
        return getImplementationType();
    }

    private static char findInHierarchy(String str) {
        int iIndexOf = numberHierarchy.indexOf(str) - 2;
        if (iIndexOf < 0) {
            return (char) 0;
        }
        return numberHierarchy.charAt(iIndexOf);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // gnu.bytecode.Type
    public int compare(Type type) {
        char c;
        char cFindInHierarchy;
        if (type instanceof PrimType) {
            if (type.getImplementationType() != type) {
                return Type.swappedCompareResult(type.compare(this));
            }
            return compare(this, (PrimType) type);
        }
        if (!(type instanceof ClassType)) {
            if (type instanceof ArrayType) {
                return -3;
            }
            return Type.swappedCompareResult(type.compare(this));
        }
        char cCharAt = this.signature.charAt(0);
        String name = type.getName();
        if (name == null) {
            return -1;
        }
        if (cCharAt == 'F') {
            c = 'H';
        } else if (cCharAt == 'S') {
            c = 'B';
        } else {
            if (cCharAt == 'V') {
                return 1;
            }
            if (cCharAt != 'Z') {
                c = Access.INNERCLASS_CONTEXT;
                if (cCharAt == 'I') {
                    c = Access.CLASS_CONTEXT;
                } else if (cCharAt != 'J') {
                    switch (cCharAt) {
                        case 'B':
                            c = 'A';
                            break;
                        case 'C':
                            break;
                        case 'D':
                            break;
                        default:
                            c = 0;
                            break;
                    }
                } else {
                    c = 'D';
                }
            } else if (name.equals("java.lang.Boolean")) {
                return 0;
            }
            if (name.equals("java.lang.Character")) {
                return 0;
            }
            c = 0;
        }
        if (c == 0 || (cFindInHierarchy = findInHierarchy(name)) == 0) {
            return (name.equals("java.lang.Object") || type == Type.toStringType) ? -1 : -3;
        }
        if (cFindInHierarchy == c) {
            return 0;
        }
        return cFindInHierarchy < c ? 1 : -1;
    }
}
