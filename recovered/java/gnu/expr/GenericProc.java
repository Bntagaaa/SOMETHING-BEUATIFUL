package gnu.expr;

import gnu.bytecode.Type;
import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.Procedure;
import gnu.mapping.WrongType;

/* loaded from: classes2.dex */
public class GenericProc extends MethodProc {
    int count;
    int maxArgs;
    protected MethodProc[] methods;
    int minArgs;

    public GenericProc(String str) {
        setName(str);
    }

    public GenericProc() {
    }

    public int getMethodCount() {
        return this.count;
    }

    public MethodProc getMethod(int i) {
        if (i >= this.count) {
            return null;
        }
        return this.methods[i];
    }

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return this.minArgs | (this.maxArgs << 12);
    }

    public synchronized void add(MethodProc[] methodProcArr) {
        try {
            int length = methodProcArr.length;
            if (this.methods == null) {
                this.methods = new MethodProc[length];
            }
            for (MethodProc methodProc : methodProcArr) {
                add(methodProc);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void addAtEnd(MethodProc methodProc) {
        try {
            int i = this.count;
            MethodProc[] methodProcArr = this.methods;
            if (methodProcArr == null) {
                this.methods = new MethodProc[8];
            } else if (i >= methodProcArr.length) {
                MethodProc[] methodProcArr2 = new MethodProc[methodProcArr.length * 2];
                System.arraycopy(methodProcArr, 0, methodProcArr2, 0, i);
                this.methods = methodProcArr2;
            }
            this.methods[i] = methodProc;
            int iMinArgs = methodProc.minArgs();
            if (iMinArgs < this.minArgs || this.count == 0) {
                this.minArgs = iMinArgs;
            }
            int iMaxArgs = methodProc.maxArgs();
            if (iMaxArgs == -1 || iMaxArgs > this.maxArgs) {
                this.maxArgs = iMaxArgs;
            }
            this.count = i + 1;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
    
        r2 = r4.methods;
        java.lang.System.arraycopy(r2, r1, r2, r1 + 1, r0 - r1);
        r4.methods[r1] = r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void add(gnu.mapping.MethodProc r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            int r0 = r4.count     // Catch: java.lang.Throwable -> L20
            r4.addAtEnd(r5)     // Catch: java.lang.Throwable -> L20
            r1 = 0
        L7:
            if (r1 >= r0) goto L25
            gnu.mapping.MethodProc[] r2 = r4.methods     // Catch: java.lang.Throwable -> L20
            r2 = r2[r1]     // Catch: java.lang.Throwable -> L20
            gnu.mapping.MethodProc r2 = gnu.mapping.MethodProc.mostSpecific(r5, r2)     // Catch: java.lang.Throwable -> L20
            if (r2 != r5) goto L22
            gnu.mapping.MethodProc[] r2 = r4.methods     // Catch: java.lang.Throwable -> L20
            int r3 = r1 + 1
            int r0 = r0 - r1
            java.lang.System.arraycopy(r2, r1, r2, r3, r0)     // Catch: java.lang.Throwable -> L20
            gnu.mapping.MethodProc[] r0 = r4.methods     // Catch: java.lang.Throwable -> L20
            r0[r1] = r5     // Catch: java.lang.Throwable -> L20
            goto L25
        L20:
            r5 = move-exception
            goto L27
        L22:
            int r1 = r1 + 1
            goto L7
        L25:
            monitor-exit(r4)
            return
        L27:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L20
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.GenericProc.add(gnu.mapping.MethodProc):void");
    }

    @Override // gnu.mapping.MethodProc, gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws Throwable {
        if (this.count == 1) {
            return this.methods[0].applyN(objArr);
        }
        Procedure.checkArgCount(this, objArr.length);
        CallContext callContext = CallContext.getInstance();
        for (int i = 0; i < this.count; i++) {
            if (this.methods[i].matchN(objArr, callContext) == 0) {
                return callContext.runUntilValue();
            }
        }
        throw new WrongType((Procedure) this, -1, (ClassCastException) null);
    }

    @Override // gnu.mapping.MethodProc
    public int isApplicable(Type[] typeArr) {
        int i = this.count;
        int i2 = -1;
        while (true) {
            i--;
            if (i < 0) {
                return i2;
            }
            int iIsApplicable = this.methods[i].isApplicable(typeArr);
            if (iIsApplicable == 1) {
                return 1;
            }
            if (iIsApplicable == 0) {
                i2 = 0;
            }
        }
    }

    @Override // gnu.mapping.Procedure
    public int match0(CallContext callContext) {
        if (this.count == 1) {
            return this.methods[0].match0(callContext);
        }
        for (int i = 0; i < this.count; i++) {
            if (this.methods[i].match0(callContext) == 0) {
                return 0;
            }
        }
        callContext.proc = null;
        return -1;
    }

    @Override // gnu.mapping.Procedure
    public int match1(Object obj, CallContext callContext) {
        if (this.count == 1) {
            return this.methods[0].match1(obj, callContext);
        }
        for (int i = 0; i < this.count; i++) {
            if (this.methods[i].match1(obj, callContext) == 0) {
                return 0;
            }
        }
        callContext.proc = null;
        return -1;
    }

    @Override // gnu.mapping.Procedure
    public int match2(Object obj, Object obj2, CallContext callContext) {
        if (this.count == 1) {
            return this.methods[0].match2(obj, obj2, callContext);
        }
        for (int i = 0; i < this.count; i++) {
            if (this.methods[i].match2(obj, obj2, callContext) == 0) {
                return 0;
            }
        }
        callContext.proc = null;
        return -1;
    }

    @Override // gnu.mapping.Procedure
    public int match3(Object obj, Object obj2, Object obj3, CallContext callContext) {
        if (this.count == 1) {
            return this.methods[0].match3(obj, obj2, obj3, callContext);
        }
        for (int i = 0; i < this.count; i++) {
            if (this.methods[i].match3(obj, obj2, obj3, callContext) == 0) {
                return 0;
            }
        }
        callContext.proc = null;
        return -1;
    }

    @Override // gnu.mapping.Procedure
    public int match4(Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
        if (this.count == 1) {
            return this.methods[0].match4(obj, obj2, obj3, obj4, callContext);
        }
        for (int i = 0; i < this.count; i++) {
            if (this.methods[i].match4(obj, obj2, obj3, obj4, callContext) == 0) {
                return 0;
            }
        }
        callContext.proc = null;
        return -1;
    }

    @Override // gnu.mapping.Procedure
    public int matchN(Object[] objArr, CallContext callContext) {
        Type typeMake;
        if (this.count == 1) {
            return this.methods[0].matchN(objArr, callContext);
        }
        int length = objArr.length;
        Type[] typeArr = new Type[length];
        Language defaultLanguage = Language.getDefaultLanguage();
        for (int i = 0; i < length; i++) {
            Object obj = objArr[i];
            if (obj == null) {
                typeMake = Type.nullType;
            } else {
                Class<?> cls = obj.getClass();
                if (defaultLanguage != null) {
                    typeMake = defaultLanguage.getTypeFor(cls);
                } else {
                    typeMake = Type.make(cls);
                }
            }
            typeArr[i] = typeMake;
        }
        int[] iArr = new int[this.count];
        int i2 = 0;
        int i3 = 0;
        int i4 = -1;
        for (int i5 = 0; i5 < this.count; i5++) {
            int iIsApplicable = this.methods[i5].isApplicable(typeArr);
            if (i2 == 0 && iIsApplicable >= 0) {
                i4 = i5;
            }
            if (iIsApplicable > 0) {
                i2++;
            } else if (iIsApplicable == 0) {
                i3++;
            }
            iArr[i5] = iIsApplicable;
        }
        if (i2 == 1 || (i2 == 0 && i3 == 1)) {
            return this.methods[i4].matchN(objArr, callContext);
        }
        for (int i6 = 0; i6 < this.count; i6++) {
            int i7 = iArr[i6];
            if (i7 >= 0 && ((i7 != 0 || i2 <= 0) && this.methods[i6].matchN(objArr, callContext) == 0)) {
                return 0;
            }
        }
        callContext.proc = null;
        return -1;
    }

    public void setProperty(Keyword keyword, Object obj) {
        String name = keyword.getName();
        if (name == "name") {
            setName(obj.toString());
        } else if (name == "method") {
            add((MethodProc) obj);
        } else {
            super.setProperty(keyword.asSymbol(), obj);
        }
    }

    public final void setProperties(Object[] objArr) {
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            Object obj = objArr[i];
            if (obj instanceof Keyword) {
                i++;
                setProperty((Keyword) obj, objArr[i]);
            } else {
                add((MethodProc) obj);
            }
            i++;
        }
    }

    public static GenericProc make(Object[] objArr) {
        GenericProc genericProc = new GenericProc();
        genericProc.setProperties(objArr);
        return genericProc;
    }

    public static GenericProc makeWithoutSorting(Object... objArr) {
        GenericProc genericProc = new GenericProc();
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            Object obj = objArr[i];
            if (obj instanceof Keyword) {
                i++;
                genericProc.setProperty((Keyword) obj, objArr[i]);
            } else {
                genericProc.addAtEnd((MethodProc) obj);
            }
            i++;
        }
        return genericProc;
    }
}
