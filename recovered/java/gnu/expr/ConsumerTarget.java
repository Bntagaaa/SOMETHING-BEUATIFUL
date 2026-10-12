package gnu.expr;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Method;
import gnu.bytecode.PrimType;
import gnu.bytecode.Scope;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.kawa.reflect.OccurrenceType;

/* loaded from: classes2.dex */
public class ConsumerTarget extends Target {
    Variable consumer;
    boolean isContextTarget;

    public ConsumerTarget(Variable variable) {
        this.consumer = variable;
    }

    public Variable getConsumerVariable() {
        return this.consumer;
    }

    public final boolean isContextTarget() {
        return this.isContextTarget;
    }

    public static Target makeContextTarget(Compilation compilation) {
        CodeAttr code = compilation.getCode();
        compilation.loadCallContext();
        code.emitGetField(Compilation.typeCallContext.getDeclaredField("consumer"));
        Variable variableAddVariable = code.getCurrentScope().addVariable(code, Compilation.typeConsumer, "$result");
        code.emitStore(variableAddVariable);
        ConsumerTarget consumerTarget = new ConsumerTarget(variableAddVariable);
        consumerTarget.isContextTarget = true;
        return consumerTarget;
    }

    public static void compileUsingConsumer(Expression expression, Compilation compilation, Target target) {
        if ((target instanceof ConsumerTarget) || (target instanceof IgnoreTarget)) {
            expression.compile(compilation, target);
        } else {
            ClassType classType = Compilation.typeValues;
            compileUsingConsumer(expression, compilation, target, classType.getDeclaredMethod("make", 0), classType.getDeclaredMethod("canonicalize", 0));
        }
    }

    public static void compileUsingConsumer(Expression expression, Compilation compilation, Target target, Method method, Method method2) {
        Type type;
        CodeAttr code = compilation.getCode();
        Scope scopePushScope = code.pushScope();
        if (method.getName() == "<init>") {
            ClassType declaringClass = method.getDeclaringClass();
            code.emitNew(declaringClass);
            code.emitDup(declaringClass);
            code.emitInvoke(method);
            type = declaringClass;
        } else {
            Type returnType = method.getReturnType();
            code.emitInvokeStatic(method);
            type = returnType;
        }
        Variable variableAddVariable = scopePushScope.addVariable(code, type, null);
        ConsumerTarget consumerTarget = new ConsumerTarget(variableAddVariable);
        code.emitStore(variableAddVariable);
        expression.compile(compilation, consumerTarget);
        code.emitLoad(variableAddVariable);
        if (method2 != null) {
            code.emitInvoke(method2);
        }
        code.popScope();
        Type returnType2 = type;
        if (method2 != null) {
            returnType2 = method2.getReturnType();
        }
        target.compileFromStack(compilation, returnType2);
    }

    @Override // gnu.expr.Target
    public void compileFromStack(Compilation compilation, Type type) {
        compileFromStack(compilation, type, -1);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x002f. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void compileFromStack(gnu.expr.Compilation r8, gnu.bytecode.Type r9, int r10) {
        /*
            r7 = this;
            gnu.bytecode.CodeAttr r8 = r8.getCode()
            gnu.bytecode.Type r9 = r9.getImplementationType()
            boolean r0 = r9 instanceof gnu.bytecode.PrimType
            r1 = 1
            r2 = 0
            r3 = 0
            if (r0 == 0) goto L54
            java.lang.String r0 = r9.getSignature()
            char r0 = r0.charAt(r3)
            r4 = 70
            if (r0 == r4) goto L4f
            r4 = 83
            if (r0 == r4) goto L4a
            r4 = 86
            if (r0 == r4) goto Lb5
            r4 = 90
            if (r0 == r4) goto L45
            r4 = 73
            if (r0 == r4) goto L4a
            r4 = 74
            if (r0 == r4) goto L40
            switch(r0) {
                case 66: goto L4a;
                case 67: goto L3b;
                case 68: goto L35;
                default: goto L32;
            }
        L32:
            r4 = r2
            r5 = r4
            goto L79
        L35:
            gnu.bytecode.PrimType r4 = gnu.bytecode.Type.doubleType
            java.lang.String r5 = "writeDouble"
        L39:
            r6 = 1
            goto L7a
        L3b:
            gnu.bytecode.PrimType r4 = gnu.bytecode.Type.charType
            java.lang.String r5 = "append"
            goto L79
        L40:
            gnu.bytecode.PrimType r4 = gnu.bytecode.Type.longType
            java.lang.String r5 = "writeLong"
            goto L39
        L45:
            gnu.bytecode.PrimType r4 = gnu.bytecode.Type.booleanType
            java.lang.String r5 = "writeBoolean"
            goto L79
        L4a:
            gnu.bytecode.PrimType r4 = gnu.bytecode.Type.intType
            java.lang.String r5 = "writeInt"
            goto L79
        L4f:
            gnu.bytecode.PrimType r4 = gnu.bytecode.Type.floatType
            java.lang.String r5 = "writeFloat"
            goto L79
        L54:
            if (r10 == r1) goto L74
            boolean r0 = gnu.kawa.reflect.OccurrenceType.itemCountIsOne(r9)
            if (r0 == 0) goto L5d
            goto L74
        L5d:
            gnu.bytecode.ClassType r9 = gnu.expr.Compilation.typeValues
            java.lang.String r0 = "writeValues"
            r1 = 2
            gnu.bytecode.Method r9 = r9.getDeclaredMethod(r0, r1)
            gnu.bytecode.Variable r0 = r7.consumer
            r8.emitLoad(r0)
            if (r10 != 0) goto L70
            r8.emitSwap()
        L70:
            r8.emitInvokeStatic(r9)
            return
        L74:
            gnu.bytecode.ClassType r4 = gnu.bytecode.Type.pointer_type
            java.lang.String r5 = "writeObject"
            r0 = 0
        L79:
            r6 = 0
        L7a:
            if (r10 < 0) goto L7d
            goto L9d
        L7d:
            if (r6 == 0) goto L95
            r8.pushScope()
            gnu.bytecode.Variable r9 = r8.addLocal(r9)
            r8.emitStore(r9)
            gnu.bytecode.Variable r10 = r7.consumer
            r8.emitLoad(r10)
            r8.emitLoad(r9)
            r8.popScope()
            goto L9d
        L95:
            gnu.bytecode.Variable r9 = r7.consumer
            r8.emitLoad(r9)
            r8.emitSwap()
        L9d:
            if (r5 == 0) goto La9
            gnu.bytecode.Type[] r9 = new gnu.bytecode.Type[r1]
            r9[r3] = r4
            gnu.bytecode.ClassType r10 = gnu.expr.Compilation.typeConsumer
            gnu.bytecode.Method r2 = r10.getDeclaredMethod(r5, r9)
        La9:
            if (r2 == 0) goto Lae
            r8.emitInvokeInterface(r2)
        Lae:
            r9 = 67
            if (r0 != r9) goto Lb5
            r8.emitPop(r1)
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.ConsumerTarget.compileFromStack(gnu.expr.Compilation, gnu.bytecode.Type, int):void");
    }

    public boolean compileWrite(Expression expression, Compilation compilation) {
        Type implementationType = expression.getType().getImplementationType();
        if ((!(implementationType instanceof PrimType) || implementationType.isVoid()) && !OccurrenceType.itemCountIsOne(implementationType)) {
            return false;
        }
        compilation.getCode().emitLoad(this.consumer);
        expression.compile(compilation, StackTarget.getInstance(implementationType));
        compileFromStack(compilation, implementationType, 1);
        return true;
    }

    @Override // gnu.expr.Target
    public Type getType() {
        return Compilation.scmSequenceType;
    }
}
