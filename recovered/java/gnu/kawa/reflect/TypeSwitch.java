package gnu.kawa.reflect;

import gnu.bytecode.CodeAttr;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.LambdaExp;
import gnu.expr.Target;
import gnu.expr.TypeValue;
import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.Procedure;

/* loaded from: classes2.dex */
public class TypeSwitch extends MethodProc implements Inlineable {
    public static final TypeSwitch typeSwitch = new TypeSwitch("typeswitch");

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return -4094;
    }

    public TypeSwitch(String str) {
        setName(str);
        setProperty(Procedure.validateApplyKey, "gnu.kawa.reflect.CompileReflect:validateApplyTypeSwitch");
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        Object[] args = callContext.getArgs();
        Object obj = args[0];
        int length = args.length - 1;
        for (int i = 1; i < length; i++) {
            if (((MethodProc) args[i]).match1(obj, callContext) >= 0) {
                return;
            }
        }
        ((Procedure) args[length]).check1(obj, callContext);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        Expression[] args = applyExp.getArgs();
        CodeAttr code = compilation.getCode();
        code.pushScope();
        Variable variableAddLocal = code.addLocal(Type.pointer_type);
        args[0].compile(compilation, Target.pushObject);
        code.emitStore(variableAddLocal);
        int i = 1;
        while (i < args.length) {
            if (i > 1) {
                code.emitElse();
            }
            int i2 = i + 1;
            Expression expression = args[i];
            if (expression instanceof LambdaExp) {
                LambdaExp lambdaExp = (LambdaExp) expression;
                Declaration declarationFirstDecl = lambdaExp.firstDecl();
                Type type = declarationFirstDecl.getType();
                if (declarationFirstDecl.getCanRead()) {
                    declarationFirstDecl.allocateVariable(code);
                } else {
                    declarationFirstDecl = null;
                }
                if (type instanceof TypeValue) {
                    ((TypeValue) type).emitTestIf(variableAddLocal, declarationFirstDecl, compilation);
                } else {
                    if (i2 < args.length) {
                        code.emitLoad(variableAddLocal);
                        type.emitIsInstance(code);
                        code.emitIfIntNotZero();
                    }
                    if (declarationFirstDecl != null) {
                        code.emitLoad(variableAddLocal);
                        declarationFirstDecl.compileStore(compilation);
                    }
                }
                lambdaExp.allocChildClasses(compilation);
                lambdaExp.body.compileWithPosition(compilation, target);
                i = i2;
            } else {
                throw new Error("not implemented: typeswitch arg not LambdaExp");
            }
        }
        int length = args.length - 2;
        while (true) {
            length--;
            if (length >= 0) {
                code.emitFi();
            } else {
                code.popScope();
                return;
            }
        }
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return Type.pointer_type;
    }
}
