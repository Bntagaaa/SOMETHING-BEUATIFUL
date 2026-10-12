package gnu.expr;

import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;

/* loaded from: classes2.dex */
class Closure extends MethodProc {
    Object[][] evalFrames;
    LambdaExp lambda;

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        LambdaExp lambdaExp = this.lambda;
        return (lambdaExp.max_args << 12) | lambdaExp.min_args;
    }

    public Closure(LambdaExp lambdaExp, CallContext callContext) {
        this.lambda = lambdaExp;
        Object[][] objArr = callContext.evalFrames;
        if (objArr != null) {
            int length = objArr.length;
            while (length > 0 && objArr[length - 1] == null) {
                length--;
            }
            Object[][] objArr2 = new Object[length][];
            this.evalFrames = objArr2;
            System.arraycopy(objArr, 0, objArr2, 0, length);
        }
        setSymbol(this.lambda.getSymbol());
    }

    @Override // gnu.mapping.Procedure
    public int match0(CallContext callContext) {
        return matchN(new Object[0], callContext);
    }

    @Override // gnu.mapping.Procedure
    public int match1(Object obj, CallContext callContext) {
        return matchN(new Object[]{obj}, callContext);
    }

    @Override // gnu.mapping.Procedure
    public int match2(Object obj, Object obj2, CallContext callContext) {
        return matchN(new Object[]{obj, obj2}, callContext);
    }

    @Override // gnu.mapping.Procedure
    public int match3(Object obj, Object obj2, Object obj3, CallContext callContext) {
        return matchN(new Object[]{obj, obj2, obj3}, callContext);
    }

    @Override // gnu.mapping.Procedure
    public int match4(Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
        return matchN(new Object[]{obj, obj2, obj3, obj4}, callContext);
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00d6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00ec A[SYNTHETIC] */
    @Override // gnu.mapping.Procedure
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int matchN(java.lang.Object[] r20, gnu.mapping.CallContext r21) throws java.lang.ArrayIndexOutOfBoundsException, java.lang.IllegalArgumentException, java.lang.NegativeArraySizeException {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.Closure.matchN(java.lang.Object[], gnu.mapping.CallContext):int");
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        int iNesting = ScopeExp.nesting(this.lambda);
        Object[] objArr = callContext.values;
        Object[][] objArr2 = callContext.evalFrames;
        Object[][] objArr3 = this.evalFrames;
        int length = objArr3 == null ? 0 : objArr3.length;
        if (iNesting >= length) {
            length = iNesting;
        }
        Object[][] objArr4 = new Object[length + 10][];
        if (objArr3 != null) {
            System.arraycopy(objArr3, 0, objArr4, 0, objArr3.length);
        }
        objArr4[iNesting] = objArr;
        callContext.evalFrames = objArr4;
        try {
            Expression expression = this.lambda.body;
            if (expression == null) {
                StringBuffer stringBuffer = new StringBuffer("procedure ");
                String name = this.lambda.getName();
                if (name == null) {
                    name = "<anonymous>";
                }
                stringBuffer.append(name);
                int lineNumber = this.lambda.getLineNumber();
                if (lineNumber > 0) {
                    stringBuffer.append(" at line ");
                    stringBuffer.append(lineNumber);
                }
                stringBuffer.append(" was called before it was expanded");
                throw new RuntimeException(stringBuffer.toString());
            }
            expression.apply(callContext);
            callContext.evalFrames = objArr2;
        } catch (Throwable th) {
            callContext.evalFrames = objArr2;
            throw th;
        }
    }

    @Override // gnu.mapping.PropertySet
    public Object getProperty(Object obj, Object obj2) {
        Object property = super.getProperty(obj, obj2);
        return property == null ? this.lambda.getProperty(obj, obj2) : property;
    }
}
