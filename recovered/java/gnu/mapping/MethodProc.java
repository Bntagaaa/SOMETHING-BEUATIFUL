package gnu.mapping;

import gnu.bytecode.ArrayType;
import gnu.bytecode.Type;

/* loaded from: classes2.dex */
public abstract class MethodProc extends ProcedureN {
    public static final int NO_MATCH = -1;
    public static final int NO_MATCH_AMBIGUOUS = -851968;
    public static final int NO_MATCH_BAD_TYPE = -786432;
    public static final int NO_MATCH_TOO_FEW_ARGS = -983040;
    public static final int NO_MATCH_TOO_MANY_ARGS = -917504;
    static final Type[] unknownArgTypes = {Type.pointer_type};
    protected Object argTypes;

    public int isApplicable(Type[] typeArr) {
        int length = typeArr.length;
        int iNumArgs = numArgs();
        if (length < (iNumArgs & 4095) || (iNumArgs >= 0 && length > (iNumArgs >> 12))) {
            return -1;
        }
        int i = 1;
        while (true) {
            length--;
            if (length < 0) {
                return i;
            }
            int iCompare = getParameterType(length).compare(typeArr[length]);
            if (iCompare == -3) {
                return -1;
            }
            if (iCompare < 0) {
                i = 0;
            }
        }
    }

    public int numParameters() {
        int iNumArgs = numArgs();
        int i = iNumArgs >> 12;
        return i >= 0 ? i : (iNumArgs & 4095) + 1;
    }

    public void resolveParameterTypes() {
        this.argTypes = unknownArgTypes;
    }

    public Type getParameterType(int i) {
        if (!(this.argTypes instanceof Type[])) {
            resolveParameterTypes();
        }
        Type[] typeArr = (Type[]) this.argTypes;
        if (i < typeArr.length && (i < typeArr.length - 1 || maxArgs() >= 0)) {
            return typeArr[i];
        }
        if (maxArgs() < 0) {
            Type type = typeArr[typeArr.length - 1];
            if (type instanceof ArrayType) {
                return ((ArrayType) type).getComponentType();
            }
        }
        return Type.objectType;
    }

    public static RuntimeException matchFailAsException(int i, Procedure procedure, Object[] objArr) {
        short s = (short) i;
        if ((i & (-65536)) != -786432) {
            return new WrongArguments(procedure, objArr.length);
        }
        return new WrongType(procedure, s, s > 0 ? objArr[s - 1] : null);
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws Throwable {
        Procedure.checkArgCount(this, objArr.length);
        CallContext callContext = CallContext.getInstance();
        checkN(objArr, callContext);
        return callContext.runUntilValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x005e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gnu.mapping.MethodProc mostSpecific(gnu.mapping.MethodProc r8, gnu.mapping.MethodProc r9) {
        /*
            int r0 = r8.minArgs()
            int r1 = r9.minArgs()
            int r2 = r8.maxArgs()
            int r3 = r9.maxArgs()
            r4 = 0
            if (r2 < 0) goto L15
            if (r2 < r1) goto L19
        L15:
            if (r3 < 0) goto L1a
            if (r3 >= r0) goto L1a
        L19:
            return r4
        L1a:
            int r5 = r8.numParameters()
            int r6 = r9.numParameters()
            if (r5 <= r6) goto L25
            goto L26
        L25:
            r5 = r6
        L26:
            r6 = 1
            r7 = 0
            if (r2 == r3) goto L35
            if (r2 >= 0) goto L2e
            r2 = 1
            goto L2f
        L2e:
            r2 = 0
        L2f:
            if (r3 >= 0) goto L33
            r3 = 1
            goto L37
        L33:
            r3 = 0
            goto L37
        L35:
            r2 = 0
            goto L33
        L37:
            if (r0 >= r1) goto L3b
            r2 = 1
            goto L3e
        L3b:
            if (r0 <= r1) goto L3e
            r3 = 1
        L3e:
            if (r7 >= r5) goto L5c
            gnu.bytecode.Type r0 = r8.getParameterType(r7)
            gnu.bytecode.Type r1 = r9.getParameterType(r7)
            int r0 = r0.compare(r1)
            r1 = -1
            if (r0 != r1) goto L53
            if (r2 == 0) goto L52
            return r4
        L52:
            r3 = 1
        L53:
            if (r0 != r6) goto L59
            if (r3 == 0) goto L58
            return r4
        L58:
            r2 = 1
        L59:
            int r7 = r7 + 1
            goto L3e
        L5c:
            if (r3 == 0) goto L5f
            return r8
        L5f:
            if (r2 == 0) goto L62
            return r9
        L62:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.mapping.MethodProc.mostSpecific(gnu.mapping.MethodProc, gnu.mapping.MethodProc):gnu.mapping.MethodProc");
    }

    public static int mostSpecific(MethodProc[] methodProcArr, int i) {
        if (i <= 1) {
            return i - 1;
        }
        MethodProc methodProc = methodProcArr[0];
        MethodProc[] methodProcArr2 = null;
        int i2 = 0;
        for (int i3 = 1; i3 < i; i3++) {
            MethodProc methodProc2 = methodProcArr[i3];
            if (methodProc != null) {
                MethodProc methodProcMostSpecific = mostSpecific(methodProc, methodProc2);
                if (methodProcMostSpecific == null) {
                    if (methodProcArr2 == null) {
                        methodProcArr2 = new MethodProc[i];
                    }
                    methodProcArr2[0] = methodProc;
                    methodProcArr2[1] = methodProc2;
                    i2 = 2;
                    methodProc = null;
                } else if (methodProcMostSpecific == methodProc2) {
                    i2 = i3;
                    methodProc = methodProc2;
                }
            } else {
                for (int i4 = 0; i4 < i2; i4++) {
                    MethodProc methodProc3 = methodProcArr2[i4];
                    MethodProc methodProcMostSpecific2 = mostSpecific(methodProc3, methodProc2);
                    if (methodProcMostSpecific2 != methodProc3) {
                        if (methodProcMostSpecific2 == null) {
                            methodProcArr2[i2] = methodProc2;
                            i2++;
                            break;
                        }
                    }
                }
                i2 = i3;
                methodProc = methodProc2;
            }
        }
        if (methodProc == null) {
            return -1;
        }
        return i2;
    }
}
