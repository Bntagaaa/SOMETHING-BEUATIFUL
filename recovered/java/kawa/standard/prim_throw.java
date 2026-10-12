package kawa.standard;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.Target;
import gnu.mapping.Procedure1;
import gnu.mapping.Values;

/* loaded from: classes2.dex */
public class prim_throw extends Procedure1 implements Inlineable {
    private static ClassType javaThrowableType;
    public static final prim_throw primitiveThrow = new prim_throw();

    public static void throw_it(Object obj) throws Throwable {
        throw ((Throwable) obj);
    }

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public Object apply1(Object obj) throws Throwable {
        throw_it(obj);
        return Values.empty;
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        CodeAttr code = compilation.getCode();
        applyExp.getArgs()[0].compile(compilation, Target.pushObject);
        if (javaThrowableType == null) {
            javaThrowableType = new ClassType("java.lang.Throwable");
        }
        code.emitCheckcast(javaThrowableType);
        code.emitThrow();
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return Type.neverReturnsType;
    }
}
