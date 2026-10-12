package gnu.kawa.functions;

import gnu.bytecode.Type;
import gnu.expr.Language;
import gnu.kawa.reflect.Invoke;
import gnu.mapping.CallContext;
import gnu.mapping.Procedure;
import gnu.mapping.ProcedureN;
import gnu.mapping.WrongArguments;
import gnu.mapping.WrongType;
import java.lang.reflect.Array;
import java.util.List;

/* loaded from: classes2.dex */
public class ApplyToArgs extends ProcedureN {
    Language language;

    @Override // gnu.mapping.Procedure
    public int match1(Object obj, CallContext callContext) {
        if (obj instanceof Procedure) {
            return ((Procedure) obj).match0(callContext);
        }
        return super.match1(obj, callContext);
    }

    @Override // gnu.mapping.Procedure
    public int match2(Object obj, Object obj2, CallContext callContext) {
        if (obj instanceof Procedure) {
            return ((Procedure) obj).match1(obj2, callContext);
        }
        return super.match2(obj, obj2, callContext);
    }

    @Override // gnu.mapping.Procedure
    public int match3(Object obj, Object obj2, Object obj3, CallContext callContext) {
        if (obj instanceof Procedure) {
            return ((Procedure) obj).match2(obj2, obj3, callContext);
        }
        return super.match3(obj, obj2, obj3, callContext);
    }

    @Override // gnu.mapping.Procedure
    public int match4(Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
        if (obj instanceof Procedure) {
            return ((Procedure) obj).match3(obj2, obj3, obj4, callContext);
        }
        return super.match4(obj, obj2, obj3, obj4, callContext);
    }

    @Override // gnu.mapping.Procedure
    public int matchN(Object[] objArr, CallContext callContext) {
        int length = objArr.length;
        if (length > 0) {
            Object obj = objArr[0];
            if (obj instanceof Procedure) {
                Procedure procedure = (Procedure) obj;
                if (length == 1) {
                    return procedure.match0(callContext);
                }
                if (length == 2) {
                    return procedure.match1(objArr[1], callContext);
                }
                if (length == 3) {
                    return procedure.match2(objArr[1], objArr[2], callContext);
                }
                if (length == 4) {
                    return procedure.match3(objArr[1], objArr[2], objArr[3], callContext);
                }
                if (length == 5) {
                    return procedure.match4(objArr[1], objArr[2], objArr[3], objArr[4], callContext);
                }
                int i = length - 1;
                Object[] objArr2 = new Object[i];
                System.arraycopy(objArr, 1, objArr2, 0, i);
                return procedure.matchN(objArr2, callContext);
            }
        }
        return super.matchN(objArr, callContext);
    }

    @Override // gnu.mapping.Procedure
    public void check1(Object obj, CallContext callContext) {
        if (obj instanceof Procedure) {
            ((Procedure) obj).check0(callContext);
        } else {
            super.check1(obj, callContext);
        }
    }

    @Override // gnu.mapping.Procedure
    public void check2(Object obj, Object obj2, CallContext callContext) {
        if (obj instanceof Procedure) {
            ((Procedure) obj).check1(obj2, callContext);
        } else {
            super.check2(obj, obj2, callContext);
        }
    }

    @Override // gnu.mapping.Procedure
    public void check3(Object obj, Object obj2, Object obj3, CallContext callContext) {
        if (obj instanceof Procedure) {
            ((Procedure) obj).check2(obj2, obj3, callContext);
        } else {
            super.check3(obj, obj2, obj3, callContext);
        }
    }

    @Override // gnu.mapping.Procedure
    public void check4(Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
        if (obj instanceof Procedure) {
            ((Procedure) obj).check3(obj2, obj3, obj4, callContext);
        } else {
            super.check4(obj, obj2, obj3, obj4, callContext);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    @Override // gnu.mapping.Procedure
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void checkN(java.lang.Object[] r6, gnu.mapping.CallContext r7) {
        /*
            r5 = this;
            int r7 = r5.matchN(r6, r7)
            if (r7 == 0) goto L22
            int r0 = r6.length
            if (r0 <= 0) goto L1c
            r0 = 0
            r1 = r6[r0]
            boolean r2 = r1 instanceof gnu.mapping.Procedure
            if (r2 == 0) goto L1c
            gnu.mapping.Procedure r1 = (gnu.mapping.Procedure) r1
            int r2 = r6.length
            r3 = 1
            int r2 = r2 - r3
            java.lang.Object[] r4 = new java.lang.Object[r2]
            java.lang.System.arraycopy(r6, r3, r4, r0, r2)
            r6 = r4
            goto L1d
        L1c:
            r1 = r5
        L1d:
            java.lang.RuntimeException r6 = gnu.mapping.MethodProc.matchFailAsException(r7, r1, r6)
            throw r6
        L22:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.functions.ApplyToArgs.checkN(java.lang.Object[], gnu.mapping.CallContext):void");
    }

    public ApplyToArgs(String str, Language language) {
        super(str);
        this.language = language;
        setProperty(Procedure.validateApplyKey, "gnu.kawa.functions.CompilationHelpers:validateApplyToArgs");
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws Throwable {
        Object obj = objArr[0];
        if (obj instanceof Procedure) {
            int length = objArr.length - 1;
            Object[] objArr2 = new Object[length];
            System.arraycopy(objArr, 1, objArr2, 0, length);
            return ((Procedure) obj).applyN(objArr2);
        }
        if ((obj instanceof Type) || (obj instanceof Class)) {
            return Invoke.make.applyN(objArr);
        }
        if (obj instanceof List) {
            if (objArr.length != 2) {
                throw new WrongArguments(this, objArr.length);
            }
            return ((List) obj).get(((Number) objArr[1]).intValue());
        }
        if (obj.getClass().isArray()) {
            if (objArr.length != 2) {
                throw new WrongArguments(this, objArr.length);
            }
            return Array.get(obj, ((Number) objArr[1]).intValue());
        }
        throw new WrongType(this, 0, obj, "procedure");
    }
}
