package gnu.expr;

import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.zxing.client.android.Intents;
import gnu.bytecode.ArrayType;
import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Field;
import gnu.bytecode.Method;
import gnu.bytecode.ObjectType;
import gnu.bytecode.Type;
import gnu.lists.FString;
import gnu.mapping.Symbol;
import gnu.mapping.Table2D;
import gnu.mapping.Values;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectOutput;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.IdentityHashMap;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class LitTable implements ObjectOutput {
    static Table2D staticTable = new Table2D(100);
    Compilation comp;
    Literal literalsChain;
    int literalsCount;
    ClassType mainClass;
    int stackPointer;
    IdentityHashMap literalTable = new IdentityHashMap(100);
    Object[] valueStack = new Object[20];
    Type[] typeStack = new Type[20];

    @Override // java.io.ObjectOutput, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.ObjectOutput
    public void flush() {
    }

    public LitTable(Compilation compilation) {
        this.comp = compilation;
        this.mainClass = compilation.mainClass;
    }

    public void emit() throws IOException, ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        for (Literal literal = this.literalsChain; literal != null; literal = literal.next) {
            writeObject(literal.value);
        }
        for (Literal literal2 = this.literalsChain; literal2 != null; literal2 = literal2.next) {
            emit(literal2, true);
        }
        this.literalTable = null;
        this.literalsCount = 0;
    }

    public void push(Object obj, Type type) {
        int i = this.stackPointer;
        Object[] objArr = this.valueStack;
        if (i >= objArr.length) {
            Object[] objArr2 = new Object[objArr.length * 2];
            Type[] typeArr = new Type[this.typeStack.length * 2];
            System.arraycopy(objArr, 0, objArr2, 0, i);
            System.arraycopy(this.typeStack, 0, typeArr, 0, this.stackPointer);
            this.valueStack = objArr2;
            this.typeStack = typeArr;
        }
        Object[] objArr3 = this.valueStack;
        int i2 = this.stackPointer;
        objArr3[i2] = obj;
        this.typeStack[i2] = type;
        this.stackPointer = i2 + 1;
    }

    public void error(String str) {
        throw new Error(str);
    }

    @Override // java.io.ObjectOutput, java.io.DataOutput
    public void write(int i) throws IOException {
        error("cannot handle call to write(int) when externalizing literal");
    }

    @Override // java.io.DataOutput
    public void writeBytes(String str) throws IOException {
        error("cannot handle call to writeBytes(String) when externalizing literal");
    }

    @Override // java.io.ObjectOutput, java.io.DataOutput
    public void write(byte[] bArr) throws IOException {
        error("cannot handle call to write(byte[]) when externalizing literal");
    }

    @Override // java.io.ObjectOutput, java.io.DataOutput
    public void write(byte[] bArr, int i, int i2) throws IOException {
        error("cannot handle call to write(byte[],int,int) when externalizing literal");
    }

    @Override // java.io.DataOutput
    public void writeBoolean(boolean z) {
        push(new Boolean(z), Type.booleanType);
    }

    @Override // java.io.DataOutput
    public void writeChar(int i) {
        push(new Character((char) i), Type.charType);
    }

    @Override // java.io.DataOutput
    public void writeByte(int i) {
        push(new Byte((byte) i), Type.byteType);
    }

    @Override // java.io.DataOutput
    public void writeShort(int i) {
        push(new Short((short) i), Type.shortType);
    }

    @Override // java.io.DataOutput
    public void writeInt(int i) {
        push(new Integer(i), Type.intType);
    }

    @Override // java.io.DataOutput
    public void writeLong(long j) {
        push(new Long(j), Type.longType);
    }

    @Override // java.io.DataOutput
    public void writeFloat(float f) {
        push(new Float(f), Type.floatType);
    }

    @Override // java.io.DataOutput
    public void writeDouble(double d) {
        push(new Double(d), Type.doubleType);
    }

    @Override // java.io.DataOutput
    public void writeUTF(String str) {
        push(str, Type.string_type);
    }

    @Override // java.io.DataOutput
    public void writeChars(String str) {
        push(str, Type.string_type);
    }

    @Override // java.io.ObjectOutput
    public void writeObject(Object obj) throws IOException {
        Literal literalFindLiteral = findLiteral(obj);
        int i = literalFindLiteral.flags;
        if ((i & 3) != 0) {
            if (literalFindLiteral.field == null && obj != null && !(obj instanceof String)) {
                literalFindLiteral.assign(this);
            }
            int i2 = literalFindLiteral.flags;
            if ((i2 & 2) == 0) {
                literalFindLiteral.flags = i2 | 4;
            }
        } else {
            literalFindLiteral.flags = i | 1;
            int i3 = this.stackPointer;
            if ((obj instanceof FString) && ((FString) obj).size() < 65535) {
                push(obj.toString(), Type.string_type);
            } else if (obj instanceof Externalizable) {
                ((Externalizable) obj).writeExternal(this);
            } else if (obj instanceof Object[]) {
                for (Object obj2 : (Object[]) obj) {
                    writeObject(obj2);
                }
            } else if (obj != null && !(obj instanceof String) && !(literalFindLiteral.type instanceof ArrayType)) {
                if (obj instanceof BigInteger) {
                    writeChars(obj.toString());
                } else if (obj instanceof BigDecimal) {
                    BigDecimal bigDecimal = (BigDecimal) obj;
                    writeObject(bigDecimal.unscaledValue());
                    writeInt(bigDecimal.scale());
                } else if (obj instanceof Integer) {
                    push(obj, Type.intType);
                } else if (obj instanceof Short) {
                    push(obj, Type.shortType);
                } else if (obj instanceof Byte) {
                    push(obj, Type.byteType);
                } else if (obj instanceof Long) {
                    push(obj, Type.longType);
                } else if (obj instanceof Double) {
                    push(obj, Type.doubleType);
                } else if (obj instanceof Float) {
                    push(obj, Type.floatType);
                } else if (obj instanceof Character) {
                    push(obj, Type.charType);
                } else if (obj instanceof Class) {
                    push(obj, Type.java_lang_Class_type);
                } else if (obj instanceof Pattern) {
                    Pattern pattern = (Pattern) obj;
                    push(pattern.pattern(), Type.string_type);
                    push(Integer.valueOf(pattern.flags()), Type.intType);
                } else {
                    error(obj.getClass().getName().concat(" does not implement Externalizable"));
                }
            }
            int i4 = this.stackPointer - i3;
            if (i4 == 0) {
                literalFindLiteral.argValues = Values.noArgs;
                literalFindLiteral.argTypes = Type.typeArray0;
            } else {
                Object[] objArr = new Object[i4];
                literalFindLiteral.argValues = objArr;
                literalFindLiteral.argTypes = new Type[i4];
                System.arraycopy(this.valueStack, i3, objArr, 0, i4);
                System.arraycopy(this.typeStack, i3, literalFindLiteral.argTypes, 0, i4);
                this.stackPointer = i3;
            }
            literalFindLiteral.flags |= 2;
        }
        push(literalFindLiteral, literalFindLiteral.type);
    }

    public Literal findLiteral(Object obj) {
        Literal literal;
        if (obj == null) {
            return Literal.nullLiteral;
        }
        Literal literal2 = (Literal) this.literalTable.get(obj);
        if (literal2 != null) {
            return literal2;
        }
        if (this.comp.immediate) {
            return new Literal(obj, this);
        }
        Class<?> superclass = obj.getClass();
        Type typeMake = Type.make(superclass);
        synchronized (staticTable) {
            try {
                literal = (Literal) staticTable.get(obj, null, null);
                if (literal == null || literal.value != obj) {
                    if (typeMake instanceof ClassType) {
                        ClassType classType = (ClassType) typeMake;
                        while (true) {
                            Table2D table2D = staticTable;
                            Boolean bool = Boolean.TRUE;
                            if (table2D.get(superclass, bool, null) != null) {
                                break;
                            }
                            staticTable.put(superclass, bool, superclass);
                            for (Field fields = classType.getFields(); fields != null; fields = fields.getNext()) {
                                if ((fields.getModifiers() & 25) == 25) {
                                    try {
                                        Object obj2 = fields.getReflectField().get(null);
                                        if (obj2 != null && superclass.isInstance(obj2)) {
                                            Literal literal3 = new Literal(obj2, fields, this);
                                            staticTable.put(obj2, null, literal3);
                                            if (obj == obj2) {
                                                literal = literal3;
                                            }
                                        }
                                    } catch (Throwable th) {
                                        error("caught " + th + " getting static field " + fields);
                                    }
                                }
                            }
                            superclass = superclass.getSuperclass();
                            if (superclass == null) {
                                break;
                            }
                            classType = (ClassType) Type.make(superclass);
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (literal != null) {
            this.literalTable.put(obj, literal);
            return literal;
        }
        return new Literal(obj, typeMake, this);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0064 A[PHI: r8
      0x0064: PHI (r8v11 boolean) = (r8v7 boolean), (r8v12 boolean) binds: [B:28:0x005e, B:30:0x0061] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.bytecode.Method getMethod(gnu.bytecode.ClassType r30, java.lang.String r31, gnu.expr.Literal r32, boolean r33) throws java.lang.ArrayIndexOutOfBoundsException, java.lang.IllegalArgumentException, java.lang.NegativeArraySizeException {
        /*
            Method dump skipped, instructions count: 468
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.LitTable.getMethod(gnu.bytecode.ClassType, java.lang.String, gnu.expr.Literal, boolean):gnu.bytecode.Method");
    }

    public void putArgs(Literal literal, CodeAttr codeAttr) throws ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        Type[] typeArr = literal.argTypes;
        int length = typeArr.length;
        for (int i = 0; i < length; i++) {
            Object obj = literal.argValues[i];
            if (obj instanceof Literal) {
                emit((Literal) obj, false);
            } else {
                this.comp.compileConstant(obj, new StackTarget(typeArr[i]));
            }
        }
    }

    private void store(Literal literal, boolean z, CodeAttr codeAttr) {
        if (literal.field != null) {
            if (!z) {
                codeAttr.emitDup(literal.type);
            }
            codeAttr.emitPutStatic(literal.field);
        }
        literal.flags |= 8;
    }

    public void emit(Literal literal, boolean z) throws ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        Method method;
        boolean z2;
        boolean z3 = true;
        CodeAttr code = this.comp.getCode();
        Object obj = literal.value;
        if (obj == null) {
            if (z) {
                return;
            }
            code.emitPushNull();
            return;
        }
        if (obj instanceof String) {
            if (z) {
                return;
            }
            code.emitPushString(obj.toString());
            return;
        }
        if ((literal.flags & 8) != 0) {
            if (z) {
                return;
            }
            code.emitGetStatic(literal.field);
            return;
        }
        if (obj instanceof Object[]) {
            int length = literal.argValues.length;
            Type componentType = ((ArrayType) literal.type).getComponentType();
            code.emitPushInt(length);
            code.emitNewArray(componentType);
            store(literal, z, code);
            for (int i = 0; i < length; i++) {
                Literal literal2 = (Literal) literal.argValues[i];
                if (literal2.value != null) {
                    code.emitDup(componentType);
                    code.emitPushInt(i);
                    emit(literal2, false);
                    code.emitArrayStore(componentType);
                }
            }
            return;
        }
        Type type = literal.type;
        if (type instanceof ArrayType) {
            code.emitPushPrimArray(obj, (ArrayType) type);
            store(literal, z, code);
            return;
        }
        if (obj instanceof Class) {
            Class cls = (Class) obj;
            if (cls.isPrimitive()) {
                String name = cls.getName();
                if (name.equals("int")) {
                    name = PropertyTypeConstants.PROPERTY_TYPE_INTEGER;
                }
                code.emitGetStatic(ClassType.make("java.lang." + Character.toUpperCase(name.charAt(0)) + name.substring(1)).getDeclaredField(Intents.WifiConnect.TYPE));
            } else {
                this.comp.loadClassRef((ObjectType) Type.make(cls));
            }
            store(literal, z, code);
            return;
        }
        if ((obj instanceof ClassType) && !((ClassType) obj).isExisting()) {
            this.comp.loadClassRef((ClassType) literal.value);
            Method declaredMethod = Compilation.typeType.getDeclaredMethod("valueOf", 1);
            if (declaredMethod == null) {
                declaredMethod = Compilation.typeType.getDeclaredMethod("make", 1);
            }
            code.emitInvokeStatic(declaredMethod);
            code.emitCheckcast(Compilation.typeClassType);
            store(literal, z, code);
            return;
        }
        ClassType classType = (ClassType) literal.type;
        boolean z4 = (literal.flags & 4) != 0;
        Method declaredMethod2 = null;
        if (z4) {
            method = null;
            z2 = false;
        } else {
            method = !(literal.value instanceof Symbol) ? getMethod(classType, "valueOf", literal, true) : null;
            if (method == null) {
                Object obj2 = literal.value;
                if (!(obj2 instanceof Values)) {
                    method = getMethod(classType, obj2 instanceof Pattern ? "compile" : "make", literal, true);
                }
            }
            if (method != null) {
                z2 = true;
            } else {
                if (literal.argTypes.length > 0) {
                    method = getMethod(classType, "<init>", literal, false);
                }
                z2 = false;
            }
            if (method == null) {
                z4 = true;
            }
        }
        if (z4) {
            method = getMethod(classType, "set", literal, false);
        }
        if (method == null && literal.argTypes.length > 0) {
            error("no method to construct " + literal.type);
        }
        if (z2) {
            putArgs(literal, code);
            code.emitInvokeStatic(method);
        } else if (z4) {
            code.emitNew(classType);
            code.emitDup(classType);
            code.emitInvokeSpecial(classType.getDeclaredMethod("<init>", 0));
        } else {
            code.emitNew(classType);
            code.emitDup(classType);
            putArgs(literal, code);
            code.emitInvokeSpecial(method);
        }
        if (!z2 && !(literal.value instanceof Values)) {
            declaredMethod2 = classType.getDeclaredMethod("readResolve", 0);
        }
        if (declaredMethod2 != null) {
            code.emitInvokeVirtual(declaredMethod2);
            classType.emitCoerceFromObject(code);
        }
        if (!z || (z4 && method != null)) {
            z3 = false;
        }
        store(literal, z3, code);
        if (!z4 || method == null) {
            return;
        }
        if (!z) {
            code.emitDup(classType);
        }
        putArgs(literal, code);
        code.emitInvokeVirtual(method);
    }
}
