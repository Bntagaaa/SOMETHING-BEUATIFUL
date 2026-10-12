package gnu.expr;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Label;
import gnu.bytecode.Method;
import gnu.bytecode.PrimType;
import gnu.bytecode.Scope;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;

/* loaded from: classes2.dex */
public class CheckedTarget extends StackTarget {
    static Method initWrongTypeProcMethod;
    static Method initWrongTypeStringMethod;
    static ClassType typeClassCastException;
    static ClassType typeWrongType;
    int argno;
    LambdaExp proc;
    String procname;

    public CheckedTarget(Type type) {
        super(type);
        this.argno = -4;
    }

    public CheckedTarget(Type type, LambdaExp lambdaExp, int i) {
        super(type);
        this.proc = lambdaExp;
        this.procname = lambdaExp.getName();
        this.argno = i;
    }

    public CheckedTarget(Type type, String str, int i) {
        super(type);
        this.procname = str;
        this.argno = i;
    }

    public static Target getInstance(Type type, String str, int i) {
        return type == Type.objectType ? Target.pushObject : new CheckedTarget(type, str, i);
    }

    public static Target getInstance(Type type, LambdaExp lambdaExp, int i) {
        return type == Type.objectType ? Target.pushObject : new CheckedTarget(type, lambdaExp, i);
    }

    public static Target getInstance(Type type) {
        return type == Type.objectType ? Target.pushObject : new CheckedTarget(type);
    }

    public static Target getInstance(Declaration declaration) {
        return getInstance(declaration.getType(), declaration.getName(), -2);
    }

    private static void initWrongType() {
        if (typeClassCastException == null) {
            typeClassCastException = ClassType.make("java.lang.ClassCastException");
        }
        if (typeWrongType == null) {
            typeWrongType = ClassType.make("gnu.mapping.WrongType");
            PrimType primType = Type.intType;
            ClassType classType = Type.objectType;
            Type[] typeArr = {typeClassCastException, Compilation.javaStringType, primType, classType};
            ClassType classType2 = typeWrongType;
            PrimType primType2 = Type.voidType;
            initWrongTypeStringMethod = classType2.addMethod("<init>", 1, typeArr, primType2);
            initWrongTypeProcMethod = typeWrongType.addMethod("<init>", 1, new Type[]{typeClassCastException, Compilation.typeProcedure, primType, classType}, primType2);
        }
    }

    @Override // gnu.expr.StackTarget, gnu.expr.Target
    public void compileFromStack(Compilation compilation, Type type) {
        if (compileFromStack0(compilation, type)) {
            return;
        }
        emitCheckedCoerce(compilation, this.proc, this.procname, this.argno, this.type, null);
    }

    public static void emitCheckedCoerce(Compilation compilation, String str, int i, Type type) {
        emitCheckedCoerce(compilation, null, str, i, type, null);
    }

    public static void emitCheckedCoerce(Compilation compilation, LambdaExp lambdaExp, int i, Type type) {
        emitCheckedCoerce(compilation, lambdaExp, lambdaExp.getName(), i, type, null);
    }

    public static void emitCheckedCoerce(Compilation compilation, LambdaExp lambdaExp, int i, Type type, Variable variable) {
        emitCheckedCoerce(compilation, lambdaExp, lambdaExp.getName(), i, type, variable);
    }

    public static void emitCheckedCoerce(Compilation compilation, LambdaExp lambdaExp, String str, int i, Type type, Variable variable) {
        Variable variableAddLocal;
        Scope scopePushScope;
        CodeAttr code = compilation.getCode();
        boolean zIsInTry = code.isInTry();
        initWrongType();
        Label label = new Label(code);
        if (variable != null || type == Type.toStringType) {
            variableAddLocal = variable;
            scopePushScope = null;
        } else {
            scopePushScope = code.pushScope();
            variableAddLocal = code.addLocal(Type.objectType);
            code.emitDup(1);
            code.emitStore(variableAddLocal);
        }
        int pc = code.getPC();
        label.define(code);
        StackTarget.emitCoerceFromObject(type, compilation);
        if (code.getPC() == pc || type == Type.toStringType) {
            if (scopePushScope != null) {
                code.popScope();
                return;
            }
            return;
        }
        Label label2 = new Label(code);
        label2.define(code);
        Label label3 = new Label(code);
        label3.setTypes(code);
        if (zIsInTry) {
            code.emitGoto(label3);
        }
        code.setUnreachable();
        int iBeginFragment = !zIsInTry ? code.beginFragment(label3) : 0;
        code.addHandler(label, label2, typeClassCastException);
        boolean z = lambdaExp != null && lambdaExp.isClassGenerated() && !compilation.method.getStaticFlag() && compilation.method.getDeclaringClass() == lambdaExp.getCompiledClassType(compilation);
        int lineNumber = compilation.getLineNumber();
        if (lineNumber > 0) {
            code.putLineNumber(lineNumber);
        }
        code.emitNew(typeWrongType);
        code.emitDupX();
        code.emitSwap();
        if (z) {
            code.emitPushThis();
        } else {
            if (str == null && i != -4) {
                str = "lambda";
            }
            code.emitPushString(str);
        }
        code.emitPushInt(i);
        code.emitLoad(variableAddLocal);
        code.emitInvokeSpecial(z ? initWrongTypeProcMethod : initWrongTypeStringMethod);
        if (scopePushScope != null) {
            code.popScope();
        }
        code.emitThrow();
        if (zIsInTry) {
            label3.define(code);
        } else {
            code.endFragment(iBeginFragment);
        }
    }
}
