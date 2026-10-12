package gnu.bytecode;

import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import kotlin.UShort;

/* loaded from: classes2.dex */
public class CodeAttr extends Attribute implements AttrContainer {
    public static final int DONT_USE_JSR = 2;
    static final int FIXUP_CASE = 3;
    static final int FIXUP_DEFINE = 1;
    static final int FIXUP_DELETE3 = 8;
    static final int FIXUP_GOTO = 4;
    static final int FIXUP_JSR = 5;
    static final int FIXUP_LINE_NUMBER = 15;
    static final int FIXUP_LINE_PC = 14;
    static final int FIXUP_MOVE = 9;
    static final int FIXUP_MOVE_TO_END = 10;
    static final int FIXUP_NONE = 0;
    static final int FIXUP_SWITCH = 2;
    static final int FIXUP_TRANSFER = 6;
    static final int FIXUP_TRANSFER2 = 7;
    static final int FIXUP_TRY = 11;
    static final int FIXUP_TRY_END = 12;
    static final int FIXUP_TRY_HANDLER = 13;
    public static final int GENERATE_STACK_MAP_TABLE = 1;
    public static boolean instructionLineMode = false;
    int PC;
    int SP;
    Attribute attributes;
    byte[] code;
    ExitableBlock currentExitableBlock;
    short[] exception_table;
    int exception_table_length;
    int exitableBlockLevel;
    int fixup_count;
    Label[] fixup_labels;
    int[] fixup_offsets;
    int flags;
    IfState if_stack;
    LineNumbersAttr lines;
    Type[] local_types;
    public LocalVarsAttr locals;
    private int max_locals;
    private int max_stack;
    Label previousLabel;
    SourceDebugExtAttr sourceDbgExt;
    public StackMapTableAttr stackMap;
    public Type[] stack_types;
    TryState try_stack;
    private boolean unreachable_here;
    boolean[] varsSetInCurrentBlock;

    private int adjustTypedOp(char c) {
        if (c == 'F') {
            return 2;
        }
        if (c == 'S') {
            return 7;
        }
        if (c == 'Z') {
            return 5;
        }
        if (c == 'I') {
            return 0;
        }
        if (c == 'J') {
            return 1;
        }
        switch (c) {
            case 'B':
                return 5;
            case 'C':
                return 6;
            case 'D':
                return 3;
            default:
                return 4;
        }
    }

    @Override // gnu.bytecode.AttrContainer
    public final Attribute getAttributes() {
        return this.attributes;
    }

    @Override // gnu.bytecode.AttrContainer
    public final void setAttributes(Attribute attribute) {
        this.attributes = attribute;
    }

    public boolean useJsr() {
        return (this.flags & 2) == 0;
    }

    public final void fixupChain(Label label, Label label2) {
        fixupAdd(9, 0, label2);
        label.defineRaw(this);
    }

    public final void fixupAdd(int i, Label label) {
        fixupAdd(i, this.PC, label);
    }

    public final void fixupAdd(int i, int i2, Label label) {
        if (label != null && i != 1 && i != 0 && i != 2 && i != 11) {
            label.needsStackMapEntry = true;
        }
        int i3 = this.fixup_count;
        if (i3 == 0) {
            this.fixup_offsets = new int[30];
            this.fixup_labels = new Label[30];
        } else if (i3 == this.fixup_offsets.length) {
            int i4 = i3 * 2;
            Label[] labelArr = new Label[i4];
            System.arraycopy(this.fixup_labels, 0, labelArr, 0, i3);
            this.fixup_labels = labelArr;
            int[] iArr = new int[i4];
            System.arraycopy(this.fixup_offsets, 0, iArr, 0, i3);
            this.fixup_offsets = iArr;
        }
        this.fixup_offsets[i3] = i | (i2 << 4);
        this.fixup_labels[i3] = label;
        this.fixup_count = i3 + 1;
    }

    private final int fixupOffset(int i) {
        return this.fixup_offsets[i] >> 4;
    }

    private final int fixupKind(int i) {
        return this.fixup_offsets[i] & 15;
    }

    public final Method getMethod() {
        return (Method) getContainer();
    }

    public final int getPC() {
        return this.PC;
    }

    public final int getSP() {
        return this.SP;
    }

    public final ConstantPool getConstants() {
        return getMethod().classfile.constants;
    }

    public final boolean reachableHere() {
        return !this.unreachable_here;
    }

    public final void setReachable(boolean z) {
        this.unreachable_here = !z;
    }

    public final void setUnreachable() {
        this.unreachable_here = true;
    }

    public int getMaxStack() {
        return this.max_stack;
    }

    public int getMaxLocals() {
        return this.max_locals;
    }

    public void setMaxStack(int i) {
        this.max_stack = i;
    }

    public void setMaxLocals(int i) {
        this.max_locals = i;
    }

    public byte[] getCode() {
        return this.code;
    }

    public void setCode(byte[] bArr) {
        this.code = bArr;
        this.PC = bArr.length;
    }

    public void setCodeLength(int i) {
        this.PC = i;
    }

    public int getCodeLength() {
        return this.PC;
    }

    public CodeAttr(Method method) {
        super("Code");
        addToFrontOf(method);
        method.code = this;
        if (method.getDeclaringClass().getClassfileMajorVersion() >= 50) {
            this.flags |= 3;
        }
    }

    public final void reserve(int i) {
        byte[] bArr = this.code;
        if (bArr == null) {
            this.code = new byte[i + 100];
            return;
        }
        int i2 = this.PC;
        if (i2 + i > bArr.length) {
            byte[] bArr2 = new byte[(bArr.length * 2) + i];
            System.arraycopy(bArr, 0, bArr2, 0, i2);
            this.code = bArr2;
        }
    }

    public byte invert_opcode(byte b2) {
        int i = b2 & 255;
        if ((i < 153 || i > 166) && (i < 198 || i > 199)) {
            throw new Error("unknown opcode to invert_opcode");
        }
        return (byte) (i ^ 1);
    }

    public final void put1(int i) {
        byte[] bArr = this.code;
        int i2 = this.PC;
        this.PC = i2 + 1;
        bArr[i2] = (byte) i;
        this.unreachable_here = false;
    }

    public final void put2(int i) {
        byte[] bArr = this.code;
        int i2 = this.PC;
        int i3 = i2 + 1;
        this.PC = i3;
        bArr[i2] = (byte) (i >> 8);
        this.PC = i2 + 2;
        bArr[i3] = (byte) i;
        this.unreachable_here = false;
    }

    public final void put4(int i) {
        byte[] bArr = this.code;
        int i2 = this.PC;
        int i3 = i2 + 1;
        this.PC = i3;
        bArr[i2] = (byte) (i >> 24);
        int i4 = i2 + 2;
        this.PC = i4;
        bArr[i3] = (byte) (i >> 16);
        int i5 = i2 + 3;
        this.PC = i5;
        bArr[i4] = (byte) (i >> 8);
        this.PC = i2 + 4;
        bArr[i5] = (byte) i;
        this.unreachable_here = false;
    }

    public final void putIndex2(CpoolEntry cpoolEntry) {
        put2(cpoolEntry.index);
    }

    public final void putLineNumber(String str, int i) {
        if (str != null) {
            getMethod().classfile.setSourceFile(str);
        }
        putLineNumber(i);
    }

    public final void putLineNumber(int i) {
        SourceDebugExtAttr sourceDebugExtAttr = this.sourceDbgExt;
        if (sourceDebugExtAttr != null) {
            i = sourceDebugExtAttr.fixLine(i);
        }
        fixupAdd(14, null);
        fixupAdd(15, i, null);
    }

    public void noteParamTypes() {
        int i;
        Method method = getMethod();
        if ((method.access_flags & 8) == 0) {
            ClassType classType = method.classfile;
            Type typeUninitializedThis = classType;
            if ("<init>".equals(method.getName())) {
                boolean zEquals = "java.lang.Object".equals(classType.getName());
                typeUninitializedThis = classType;
                if (!zEquals) {
                    typeUninitializedThis = UninitializedType.uninitializedThis(classType);
                }
            }
            noteVarType(0, typeUninitializedThis);
            i = 1;
        } else {
            i = 0;
        }
        int length = method.arg_types.length;
        int i2 = 0;
        while (i2 < length) {
            Type type = method.arg_types[i2];
            int i3 = i + 1;
            noteVarType(i, type);
            int sizeInWords = type.getSizeInWords();
            while (true) {
                sizeInWords--;
                if (sizeInWords > 0) {
                    i3++;
                }
            }
            i2++;
            i = i3;
        }
        if ((this.flags & 1) != 0) {
            this.stackMap = new StackMapTableAttr();
            int[] iArr = new int[i + 20];
            int i4 = 0;
            int i5 = 0;
            while (i4 < i) {
                int iEncodeVerificationType = this.stackMap.encodeVerificationType(this.local_types[i4], this);
                int i6 = i5 + 1;
                iArr[i5] = iEncodeVerificationType;
                int i7 = iEncodeVerificationType & 255;
                if (i7 == 3 || i7 == 4) {
                    i4++;
                }
                i4++;
                i5 = i6;
            }
            StackMapTableAttr stackMapTableAttr = this.stackMap;
            stackMapTableAttr.encodedLocals = iArr;
            stackMapTableAttr.countLocals = i5;
            stackMapTableAttr.encodedStack = new int[10];
            stackMapTableAttr.countStack = 0;
        }
    }

    public void noteVarType(int i, Type type) {
        int i2;
        Type type2;
        int sizeInWords = type.getSizeInWords();
        Type[] typeArr = this.local_types;
        if (typeArr == null) {
            this.local_types = new Type[i + sizeInWords + 20];
        } else {
            int i3 = i + sizeInWords;
            if (i3 > typeArr.length) {
                Type[] typeArr2 = new Type[i3 * 2];
                System.arraycopy(typeArr, 0, typeArr2, 0, typeArr.length);
                this.local_types = typeArr2;
            }
        }
        Type[] typeArr3 = this.local_types;
        typeArr3[i] = type;
        boolean[] zArr = this.varsSetInCurrentBlock;
        if (zArr == null) {
            this.varsSetInCurrentBlock = new boolean[typeArr3.length];
        } else if (zArr.length <= i) {
            boolean[] zArr2 = new boolean[typeArr3.length];
            System.arraycopy(zArr, 0, zArr2, 0, zArr.length);
            this.varsSetInCurrentBlock = zArr2;
        }
        this.varsSetInCurrentBlock[i] = true;
        if (i > 0 && (type2 = this.local_types[i - 1]) != null && type2.getSizeInWords() == 2) {
            this.local_types[i2] = null;
        }
        while (true) {
            sizeInWords--;
            if (sizeInWords <= 0) {
                return;
            }
            i++;
            this.local_types[i] = null;
        }
    }

    public final void setTypes(Label label) {
        setTypes(label.localTypes, label.stackTypes);
    }

    public final void setTypes(Type[] typeArr, Type[] typeArr2) {
        int length = typeArr2.length;
        int length2 = typeArr.length;
        Type[] typeArr3 = this.local_types;
        if (typeArr3 != null) {
            if (length2 > 0) {
                System.arraycopy(typeArr, 0, typeArr3, 0, length2);
            }
            while (true) {
                Type[] typeArr4 = this.local_types;
                if (length2 >= typeArr4.length) {
                    break;
                }
                typeArr4[length2] = null;
                length2++;
            }
        }
        Type[] typeArr5 = this.stack_types;
        if (typeArr5 != null && length <= typeArr5.length) {
            int i = length;
            while (true) {
                Type[] typeArr6 = this.stack_types;
                if (i >= typeArr6.length) {
                    break;
                }
                typeArr6[i] = null;
                i++;
            }
        } else {
            this.stack_types = new Type[length];
        }
        System.arraycopy(typeArr2, 0, this.stack_types, 0, length);
        this.SP = length;
    }

    public final void pushType(Type type) {
        if (type.size == 0) {
            throw new Error("pushing void type onto stack");
        }
        Type[] typeArr = this.stack_types;
        if (typeArr == null || typeArr.length == 0) {
            this.stack_types = new Type[20];
        } else {
            int i = this.SP;
            if (i + 1 >= typeArr.length) {
                Type[] typeArr2 = new Type[typeArr.length * 2];
                System.arraycopy(typeArr, 0, typeArr2, 0, i);
                this.stack_types = typeArr2;
            }
        }
        if (type.size == 8) {
            Type[] typeArr3 = this.stack_types;
            int i2 = this.SP;
            this.SP = i2 + 1;
            typeArr3[i2] = Type.voidType;
        }
        Type[] typeArr4 = this.stack_types;
        int i3 = this.SP;
        int i4 = i3 + 1;
        this.SP = i4;
        typeArr4[i3] = type;
        if (i4 > this.max_stack) {
            this.max_stack = i4;
        }
    }

    public final Type popType() {
        int i = this.SP;
        if (i <= 0) {
            throw new Error("popType called with empty stack " + getMethod());
        }
        Type[] typeArr = this.stack_types;
        int i2 = i - 1;
        this.SP = i2;
        Type type = typeArr[i2];
        if (type.size != 8 || popType().isVoid()) {
            return type;
        }
        throw new Error("missing void type on stack");
    }

    public final Type topType() {
        return this.stack_types[this.SP - 1];
    }

    public void emitPop(int i) {
        while (i > 0) {
            reserve(1);
            if (popType().size > 4) {
                put1(88);
            } else if (i > 1) {
                if (popType().size > 4) {
                    put1(87);
                    reserve(1);
                }
                put1(88);
                i--;
            } else {
                put1(87);
            }
            i--;
        }
    }

    public Label getLabel() {
        Label label = new Label();
        label.defineRaw(this);
        return label;
    }

    public void emitSwap() {
        reserve(1);
        Type typePopType = popType();
        Type typePopType2 = popType();
        if (typePopType.size > 4 || typePopType2.size > 4) {
            pushType(typePopType2);
            pushType(typePopType);
            emitDupX();
            emitPop(1);
            return;
        }
        pushType(typePopType);
        put1(95);
        pushType(typePopType2);
    }

    public void emitDup() {
        reserve(1);
        Type type = topType();
        put1(type.size <= 4 ? 89 : 92);
        pushType(type);
    }

    public void emitDupX() {
        reserve(1);
        Type typePopType = popType();
        Type typePopType2 = popType();
        if (typePopType2.size <= 4) {
            put1(typePopType.size <= 4 ? 90 : 93);
        } else {
            put1(typePopType.size <= 4 ? 91 : 94);
        }
        pushType(typePopType);
        pushType(typePopType2);
        pushType(typePopType);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void emitDup(int r9, int r10) {
        /*
            r8 = this;
            if (r9 != 0) goto L3
            return
        L3:
            r0 = 1
            r8.reserve(r0)
            gnu.bytecode.Type r1 = r8.popType()
            r2 = 2
            java.lang.String r3 = "dup will cause invalid types on stack"
            r4 = 0
            r5 = 4
            if (r9 != r0) goto L1f
            int r6 = r1.size
            if (r6 > r5) goto L17
            goto L34
        L17:
            java.lang.Error r9 = new java.lang.Error
            java.lang.String r10 = "using dup for 2-word type"
            r9.<init>(r10)
            throw r9
        L1f:
            if (r9 != r2) goto L9e
            int r6 = r1.size
            if (r6 > r5) goto L34
            gnu.bytecode.Type r6 = r8.popType()
            int r7 = r6.size
            if (r7 > r5) goto L2e
            goto L35
        L2e:
            java.lang.Error r9 = new java.lang.Error
            r9.<init>(r3)
            throw r9
        L34:
            r6 = r4
        L35:
            if (r10 != 0) goto L40
            if (r9 != r0) goto L3c
            r9 = 89
            goto L3e
        L3c:
            r9 = 92
        L3e:
            r10 = r4
            goto L78
        L40:
            if (r10 != r0) goto L58
            if (r9 != r0) goto L47
            r9 = 90
            goto L49
        L47:
            r9 = 93
        L49:
            gnu.bytecode.Type r10 = r8.popType()
            int r0 = r10.size
            if (r0 > r5) goto L52
            goto L78
        L52:
            java.lang.Error r9 = new java.lang.Error
            r9.<init>(r3)
            throw r9
        L58:
            if (r10 != r2) goto L96
            if (r9 != r0) goto L5f
            r9 = 91
            goto L61
        L5f:
            r9 = 94
        L61:
            gnu.bytecode.Type r10 = r8.popType()
            int r0 = r10.size
            if (r0 > r5) goto L78
            gnu.bytecode.Type r4 = r8.popType()
            int r0 = r4.size
            if (r0 > r5) goto L72
            goto L78
        L72:
            java.lang.Error r9 = new java.lang.Error
            r9.<init>(r3)
            throw r9
        L78:
            r8.put1(r9)
            if (r6 == 0) goto L80
            r8.pushType(r6)
        L80:
            r8.pushType(r1)
            if (r4 == 0) goto L88
            r8.pushType(r4)
        L88:
            if (r10 == 0) goto L8d
            r8.pushType(r10)
        L8d:
            if (r6 == 0) goto L92
            r8.pushType(r6)
        L92:
            r8.pushType(r1)
            return
        L96:
            java.lang.Error r9 = new java.lang.Error
            java.lang.String r10 = "emitDup:  invalid offset"
            r9.<init>(r10)
            throw r9
        L9e:
            java.lang.Error r9 = new java.lang.Error
            java.lang.String r10 = "invalid size to emitDup"
            r9.<init>(r10)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.bytecode.CodeAttr.emitDup(int, int):void");
    }

    public void emitDup(int i) {
        emitDup(i, 0);
    }

    public void emitDup(Type type) {
        emitDup(type.size > 4 ? 2 : 1, 0);
    }

    public void enterScope(Scope scope) {
        scope.setStartPC(this);
        this.locals.enterScope(scope);
    }

    public Scope pushScope() {
        Scope scope = new Scope();
        if (this.locals == null) {
            this.locals = new LocalVarsAttr(getMethod());
        }
        enterScope(scope);
        LocalVarsAttr localVarsAttr = this.locals;
        if (localVarsAttr.parameter_scope == null) {
            localVarsAttr.parameter_scope = scope;
        }
        return scope;
    }

    public Scope getCurrentScope() {
        return this.locals.current_scope;
    }

    public Scope popScope() {
        LocalVarsAttr localVarsAttr = this.locals;
        Scope scope = localVarsAttr.current_scope;
        localVarsAttr.current_scope = scope.parent;
        scope.freeLocals(this);
        scope.end = getLabel();
        return scope;
    }

    public Variable getArg(int i) {
        return this.locals.parameter_scope.getVariable(i);
    }

    public Variable lookup(String str) {
        for (Scope scope = this.locals.current_scope; scope != null; scope = scope.parent) {
            Variable variableLookup = scope.lookup(str);
            if (variableLookup != null) {
                return variableLookup;
            }
        }
        return null;
    }

    public Variable addLocal(Type type) {
        return this.locals.current_scope.addVariable(this, type, null);
    }

    public Variable addLocal(Type type, String str) {
        return this.locals.current_scope.addVariable(this, type, str);
    }

    public void addParamLocals() {
        Method method = getMethod();
        if ((method.access_flags & 8) == 0) {
            addLocal(method.classfile).setParameter(true);
        }
        int length = method.arg_types.length;
        for (int i = 0; i < length; i++) {
            addLocal(method.arg_types[i]).setParameter(true);
        }
    }

    public final void emitPushConstant(int i, Type type) {
        char cCharAt = type.getSignature().charAt(0);
        if (cCharAt != 'F') {
            if (cCharAt != 'S' && cCharAt != 'Z' && cCharAt != 'I') {
                if (cCharAt == 'J') {
                    emitPushLong(i);
                    return;
                }
                switch (cCharAt) {
                    case 'B':
                    case 'C':
                        break;
                    case 'D':
                        emitPushDouble(i);
                        return;
                    default:
                        throw new Error("bad type to emitPushConstant");
                }
            }
            emitPushInt(i);
            return;
        }
        emitPushFloat(i);
    }

    public final void emitPushConstant(CpoolEntry cpoolEntry) {
        reserve(3);
        int i = cpoolEntry.index;
        if (cpoolEntry instanceof CpoolValue2) {
            put1(20);
            put2(i);
        } else if (i < 256) {
            put1(18);
            put1(i);
        } else {
            put1(19);
            put2(i);
        }
    }

    public final void emitPushInt(int i) {
        reserve(3);
        if (i >= -1 && i <= 5) {
            put1(i + 3);
        } else if (i >= -128 && i < 128) {
            put1(16);
            put1(i);
        } else if (i >= -32768 && i < 32768) {
            put1(17);
            put2(i);
        } else {
            emitPushConstant(getConstants().addInt(i));
        }
        pushType(Type.intType);
    }

    public void emitPushLong(long j) {
        if (j == 0 || j == 1) {
            reserve(1);
            put1(((int) j) + 9);
        } else {
            int i = (int) j;
            if (i == j) {
                emitPushInt(i);
                reserve(1);
                popType();
                put1(133);
            } else {
                emitPushConstant(getConstants().addLong(j));
            }
        }
        pushType(Type.longType);
    }

    public void emitPushFloat(float f) {
        int i = (int) f;
        if (i != f || i < -128 || i >= 128) {
            emitPushConstant(getConstants().addFloat(f));
        } else if (i >= 0 && i <= 2) {
            reserve(1);
            put1(i + 11);
            if (i == 0 && Float.floatToIntBits(f) != 0) {
                reserve(1);
                put1(118);
            }
        } else {
            emitPushInt(i);
            reserve(1);
            popType();
            put1(134);
        }
        pushType(Type.floatType);
    }

    public void emitPushDouble(double d) {
        int i = (int) d;
        if (i != d || i < -128 || i >= 128) {
            emitPushConstant(getConstants().addDouble(d));
        } else if (i == 0 || i == 1) {
            reserve(1);
            put1(i + 14);
            if (i == 0 && Double.doubleToLongBits(d) != 0) {
                reserve(1);
                put1(119);
            }
        } else {
            emitPushInt(i);
            reserve(1);
            popType();
            put1(135);
        }
        pushType(Type.doubleType);
    }

    public static final String calculateSplit(String str) {
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(20);
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = str.charAt(i3);
            int i4 = cCharAt >= 2048 ? 3 : (cCharAt >= 128 || cCharAt == 0) ? 2 : 1;
            if (i2 + i4 > 65535) {
                stringBuffer.append((char) (i3 - i));
                i = i3;
                i2 = 0;
            }
            i2 += i4;
        }
        stringBuffer.append((char) (length - i));
        return stringBuffer.toString();
    }

    public final void emitPushString(String str) {
        if (str == null) {
            emitPushNull();
            return;
        }
        int length = str.length();
        String strCalculateSplit = calculateSplit(str);
        int length2 = strCalculateSplit.length();
        if (length2 <= 1) {
            emitPushConstant(getConstants().addString(str));
            pushType(Type.javalangStringType);
            return;
        }
        if (length2 == 2) {
            char cCharAt = strCalculateSplit.charAt(0);
            emitPushString(str.substring(0, cCharAt));
            emitPushString(str.substring(cCharAt));
            emitInvokeVirtual(Type.javalangStringType.getDeclaredMethod("concat", 1));
        } else {
            ClassType classTypeMake = ClassType.make("java.lang.StringBuffer");
            emitNew(classTypeMake);
            emitDup(classTypeMake);
            emitPushInt(length);
            emitInvokeSpecial(classTypeMake.getDeclaredMethod("<init>", new Type[]{Type.intType}));
            Method declaredMethod = classTypeMake.getDeclaredMethod("append", new Type[]{Type.javalangStringType});
            int i = 0;
            int i2 = 0;
            while (i < length2) {
                emitDup(classTypeMake);
                int iCharAt = strCalculateSplit.charAt(i) + i2;
                emitPushString(str.substring(i2, iCharAt));
                emitInvokeVirtual(declaredMethod);
                i++;
                i2 = iCharAt;
            }
            emitInvokeVirtual(Type.toString_method);
        }
        if (str == str.intern()) {
            emitInvokeVirtual(Type.javalangStringType.getDeclaredMethod("intern", 0));
        }
    }

    public final void emitPushClass(ObjectType objectType) {
        emitPushConstant(getConstants().addClass(objectType));
        pushType(Type.javalangClassType);
    }

    public void emitPushNull() {
        reserve(1);
        put1(1);
        pushType(Type.nullType);
    }

    public void emitPushDefaultValue(Type type) {
        Type implementationType = type.getImplementationType();
        if (implementationType instanceof PrimType) {
            emitPushConstant(0, implementationType);
        } else {
            emitPushNull();
        }
    }

    public void emitStoreDefaultValue(Variable variable) {
        emitPushDefaultValue(variable.getType());
        emitStore(variable);
    }

    public final void emitPushThis() {
        emitLoad(this.locals.used[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0043, code lost:
    
        if (r16 == 0.0d) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0049, code lost:
    
        r15 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004b, code lost:
    
        r10 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005a, code lost:
    
        if (r10 == 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005d, code lost:
    
        r15 = r22;
        r12 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006c, code lost:
    
        if (r10 == 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008e, code lost:
    
        if (r10 == 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a1, code lost:
    
        if (r10 == 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00af, code lost:
    
        if (r10 == 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00bd, code lost:
    
        if (r14 == 0.0d) goto L15;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0034. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void emitPushPrimArray(java.lang.Object r21, gnu.bytecode.ArrayType r22) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.bytecode.CodeAttr.emitPushPrimArray(java.lang.Object, gnu.bytecode.ArrayType):void");
    }

    public void emitNewArray(int i) {
        reserve(2);
        put1(188);
        put1(i);
    }

    public final void emitArrayLength() {
        if (!(popType() instanceof ArrayType)) {
            throw new Error("non-array type in emitArrayLength");
        }
        reserve(1);
        put1(FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SEEK);
        pushType(Type.intType);
    }

    private int adjustTypedOp(Type type) {
        return adjustTypedOp(type.getSignature().charAt(0));
    }

    private void emitTypedOp(int i, Type type) {
        reserve(1);
        put1(i + adjustTypedOp(type));
    }

    private void emitTypedOp(int i, char c) {
        reserve(1);
        put1(i + adjustTypedOp(c));
    }

    public void emitArrayStore(Type type) {
        popType();
        popType();
        popType();
        emitTypedOp(79, type);
    }

    public void emitArrayStore() {
        popType();
        popType();
        emitTypedOp(79, ((ArrayType) popType().getImplementationType()).getComponentType());
    }

    public void emitArrayLoad(Type type) {
        popType();
        popType();
        emitTypedOp(46, type);
        pushType(type);
    }

    public void emitArrayLoad() {
        popType();
        Type componentType = ((ArrayType) popType().getImplementationType()).getComponentType();
        emitTypedOp(46, componentType);
        pushType(componentType);
    }

    public void emitNew(ClassType classType) {
        reserve(3);
        Label label = new Label(this);
        label.defineRaw(this);
        put1(187);
        putIndex2(getConstants().addClass(classType));
        pushType(new UninitializedType(classType, label));
    }

    public void emitNewArray(Type type, int i) {
        if (popType().promote() != Type.intType) {
            throw new Error("non-int dim. spec. in emitNewArray");
        }
        int i2 = 4;
        if (type instanceof PrimType) {
            char cCharAt = type.getSignature().charAt(0);
            if (cCharAt == 'F') {
                i2 = 6;
            } else if (cCharAt == 'S') {
                i2 = 9;
            } else if (cCharAt != 'Z') {
                if (cCharAt == 'I') {
                    i2 = 10;
                } else if (cCharAt != 'J') {
                    switch (cCharAt) {
                        case 'B':
                            i2 = 8;
                            break;
                        case 'C':
                            i2 = 5;
                            break;
                        case 'D':
                            i2 = 7;
                            break;
                        default:
                            throw new Error("bad PrimType in emitNewArray");
                    }
                } else {
                    i2 = 11;
                }
            }
            emitNewArray(i2);
        } else if (type instanceof ObjectType) {
            reserve(3);
            put1(FullScreenVideoUtil.FULLSCREEN_VIDEO_DIALOG_FLAG);
            putIndex2(getConstants().addClass((ObjectType) type));
        } else {
            if (type instanceof ArrayType) {
                reserve(4);
                put1(197);
                putIndex2(getConstants().addClass(new ArrayType(type)));
                if (i < 1 || i > 255) {
                    throw new Error("dims out of range in emitNewArray");
                }
                put1(i);
                do {
                    i--;
                    if (i > 0) {
                    }
                } while (popType().promote() == Type.intType);
                throw new Error("non-int dim. spec. in emitNewArray");
            }
            throw new Error("unimplemented type in emitNewArray");
        }
        pushType(new ArrayType(type));
    }

    public void emitNewArray(Type type) {
        emitNewArray(type, 1);
    }

    private void emitBinop(int i) {
        Type typePromote = popType().promote();
        Type typePopType = popType();
        Type typePromote2 = typePopType.promote();
        if (typePromote2 != typePromote || !(typePromote2 instanceof PrimType)) {
            throw new Error("non-matching or bad types in binary operation");
        }
        emitTypedOp(i, typePromote2);
        pushType(typePopType);
    }

    private void emitBinop(int i, char c) {
        popType();
        popType();
        emitTypedOp(i, c);
        pushType(Type.signatureToPrimitive(c));
    }

    public void emitBinop(int i, Type type) {
        popType();
        popType();
        emitTypedOp(i, type);
        pushType(type);
    }

    public final void emitAdd(char c) {
        emitBinop(96, c);
    }

    public final void emitAdd(PrimType primType) {
        emitBinop(96, primType);
    }

    public final void emitAdd() {
        emitBinop(96);
    }

    public final void emitSub(char c) {
        emitBinop(100, c);
    }

    public final void emitSub(PrimType primType) {
        emitBinop(100, primType);
    }

    public final void emitSub() {
        emitBinop(100);
    }

    public final void emitMul() {
        emitBinop(104);
    }

    public final void emitDiv() {
        emitBinop(108);
    }

    public final void emitRem() {
        emitBinop(112);
    }

    public final void emitAnd() {
        emitBinop(126);
    }

    public final void emitIOr() {
        emitBinop(128);
    }

    public final void emitXOr() {
        emitBinop(130);
    }

    public final void emitShl() {
        emitShift(120);
    }

    public final void emitShr() {
        emitShift(122);
    }

    public final void emitUshr() {
        emitShift(124);
    }

    private void emitShift(int i) {
        Type typePromote = popType().promote();
        Type typePopType = popType();
        Type typePromote2 = typePopType.promote();
        PrimType primType = Type.intType;
        if (typePromote2 != primType && typePromote2 != Type.longType) {
            throw new Error("the value shifted must be an int or a long");
        }
        if (typePromote != primType) {
            throw new Error("the amount of shift must be an int");
        }
        emitTypedOp(i, typePromote2);
        pushType(typePopType);
    }

    public final void emitNot(Type type) {
        emitPushConstant(1, type);
        emitAdd();
        emitPushConstant(1, type);
        emitAnd();
    }

    public void emitPrimop(int i, int i2, Type type) {
        reserve(1);
        while (true) {
            i2--;
            if (i2 >= 0) {
                popType();
            } else {
                put1(i);
                pushType(type);
                return;
            }
        }
    }

    public void emitMaybeWide(int i, int i2) {
        if (i2 >= 256) {
            put1(FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_DURATION);
            put1(i);
            put2(i2);
        } else {
            put1(i);
            put1(i2);
        }
    }

    public final void emitLoad(Variable variable) {
        if (variable.dead()) {
            throw new Error("attempting to push dead variable");
        }
        int i = variable.offset;
        if (i < 0 || !variable.isSimple()) {
            throw new Error("attempting to load from unassigned variable " + variable + " simple:" + variable.isSimple() + ", offset: " + i);
        }
        Type typePromote = variable.getType().promote();
        reserve(4);
        int iAdjustTypedOp = adjustTypedOp(typePromote);
        if (i <= 3) {
            put1((iAdjustTypedOp * 4) + 26 + i);
        } else {
            emitMaybeWide(iAdjustTypedOp + 21, i);
        }
        pushType(variable.getType());
    }

    public void emitStore(Variable variable) {
        int i = variable.offset;
        if (i < 0 || !variable.isSimple()) {
            throw new Error("attempting to store in unassigned " + variable + " simple:" + variable.isSimple() + ", offset: " + i);
        }
        Type typePromote = variable.getType().promote();
        noteVarType(i, typePromote);
        reserve(4);
        popType();
        int iAdjustTypedOp = adjustTypedOp(typePromote);
        if (i <= 3) {
            put1((iAdjustTypedOp * 4) + 59 + i);
        } else {
            emitMaybeWide(iAdjustTypedOp + 54, i);
        }
    }

    public void emitInc(Variable variable, short s) {
        if (variable.dead()) {
            throw new Error("attempting to increment dead variable");
        }
        int i = variable.offset;
        if (i < 0 || !variable.isSimple()) {
            throw new Error("attempting to increment unassigned variable" + variable.getName() + " simple:" + variable.isSimple() + ", offset: " + i);
        }
        reserve(6);
        if (variable.getType().getImplementationType().promote() != Type.intType) {
            throw new Error("attempting to increment non-int variable");
        }
        if (i > 255 || s > 255 || s < -256) {
            put1(FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_DURATION);
            put1(132);
            put2(i);
            put2(s);
            return;
        }
        put1(132);
        put1(i);
        put1(s);
    }

    private final void emitFieldop(Field field, int i) {
        reserve(3);
        put1(i);
        putIndex2(getConstants().addFieldRef(field));
    }

    public final void emitGetStatic(Field field) {
        pushType(field.type);
        emitFieldop(field, 178);
    }

    public final void emitGetField(Field field) {
        popType();
        pushType(field.type);
        emitFieldop(field, 180);
    }

    public final void emitPutStatic(Field field) {
        popType();
        emitFieldop(field, 179);
    }

    public final void emitPutField(Field field) {
        popType();
        popType();
        emitFieldop(field, 181);
    }

    private int words(Type[] typeArr) {
        int length = typeArr.length;
        int i = 0;
        while (true) {
            length--;
            if (length < 0) {
                return i;
            }
            i = typeArr[length].size > 4 ? i + 2 : i + 1;
        }
    }

    public void emitInvokeMethod(Method method, int i) {
        Type typePopType;
        reserve(i == 185 ? 5 : 3);
        int length = method.arg_types.length;
        boolean z = i == 184;
        boolean z2 = i == 183 && "<init>".equals(method.getName());
        if (z != ((method.access_flags & 8) != 0)) {
            throw new Error("emitInvokeXxx static flag mis-match method.flags=" + method.access_flags);
        }
        if (!z && !z2) {
            length++;
        }
        put1(i);
        putIndex2(getConstants().addMethodRef(method));
        if (i == 185) {
            put1(words(method.arg_types) + 1);
            put1(0);
        }
        do {
            length--;
            if (length >= 0) {
                typePopType = popType();
            } else {
                if (z2) {
                    Type typePopType2 = popType();
                    if (!(typePopType2 instanceof UninitializedType)) {
                        throw new Error("calling <init> on already-initialized object");
                    }
                    ClassType classType = ((UninitializedType) typePopType2).ctype;
                    for (int i2 = 0; i2 < this.SP; i2++) {
                        Type[] typeArr = this.stack_types;
                        if (typeArr[i2] == typePopType2) {
                            typeArr[i2] = classType;
                        }
                    }
                    Variable[] variableArr = this.locals.used;
                    int length2 = variableArr == null ? 0 : variableArr.length;
                    while (true) {
                        length2--;
                        if (length2 < 0) {
                            break;
                        }
                        Variable variable = variableArr[length2];
                        if (variable != null && variable.type == typePopType2) {
                            variable.type = classType;
                        }
                    }
                    Type[] typeArr2 = this.local_types;
                    int length3 = typeArr2 != null ? typeArr2.length : 0;
                    while (true) {
                        length3--;
                        if (length3 < 0) {
                            break;
                        }
                        Type[] typeArr3 = this.local_types;
                        if (typeArr3[length3] == typePopType2) {
                            typeArr3[length3] = classType;
                        }
                    }
                }
                Type type = method.return_type;
                if (type.size != 0) {
                    pushType(type);
                    return;
                }
                return;
            }
        } while (!(typePopType instanceof UninitializedType));
        throw new Error("passing " + typePopType + " as parameter");
    }

    public void emitInvoke(Method method) {
        int i;
        if ((method.access_flags & 8) != 0) {
            i = 184;
        } else if (method.classfile.isInterface()) {
            i = 185;
        } else {
            i = "<init>".equals(method.getName()) ? 183 : 182;
        }
        emitInvokeMethod(method, i);
    }

    public void emitInvokeVirtual(Method method) {
        emitInvokeMethod(method, 182);
    }

    public void emitInvokeSpecial(Method method) {
        emitInvokeMethod(method, 183);
    }

    public void emitInvokeStatic(Method method) {
        emitInvokeMethod(method, 184);
    }

    public void emitInvokeInterface(Method method) {
        emitInvokeMethod(method, 185);
    }

    public final void emitTransfer(Label label, int i) {
        label.setTypes(this);
        fixupAdd(6, label);
        put1(i);
        this.PC += 2;
    }

    public final void emitGoto(Label label) {
        label.setTypes(this);
        fixupAdd(4, label);
        reserve(3);
        put1(167);
        this.PC += 2;
        setUnreachable();
    }

    public final void emitJsr(Label label) {
        fixupAdd(5, label);
        reserve(3);
        put1(168);
        this.PC += 2;
    }

    public ExitableBlock startExitableBlock(Type type, boolean z) {
        ExitableBlock exitableBlock = new ExitableBlock(type, this, z);
        exitableBlock.outer = this.currentExitableBlock;
        this.currentExitableBlock = exitableBlock;
        return exitableBlock;
    }

    public void endExitableBlock() {
        ExitableBlock exitableBlock = this.currentExitableBlock;
        exitableBlock.finish();
        this.currentExitableBlock = exitableBlock.outer;
    }

    public final void emitGotoIfCompare1(Label label, int i) {
        popType();
        reserve(3);
        emitTransfer(label, i);
    }

    public final void emitGotoIfIntEqZero(Label label) {
        emitGotoIfCompare1(label, 153);
    }

    public final void emitGotoIfIntNeZero(Label label) {
        emitGotoIfCompare1(label, 154);
    }

    public final void emitGotoIfIntLtZero(Label label) {
        emitGotoIfCompare1(label, 155);
    }

    public final void emitGotoIfIntGeZero(Label label) {
        emitGotoIfCompare1(label, 156);
    }

    public final void emitGotoIfIntGtZero(Label label) {
        emitGotoIfCompare1(label, 157);
    }

    public final void emitGotoIfIntLeZero(Label label) {
        emitGotoIfCompare1(label, 158);
    }

    public final void emitGotoIfCompare2(Label label, int i) {
        if (i < 153 || i > 158) {
            throw new Error("emitGotoIfCompare2: logop must be one of ifeq...ifle");
        }
        Type typePromote = popType().promote();
        Type typePromote2 = popType().promote();
        reserve(4);
        char cCharAt = typePromote2.getSignature().charAt(0);
        char cCharAt2 = typePromote.getSignature().charAt(0);
        boolean z = i == 155 || i == 158;
        if (cCharAt == 'I' && cCharAt2 == 'I') {
            i += 6;
        } else if (cCharAt == 'J' && cCharAt2 == 'J') {
            put1(148);
        } else if (cCharAt == 'F' && cCharAt2 == 'F') {
            put1(z ? 149 : 150);
        } else if (cCharAt == 'D' && cCharAt2 == 'D') {
            put1(z ? 151 : 152);
        } else {
            if ((cCharAt != 'L' && cCharAt != '[') || ((cCharAt2 != 'L' && cCharAt2 != '[') || i > 154)) {
                throw new Error("invalid types to emitGotoIfCompare2");
            }
            i += 12;
        }
        emitTransfer(label, i);
    }

    public final void emitGotoIfEq(Label label, boolean z) {
        emitGotoIfCompare2(label, z ? 154 : 153);
    }

    public final void emitGotoIfEq(Label label) {
        emitGotoIfCompare2(label, 153);
    }

    public final void emitGotoIfNE(Label label) {
        emitGotoIfCompare2(label, 154);
    }

    public final void emitGotoIfLt(Label label) {
        emitGotoIfCompare2(label, 155);
    }

    public final void emitGotoIfGe(Label label) {
        emitGotoIfCompare2(label, 156);
    }

    public final void emitGotoIfGt(Label label) {
        emitGotoIfCompare2(label, 157);
    }

    public final void emitGotoIfLe(Label label) {
        emitGotoIfCompare2(label, 158);
    }

    public final void emitIfCompare1(int i) {
        IfState ifState = new IfState(this);
        if (popType().promote() != Type.intType) {
            throw new Error("non-int type to emitIfCompare1");
        }
        reserve(3);
        emitTransfer(ifState.end_label, i);
        ifState.start_stack_size = this.SP;
    }

    public final void emitIfIntNotZero() {
        emitIfCompare1(153);
    }

    public final void emitIfIntEqZero() {
        emitIfCompare1(154);
    }

    public final void emitIfIntLEqZero() {
        emitIfCompare1(157);
    }

    public final void emitIfRefCompare1(int i) {
        IfState ifState = new IfState(this);
        if (!(popType() instanceof ObjectType)) {
            throw new Error("non-ref type to emitIfRefCompare1");
        }
        reserve(3);
        emitTransfer(ifState.end_label, i);
        ifState.start_stack_size = this.SP;
    }

    public final void emitIfNotNull() {
        emitIfRefCompare1(198);
    }

    public final void emitIfNull() {
        emitIfRefCompare1(199);
    }

    public final void emitIfIntCompare(int i) {
        IfState ifState = new IfState(this);
        popType();
        popType();
        reserve(3);
        emitTransfer(ifState.end_label, i);
        ifState.start_stack_size = this.SP;
    }

    public final void emitIfIntLt() {
        emitIfIntCompare(162);
    }

    public final void emitIfNEq() {
        IfState ifState = new IfState(this);
        emitGotoIfEq(ifState.end_label);
        ifState.start_stack_size = this.SP;
    }

    public final void emitIfEq() {
        IfState ifState = new IfState(this);
        emitGotoIfNE(ifState.end_label);
        ifState.start_stack_size = this.SP;
    }

    public final void emitIfLt() {
        IfState ifState = new IfState(this);
        emitGotoIfGe(ifState.end_label);
        ifState.start_stack_size = this.SP;
    }

    public final void emitIfGe() {
        IfState ifState = new IfState(this);
        emitGotoIfLt(ifState.end_label);
        ifState.start_stack_size = this.SP;
    }

    public final void emitIfGt() {
        IfState ifState = new IfState(this);
        emitGotoIfLe(ifState.end_label);
        ifState.start_stack_size = this.SP;
    }

    public final void emitIfLe() {
        IfState ifState = new IfState(this);
        emitGotoIfGt(ifState.end_label);
        ifState.start_stack_size = this.SP;
    }

    public void emitRet(Variable variable) {
        int i = variable.offset;
        if (i < 256) {
            reserve(2);
            put1(169);
            put1(i);
        } else {
            reserve(4);
            put1(FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_DURATION);
            put1(169);
            put2(i);
        }
    }

    public final void emitThen() {
        this.if_stack.start_stack_size = this.SP;
    }

    public final void emitIfThen() {
        new IfState(this, null);
    }

    public final void emitElse() {
        int i;
        Label label = this.if_stack.end_label;
        if (reachableHere()) {
            Label label2 = new Label(this);
            IfState ifState = this.if_stack;
            ifState.end_label = label2;
            int i2 = this.SP;
            int i3 = ifState.start_stack_size;
            int i4 = i2 - i3;
            ifState.stack_growth = i4;
            if (i4 > 0) {
                Type[] typeArr = new Type[i4];
                ifState.then_stacked_types = typeArr;
                System.arraycopy(this.stack_types, i3, typeArr, 0, i4);
            } else {
                ifState.then_stacked_types = new Type[0];
            }
            emitGoto(label2);
        } else {
            this.if_stack.end_label = null;
        }
        while (true) {
            int i5 = this.SP;
            i = this.if_stack.start_stack_size;
            if (i5 <= i) {
                break;
            } else {
                popType();
            }
        }
        this.SP = i;
        if (label != null) {
            label.define(this);
        }
        this.if_stack.doing_else = true;
    }

    public final void emitFi() {
        IfState ifState = this.if_stack;
        boolean z = false;
        if (!ifState.doing_else) {
            if (reachableHere() && this.SP != this.if_stack.start_stack_size) {
                throw new Error("at PC " + this.PC + " then clause grows stack with no else clause");
            }
        } else if (ifState.then_stacked_types != null) {
            int i = ifState.start_stack_size + ifState.stack_growth;
            if (!reachableHere()) {
                IfState ifState2 = this.if_stack;
                int i2 = ifState2.stack_growth;
                if (i2 > 0) {
                    System.arraycopy(ifState2.then_stacked_types, 0, this.stack_types, ifState2.start_stack_size, i2);
                }
                this.SP = i;
            } else if (this.SP != i) {
                throw new Error("at PC " + this.PC + ": SP at end of 'then' was " + i + " while SP at end of 'else' was " + this.SP);
            }
        } else if (this.unreachable_here) {
            z = true;
        }
        Label label = this.if_stack.end_label;
        if (label != null) {
            label.define(this);
        }
        if (z) {
            setUnreachable();
        }
        this.if_stack = this.if_stack.previous;
    }

    public final void emitConvert(Type type, Type type2) {
        String signature = type2.getSignature();
        String signature2 = type.getSignature();
        int i = -1;
        if (signature.length() == 1 || signature2.length() == 1) {
            char cCharAt = signature.charAt(0);
            char cCharAt2 = signature2.charAt(0);
            if (cCharAt2 == cCharAt) {
                return;
            }
            if (type.size < 4) {
                cCharAt2 = Access.INNERCLASS_CONTEXT;
            }
            if (type2.size < 4) {
                emitConvert(type, Type.intType);
                cCharAt2 = Access.INNERCLASS_CONTEXT;
            }
            if (cCharAt2 == cCharAt) {
                return;
            }
            if (cCharAt2 != 'D') {
                if (cCharAt2 != 'F') {
                    if (cCharAt2 != 'I') {
                        if (cCharAt2 == 'J') {
                            if (cCharAt == 'D') {
                                i = 138;
                            } else if (cCharAt == 'F') {
                                i = 137;
                            } else if (cCharAt == 'I') {
                                i = 136;
                            }
                        }
                    } else if (cCharAt == 'F') {
                        i = 134;
                    } else if (cCharAt == 'J') {
                        i = 133;
                    } else if (cCharAt != 'S') {
                        switch (cCharAt) {
                            case 'B':
                                i = 145;
                                break;
                            case 'C':
                                i = 146;
                                break;
                            case 'D':
                                i = 135;
                                break;
                        }
                    } else {
                        i = 147;
                    }
                } else if (cCharAt == 'D') {
                    i = 141;
                } else if (cCharAt == 'I') {
                    i = 139;
                } else if (cCharAt == 'J') {
                    i = 140;
                }
            } else if (cCharAt == 'F') {
                i = 144;
            } else if (cCharAt == 'I') {
                i = 142;
            } else if (cCharAt == 'J') {
                i = 143;
            }
        }
        if (i < 0) {
            throw new Error("unsupported CodeAttr.emitConvert");
        }
        reserve(1);
        popType();
        put1(i);
        pushType(type2);
    }

    private void emitCheckcast(Type type, int i) {
        reserve(3);
        popType();
        put1(i);
        if (type instanceof ObjectType) {
            putIndex2(getConstants().addClass((ObjectType) type));
            return;
        }
        throw new Error("unimplemented type " + type + " in emitCheckcast/emitInstanceof");
    }

    public static boolean castNeeded(Type type, Type type2) {
        if (type instanceof UninitializedType) {
            type = ((UninitializedType) type).getImplementationType();
        }
        while (type != type2) {
            if ((type2 instanceof ClassType) && (type instanceof ClassType) && ((ClassType) type).isSubclass((ClassType) type2)) {
                return false;
            }
            if (!(type2 instanceof ArrayType) || !(type instanceof ArrayType)) {
                return true;
            }
            type2 = ((ArrayType) type2).getComponentType();
            type = ((ArrayType) type).getComponentType();
        }
        return false;
    }

    public void emitCheckcast(Type type) {
        if (castNeeded(topType(), type)) {
            emitCheckcast(type, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE);
            pushType(type);
        }
    }

    public void emitInstanceof(Type type) {
        emitCheckcast(type, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_STOP);
        pushType(Type.booleanType);
    }

    public final void emitThrow() {
        popType();
        reserve(1);
        put1(FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PLAY);
        setUnreachable();
    }

    public final void emitMonitorEnter() {
        popType();
        reserve(1);
        put1(FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SOURCE);
    }

    public final void emitMonitorExit() {
        popType();
        reserve(1);
        put1(FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_FULLSCREEN);
    }

    public final void emitReturn() {
        if (this.try_stack != null) {
            new Error();
        }
        emitRawReturn();
    }

    public final void emitRawReturn() {
        if (getMethod().getReturnType().size == 0) {
            reserve(1);
            put1(177);
        } else {
            emitTypedOp(172, popType().promote());
        }
        setUnreachable();
    }

    public void addHandler(int i, int i2, int i3, int i4) {
        int i5 = this.exception_table_length * 4;
        short[] sArr = this.exception_table;
        if (sArr == null) {
            this.exception_table = new short[20];
        } else if (sArr.length <= i5) {
            short[] sArr2 = new short[sArr.length * 2];
            System.arraycopy(sArr, 0, sArr2, 0, i5);
            this.exception_table = sArr2;
        }
        short[] sArr3 = this.exception_table;
        sArr3[i5] = (short) i;
        sArr3[i5 + 1] = (short) i2;
        sArr3[i5 + 2] = (short) i3;
        sArr3[i5 + 3] = (short) i4;
        this.exception_table_length++;
    }

    public void addHandler(Label label, Label label2, ClassType classType) {
        int i = classType == null ? 0 : getConstants().addClass(classType).index;
        fixupAdd(11, label);
        fixupAdd(12, i, label2);
        Label label3 = new Label();
        label3.localTypes = label.localTypes;
        Type[] typeArr = new Type[1];
        label3.stackTypes = typeArr;
        if (classType == null) {
            classType = Type.javalangThrowableType;
        }
        typeArr[0] = classType;
        setTypes(label3);
        fixupAdd(13, 0, label3);
    }

    public void emitWithCleanupStart() {
        int i = this.SP;
        this.SP = 0;
        emitTryStart(false, null);
        this.SP = i;
    }

    public void emitWithCleanupCatch(Variable variable) {
        Type[] typeArr;
        emitTryEnd();
        int i = this.SP;
        if (i > 0) {
            typeArr = new Type[i];
            System.arraycopy(this.stack_types, 0, typeArr, 0, i);
            this.SP = 0;
        } else {
            typeArr = null;
        }
        TryState tryState = this.try_stack;
        tryState.savedTypes = typeArr;
        tryState.saved_result = variable;
        emitCatchStart(variable);
    }

    public void emitWithCleanupDone() {
        TryState tryState = this.try_stack;
        Variable variable = tryState.saved_result;
        tryState.saved_result = null;
        if (variable != null) {
            emitLoad(variable);
        }
        emitThrow();
        emitCatchEnd();
        Type[] typeArr = this.try_stack.savedTypes;
        emitTryCatchEnd();
        if (typeArr != null) {
            int length = typeArr.length;
            this.SP = length;
            Type[] typeArr2 = this.stack_types;
            if (length >= typeArr2.length) {
                this.stack_types = typeArr;
                return;
            } else {
                System.arraycopy(typeArr, 0, typeArr2, 0, length);
                return;
            }
        }
        this.SP = 0;
    }

    public void emitTryStart(boolean z, Type type) {
        Type[] typeArr;
        Variable[] variableArr = null;
        if (type != null && type.isVoid()) {
            type = null;
        }
        if (type != null || this.SP > 0) {
            pushScope();
        }
        int i = this.SP;
        if (i > 0) {
            variableArr = new Variable[i];
            int i2 = 0;
            while (this.SP > 0) {
                Variable variableAddLocal = addLocal(topType());
                emitStore(variableAddLocal);
                variableArr[i2] = variableAddLocal;
                i2++;
            }
        }
        TryState tryState = new TryState(this);
        tryState.savedStack = variableArr;
        Type[] typeArr2 = this.local_types;
        int length = typeArr2 == null ? 0 : typeArr2.length;
        while (length > 0 && this.local_types[length - 1] == null) {
            length--;
        }
        if (length == 0) {
            typeArr = Type.typeArray0;
        } else {
            Type[] typeArr3 = new Type[length];
            System.arraycopy(this.local_types, 0, typeArr3, 0, length);
            typeArr = typeArr3;
        }
        tryState.start_try.localTypes = typeArr;
        if (type != null) {
            tryState.saved_result = addLocal(type);
        }
        if (z) {
            tryState.finally_subr = new Label();
        }
    }

    public void emitTryEnd() {
        emitTryEnd(false);
    }

    private void emitTryEnd(boolean z) {
        TryState tryState = this.try_stack;
        if (tryState.tryClauseDone) {
            return;
        }
        tryState.tryClauseDone = true;
        if (tryState.finally_subr != null) {
            tryState.exception = addLocal(Type.javalangThrowableType);
        }
        gotoFinallyOrEnd(z);
        this.try_stack.end_try = getLabel();
    }

    public void emitCatchStart(Variable variable) {
        emitTryEnd(false);
        setTypes(this.try_stack.start_try.localTypes, Type.typeArray0);
        if (this.try_stack.try_type != null) {
            emitCatchEnd();
        }
        ClassType classType = variable == null ? null : (ClassType) variable.getType();
        TryState tryState = this.try_stack;
        tryState.try_type = classType;
        addHandler(tryState.start_try, tryState.end_try, classType);
        if (variable != null) {
            emitStore(variable);
        }
    }

    public void emitCatchEnd() {
        gotoFinallyOrEnd(false);
        this.try_stack.try_type = null;
    }

    private void gotoFinallyOrEnd(boolean z) {
        if (reachableHere()) {
            Variable variable = this.try_stack.saved_result;
            if (variable != null) {
                emitStore(variable);
            }
            TryState tryState = this.try_stack;
            if (tryState.end_label == null) {
                tryState.end_label = new Label();
            }
            if (this.try_stack.finally_subr == null || useJsr()) {
                Label label = this.try_stack.finally_subr;
                if (label != null) {
                    emitJsr(label);
                }
                emitGoto(this.try_stack.end_label);
                return;
            }
            if (this.try_stack.exitCases != null) {
                emitPushInt(0);
            }
            emitPushNull();
            if (z) {
                return;
            }
            emitGoto(this.try_stack.finally_subr);
        }
    }

    public void emitFinallyStart() {
        emitTryEnd(true);
        if (this.try_stack.try_type != null) {
            emitCatchEnd();
        }
        this.try_stack.end_try = getLabel();
        pushScope();
        if (useJsr()) {
            this.SP = 0;
            emitCatchStart(null);
            emitStore(this.try_stack.exception);
            emitJsr(this.try_stack.finally_subr);
            emitLoad(this.try_stack.exception);
            emitThrow();
        } else {
            setUnreachable();
            int iBeginFragment = beginFragment(new Label(this));
            TryState tryState = this.try_stack;
            addHandler(tryState.start_try, tryState.end_try, Type.javalangThrowableType);
            Variable variable = this.try_stack.saved_result;
            if (variable != null) {
                emitStoreDefaultValue(variable);
            }
            if (this.try_stack.exitCases != null) {
                emitPushInt(-1);
                emitSwap();
            }
            emitGoto(this.try_stack.finally_subr);
            endFragment(iBeginFragment);
        }
        this.try_stack.finally_subr.define(this);
        if (useJsr()) {
            ClassType classType = Type.objectType;
            this.try_stack.finally_ret_addr = addLocal(classType);
            pushType(classType);
            emitStore(this.try_stack.finally_ret_addr);
        }
    }

    public void emitFinallyEnd() {
        if (useJsr()) {
            emitRet(this.try_stack.finally_ret_addr);
        } else {
            TryState tryState = this.try_stack;
            if (tryState.end_label == null && tryState.exitCases == null) {
                emitThrow();
            } else {
                emitStore(tryState.exception);
                emitLoad(this.try_stack.exception);
                emitIfNotNull();
                emitLoad(this.try_stack.exception);
                emitThrow();
                emitElse();
                ExitableBlock exitableBlock = this.try_stack.exitCases;
                if (exitableBlock != null) {
                    SwitchState switchStateStartSwitch = startSwitch();
                    while (exitableBlock != null) {
                        ExitableBlock exitableBlock2 = exitableBlock.nextCase;
                        exitableBlock.nextCase = null;
                        exitableBlock.currentTryState = null;
                        TryState tryStateOuterHandler = TryState.outerHandler(this.try_stack.previous, exitableBlock.initialTryState);
                        if (tryStateOuterHandler == exitableBlock.initialTryState) {
                            switchStateStartSwitch.addCaseGoto(exitableBlock.switchCase, this, exitableBlock.endLabel);
                        } else {
                            switchStateStartSwitch.addCase(exitableBlock.switchCase, this);
                            exitableBlock.exit(tryStateOuterHandler);
                        }
                        exitableBlock = exitableBlock2;
                    }
                    this.try_stack.exitCases = null;
                    switchStateStartSwitch.addDefault(this);
                    switchStateStartSwitch.finish(this);
                }
                emitFi();
                setUnreachable();
            }
        }
        popScope();
        this.try_stack.finally_subr = null;
    }

    public void emitTryCatchEnd() {
        if (this.try_stack.finally_subr != null) {
            emitFinallyEnd();
        }
        TryState tryState = this.try_stack;
        Variable[] variableArr = tryState.savedStack;
        if (tryState.end_label == null) {
            setUnreachable();
        } else {
            setTypes(tryState.start_try.localTypes, Type.typeArray0);
            this.try_stack.end_label.define(this);
            if (variableArr != null) {
                int length = variableArr.length;
                while (true) {
                    length--;
                    if (length < 0) {
                        break;
                    }
                    Variable variable = variableArr[length];
                    if (variable != null) {
                        emitLoad(variable);
                    }
                }
            }
            Variable variable2 = this.try_stack.saved_result;
            if (variable2 != null) {
                emitLoad(variable2);
            }
        }
        if (this.try_stack.saved_result != null || variableArr != null) {
            popScope();
        }
        this.try_stack = this.try_stack.previous;
    }

    public final TryState getCurrentTry() {
        return this.try_stack;
    }

    public final boolean isInTry() {
        return this.try_stack != null;
    }

    public SwitchState startSwitch() {
        SwitchState switchState = new SwitchState(this);
        switchState.switchValuePushed(this);
        return switchState;
    }

    public void emitTailCall(boolean z, Scope scope) {
        if (z) {
            Method method = getMethod();
            int i = (method.access_flags & 8) != 0 ? 0 : 1;
            int length = method.arg_types.length;
            while (true) {
                length--;
                int i2 = 2;
                if (length < 0) {
                    break;
                }
                if (method.arg_types[length].size <= 4) {
                    i2 = 1;
                }
                i += i2;
            }
            int length2 = method.arg_types.length;
            while (true) {
                length2--;
                if (length2 < 0) {
                    break;
                }
                i -= method.arg_types[length2].size > 4 ? 2 : 1;
                emitStore(this.locals.used[i]);
            }
        }
        emitGoto(scope.start);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0057 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x00c3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0113 A[PHI: r1 r2 r5
      0x0113: PHI (r1v50 int) = (r1v6 int), (r1v6 int), (r1v6 int), (r1v6 int), (r1v6 int), (r1v6 int), (r1v54 int), (r1v55 int) binds: [B:41:0x00c0, B:63:0x0110, B:62:0x0108, B:61:0x0106, B:53:0x00f2, B:50:0x00e5, B:45:0x00cc, B:44:0x00c9] A[DONT_GENERATE, DONT_INLINE]
      0x0113: PHI (r2v27 int) = (r2v2 int), (r2v2 int), (r2v28 int), (r2v29 int), (r2v2 int), (r2v30 int), (r2v2 int), (r2v2 int) binds: [B:41:0x00c0, B:63:0x0110, B:62:0x0108, B:61:0x0106, B:53:0x00f2, B:50:0x00e5, B:45:0x00cc, B:44:0x00c9] A[DONT_GENERATE, DONT_INLINE]
      0x0113: PHI (r5v4 int) = (r5v3 int), (r5v3 int), (r5v5 int), (r5v6 int), (r5v3 int), (r5v7 int), (r5v3 int), (r5v3 int) binds: [B:41:0x00c0, B:63:0x0110, B:62:0x0108, B:61:0x0106, B:53:0x00f2, B:50:0x00e5, B:45:0x00cc, B:44:0x00c9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v6, types: [gnu.bytecode.Label[], int[]] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void processFixups() {
        /*
            Method dump skipped, instructions count: 934
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.bytecode.CodeAttr.processFixups():void");
    }

    private Label mergeLabels(Label label, Label label2) {
        if (label != null) {
            label2.setTypes(label);
        }
        return label2;
    }

    @Override // gnu.bytecode.Attribute
    public void assignConstants(ClassType classType) {
        LocalVarsAttr localVarsAttr = this.locals;
        if (localVarsAttr != null && localVarsAttr.container == null && !localVarsAttr.isEmpty()) {
            this.locals.addToFrontOf(this);
        }
        processFixups();
        StackMapTableAttr stackMapTableAttr = this.stackMap;
        if (stackMapTableAttr != null && stackMapTableAttr.numEntries > 0) {
            stackMapTableAttr.addToFrontOf(this);
        }
        if (instructionLineMode) {
            if (this.lines == null) {
                this.lines = new LineNumbersAttr(this);
            }
            this.lines.linenumber_count = 0;
            int codeLength = getCodeLength();
            for (int i = 0; i < codeLength; i++) {
                this.lines.put(i, i);
            }
        }
        super.assignConstants(classType);
        Attribute.assignConstants(this, classType);
    }

    @Override // gnu.bytecode.Attribute
    public final int getLength() {
        return Attribute.getLengthAll(this) + (this.exception_table_length * 8) + getCodeLength() + 12;
    }

    @Override // gnu.bytecode.Attribute
    public void write(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.max_stack);
        dataOutputStream.writeShort(this.max_locals);
        dataOutputStream.writeInt(this.PC);
        int i = 0;
        dataOutputStream.write(this.code, 0, this.PC);
        dataOutputStream.writeShort(this.exception_table_length);
        int i2 = this.exception_table_length;
        while (true) {
            i2--;
            if (i2 >= 0) {
                dataOutputStream.writeShort(this.exception_table[i]);
                dataOutputStream.writeShort(this.exception_table[i + 1]);
                dataOutputStream.writeShort(this.exception_table[i + 2]);
                dataOutputStream.writeShort(this.exception_table[i + 3]);
                i += 4;
            } else {
                Attribute.writeAll(this, dataOutputStream);
                return;
            }
        }
    }

    @Override // gnu.bytecode.Attribute
    public void print(ClassTypeWriter classTypeWriter) throws IOException {
        classTypeWriter.print("Attribute \"");
        classTypeWriter.print(getName());
        classTypeWriter.print("\", length:");
        classTypeWriter.print(getLength());
        classTypeWriter.print(", max_stack:");
        classTypeWriter.print(this.max_stack);
        classTypeWriter.print(", max_locals:");
        classTypeWriter.print(this.max_locals);
        classTypeWriter.print(", code_length:");
        int codeLength = getCodeLength();
        classTypeWriter.println(codeLength);
        int i = 0;
        disAssemble(classTypeWriter, 0, codeLength);
        if (this.exception_table_length > 0) {
            classTypeWriter.print("Exceptions (count: ");
            classTypeWriter.print(this.exception_table_length);
            classTypeWriter.println("):");
            int i2 = this.exception_table_length;
            while (true) {
                i2--;
                if (i2 < 0) {
                    break;
                }
                classTypeWriter.print("  start: ");
                classTypeWriter.print(this.exception_table[i] & UShort.MAX_VALUE);
                classTypeWriter.print(", end: ");
                classTypeWriter.print(this.exception_table[i + 1] & UShort.MAX_VALUE);
                classTypeWriter.print(", handler: ");
                classTypeWriter.print(this.exception_table[i + 2] & UShort.MAX_VALUE);
                classTypeWriter.print(", type: ");
                int i3 = this.exception_table[i + 3] & UShort.MAX_VALUE;
                if (i3 == 0) {
                    classTypeWriter.print("0 /* finally */");
                } else {
                    classTypeWriter.printOptionalIndex(i3);
                    classTypeWriter.printConstantTersely(i3, 7);
                }
                classTypeWriter.println();
                i += 4;
            }
        }
        classTypeWriter.printAttributes(this);
    }

    public void disAssemble(ClassTypeWriter classTypeWriter, int i, int i2) throws IOException {
        int i3;
        char c;
        int unsignedShort;
        int unsignedShort2;
        short unsignedShort3;
        int unsignedShort4;
        String str;
        int i4;
        int i5;
        int unsignedShort5;
        int i6;
        short unsignedShort6;
        int i7;
        int i8;
        char c2;
        int i9 = i;
        boolean z = false;
        while (i9 < i2) {
            int i10 = i9 + 1;
            byte b2 = this.code[i9];
            int i11 = b2 & 255;
            String string = Integer.toString(i9);
            int length = string.length();
            while (true) {
                length++;
                if (length > 3) {
                    break;
                } else {
                    classTypeWriter.print(' ');
                }
            }
            classTypeWriter.print(string);
            classTypeWriter.print(": ");
            if (i11 < 120) {
                if (i11 < 87) {
                    if (i11 < 3) {
                        print("nop;aconst_null;iconst_m1;", i11, classTypeWriter);
                    } else if (i11 < 9) {
                        classTypeWriter.print("iconst_");
                        classTypeWriter.print(i11 - 3);
                    } else if (i11 < 16) {
                        if (i11 < 11) {
                            i8 = i11 - 9;
                            c2 = 'l';
                        } else if (i11 < 14) {
                            i8 = i11 - 11;
                            c2 = 'f';
                        } else {
                            i8 = i11 - 14;
                            c2 = 'd';
                        }
                        classTypeWriter.print(c2);
                        classTypeWriter.print("const_");
                        classTypeWriter.print(i8);
                    } else if (i11 >= 21) {
                        if (i11 < 54) {
                            str = "load";
                        } else {
                            i11 -= 33;
                            str = "store";
                        }
                        if (i11 < 26) {
                            i4 = i11 - 21;
                            i5 = -1;
                        } else if (i11 < 46) {
                            int i12 = i11 - 26;
                            i5 = i12 % 4;
                            i4 = i12 >> 2;
                        } else {
                            i4 = i11 - 46;
                            i5 = -2;
                        }
                        classTypeWriter.print("ilfdabcs".charAt(i4));
                        if (i5 == -2) {
                            classTypeWriter.write(97);
                        }
                        classTypeWriter.print(str);
                        if (i5 >= 0) {
                            classTypeWriter.write(95);
                            classTypeWriter.print(i5);
                        } else if (i5 == -1) {
                            if (z) {
                                unsignedShort5 = readUnsignedShort(i10);
                                i6 = i9 + 3;
                            } else {
                                unsignedShort5 = this.code[i10] & 255;
                                i6 = i9 + 2;
                            }
                            i10 = i6;
                            classTypeWriter.print(' ');
                            classTypeWriter.print(unsignedShort5);
                            z = false;
                        }
                    } else if (i11 < 18) {
                        print("bipush ;sipush ;", i11 - 16, classTypeWriter);
                        if (i11 == 16) {
                            i7 = i9 + 2;
                            unsignedShort6 = this.code[i10];
                        } else {
                            unsignedShort6 = (short) readUnsignedShort(i10);
                            i7 = i9 + 3;
                        }
                        i10 = i7;
                        classTypeWriter.print((int) unsignedShort6);
                    } else {
                        char c3 = i11 == 18 ? (char) 1 : (char) 2;
                        print("ldc;ldc_w;ldc2_w;", i11 - 18, classTypeWriter);
                        c = c3;
                    }
                } else if (i11 >= 96) {
                    int i13 = i11 - 96;
                    classTypeWriter.print("ilfda".charAt(i13 % 4));
                    print("add;sub;mul;div;rem;neg;", i13 >> 2, classTypeWriter);
                } else {
                    print("pop;pop2;dup;dup_x1;dup_x2;dup2;dup2_x1;dup2_x2;swap;", i11 - 87, classTypeWriter);
                }
                c = 0;
            } else if (i11 < 170) {
                if (i11 < 132) {
                    classTypeWriter.print((b2 & 1) == 0 ? 'i' : 'l');
                    print("shl;shr;ushr;and;or;xor;", (i11 - 120) >> 1, classTypeWriter);
                } else if (i11 == 132) {
                    classTypeWriter.print("iinc");
                    if (!z) {
                        byte[] bArr = this.code;
                        int i14 = i9 + 2;
                        unsignedShort2 = bArr[i10] & 255;
                        i3 = i9 + 3;
                        unsignedShort3 = bArr[i14];
                    } else {
                        unsignedShort2 = readUnsignedShort(i10);
                        unsignedShort3 = (short) readUnsignedShort(i9 + 3);
                        i3 = i9 + 5;
                        z = false;
                    }
                    classTypeWriter.print(' ');
                    classTypeWriter.print(unsignedShort2);
                    classTypeWriter.print(' ');
                    classTypeWriter.print((int) unsignedShort3);
                    i10 = i3;
                } else if (i11 < 148) {
                    int i15 = i11 - 133;
                    classTypeWriter.print("ilfdi".charAt(i15 / 3));
                    classTypeWriter.print('2');
                    classTypeWriter.print("lfdifdildilfbcs".charAt(i15));
                } else if (i11 < 153) {
                    print("lcmp;fcmpl;fcmpg;dcmpl;dcmpg;", i11 - 148, classTypeWriter);
                } else if (i11 < 169) {
                    if (i11 < 159) {
                        classTypeWriter.print("if");
                        print("eq;ne;lt;ge;gt;le;", i11 - 153, classTypeWriter);
                    } else if (i11 < 167) {
                        if (i11 < 165) {
                            classTypeWriter.print("if_icmp");
                        } else {
                            classTypeWriter.print("if_acmp");
                            i11 -= 6;
                        }
                        print("eq;ne;lt;ge;gt;le;", i11 - 159, classTypeWriter);
                    } else {
                        print("goto;jsr;", i11 - 167, classTypeWriter);
                    }
                    short unsignedShort7 = (short) readUnsignedShort(i10);
                    i10 = i9 + 3;
                    classTypeWriter.print(' ');
                    classTypeWriter.print(i9 + unsignedShort7);
                } else {
                    classTypeWriter.print("ret ");
                    if (z) {
                        unsignedShort = readUnsignedShort(i10) + 2;
                    } else {
                        unsignedShort = this.code[i10] & 255;
                        i10 = i9 + 2;
                    }
                    classTypeWriter.print(unsignedShort);
                    c = 0;
                    z = false;
                }
                c = 0;
            } else {
                if (i11 < 172) {
                    if (this.fixup_count <= 0) {
                        i10 = (i9 + 4) & (-4);
                    }
                    int i16 = readInt(i10);
                    int i17 = i10 + 4;
                    if (i11 == 170) {
                        classTypeWriter.print("tableswitch");
                        int i18 = readInt(i17);
                        int i19 = readInt(i10 + 8);
                        i10 += 12;
                        classTypeWriter.print(" low: ");
                        classTypeWriter.print(i18);
                        classTypeWriter.print(" high: ");
                        classTypeWriter.print(i19);
                        classTypeWriter.print(" default: ");
                        classTypeWriter.print(i16 + i9);
                        while (i18 <= i19) {
                            int i20 = readInt(i10);
                            i10 += 4;
                            classTypeWriter.println();
                            classTypeWriter.print("  ");
                            classTypeWriter.print(i18);
                            classTypeWriter.print(": ");
                            classTypeWriter.print(i20 + i9);
                            i18++;
                        }
                    } else {
                        classTypeWriter.print("lookupswitch");
                        int i21 = readInt(i17);
                        i10 += 8;
                        classTypeWriter.print(" npairs: ");
                        classTypeWriter.print(i21);
                        classTypeWriter.print(" default: ");
                        classTypeWriter.print(i16 + i9);
                        while (true) {
                            i21--;
                            if (i21 < 0) {
                                break;
                            }
                            int i22 = readInt(i10);
                            int i23 = readInt(i10 + 4);
                            i10 += 8;
                            classTypeWriter.println();
                            classTypeWriter.print("  ");
                            classTypeWriter.print(i22);
                            classTypeWriter.print(": ");
                            classTypeWriter.print(i23 + i9);
                        }
                    }
                } else if (i11 < 178) {
                    if (i11 < 177) {
                        classTypeWriter.print("ilfda".charAt(i11 - 172));
                    }
                    classTypeWriter.print("return");
                } else {
                    if (i11 < 182) {
                        print("getstatic;putstatic;getfield;putfield;", i11 - 178, classTypeWriter);
                    } else if (i11 < 185) {
                        classTypeWriter.print("invoke");
                        print("virtual;special;static;", i11 - 182, classTypeWriter);
                    } else {
                        if (i11 == 185) {
                            classTypeWriter.print("invokeinterface (");
                            int unsignedShort8 = readUnsignedShort(i10);
                            int i24 = this.code[i9 + 3] & 255;
                            i3 = i9 + 5;
                            classTypeWriter.print(i24 + " args)");
                            classTypeWriter.printConstantOperand(unsignedShort8);
                        } else if (i11 < 196) {
                            print("186;new;newarray;anewarray;arraylength;athrow;checkcast;instanceof;monitorenter;monitorexit;", i11 - 186, classTypeWriter);
                            if (i11 != 187 && i11 != 189 && i11 != 192 && i11 != 193) {
                                if (i11 == 188) {
                                    i3 = i9 + 2;
                                    byte b3 = this.code[i10];
                                    classTypeWriter.print(' ');
                                    if (b3 >= 4 && b3 <= 11) {
                                        print("boolean;char;float;double;byte;short;int;long;", b3 - 4, classTypeWriter);
                                    } else {
                                        classTypeWriter.print((int) b3);
                                    }
                                }
                            }
                        } else if (i11 == 196) {
                            classTypeWriter.print("wide");
                            c = 0;
                            z = true;
                        } else if (i11 == 197) {
                            classTypeWriter.print("multianewarray");
                            int unsignedShort9 = readUnsignedShort(i10);
                            int i25 = i9 + 3;
                            classTypeWriter.printConstantOperand(unsignedShort9);
                            i3 = i9 + 4;
                            int i26 = this.code[i25] & 255;
                            classTypeWriter.print(' ');
                            classTypeWriter.print(i26);
                        } else if (i11 < 200) {
                            print("ifnull;ifnonnull;", i11 - 198, classTypeWriter);
                            short unsignedShort10 = (short) readUnsignedShort(i10);
                            i10 = i9 + 3;
                            classTypeWriter.print(' ');
                            classTypeWriter.print(i9 + unsignedShort10);
                        } else if (i11 < 202) {
                            print("goto_w;jsr_w;", i11 - 200, classTypeWriter);
                            int i27 = readInt(i10);
                            i10 = i9 + 5;
                            classTypeWriter.print(' ');
                            classTypeWriter.print(i9 + i27);
                        } else {
                            classTypeWriter.print(i11);
                        }
                        i10 = i3;
                    }
                    c = 2;
                }
                c = 0;
            }
            if (c > 0) {
                if (c == 1) {
                    i9 = i10 + 1;
                    unsignedShort4 = this.code[i10] & 255;
                } else {
                    unsignedShort4 = readUnsignedShort(i10);
                    i9 = i10 + 2;
                }
                classTypeWriter.printConstantOperand(unsignedShort4);
            } else {
                i9 = i10;
            }
            classTypeWriter.println();
        }
    }

    private int readUnsignedShort(int i) {
        byte[] bArr = this.code;
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    private int readInt(int i) {
        return readUnsignedShort(i + 2) | (readUnsignedShort(i) << 16);
    }

    private void print(String str, int i, PrintWriter printWriter) {
        int i2 = 0;
        int iIndexOf = -1;
        while (i >= 0) {
            i2 = iIndexOf + 1;
            iIndexOf = str.indexOf(59, i2);
            i--;
        }
        printWriter.write(str, i2, iIndexOf - i2);
    }

    public int beginFragment(Label label) {
        return beginFragment(new Label(), label);
    }

    public int beginFragment(Label label, Label label2) {
        int i = this.fixup_count;
        fixupAdd(10, label2);
        label.define(this);
        return i;
    }

    public void endFragment(int i) {
        this.fixup_offsets[i] = (this.fixup_count << 4) | 10;
        Label label = this.fixup_labels[i];
        fixupAdd(9, 0, null);
        label.define(this);
    }
}
