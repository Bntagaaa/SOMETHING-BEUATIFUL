package gnu.kawa.functions;

import gnu.bytecode.CodeAttr;
import gnu.bytecode.Label;
import gnu.bytecode.Method;
import gnu.bytecode.PrimType;
import gnu.bytecode.Scope;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.ConsumerTarget;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.IfExp;
import gnu.expr.IgnoreTarget;
import gnu.expr.Inlineable;
import gnu.expr.LambdaExp;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.expr.StackTarget;
import gnu.expr.Target;
import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.Procedure;
import gnu.mapping.Values;
import gnu.math.IntNum;

/* loaded from: classes2.dex */
public class ValuesMap extends MethodProc implements Inlineable {
    public static final ValuesMap valuesMap = new ValuesMap(-1);
    public static final ValuesMap valuesMapWithPos = new ValuesMap(1);
    private final int startCounter;

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return 8194;
    }

    private ValuesMap(int i) {
        this.startCounter = i;
        setProperty(Procedure.validateApplyKey, "gnu.kawa.functions.CompileMisc:validateApplyValuesMap");
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        Procedure procedure = (Procedure) callContext.getNextArg();
        Object nextArg = callContext.getNextArg();
        Procedure.checkArgCount(procedure, 1);
        if (nextArg instanceof Values) {
            int i = this.startCounter;
            Values values = (Values) nextArg;
            int iNextPos = 0;
            while (true) {
                iNextPos = values.nextPos(iNextPos);
                if (iNextPos == 0) {
                    return;
                }
                Object posPrevious = values.getPosPrevious(iNextPos);
                if (this.startCounter >= 0) {
                    procedure.check2(posPrevious, IntNum.make(i), callContext);
                    i++;
                } else {
                    procedure.check1(posPrevious, callContext);
                }
                callContext.runUntilDone();
            }
        } else {
            int i2 = this.startCounter;
            if (i2 >= 0) {
                procedure.check2(nextArg, IntNum.make(i2), callContext);
            } else {
                procedure.check1(nextArg, callContext);
            }
            callContext.runUntilDone();
        }
    }

    public static LambdaExp canInline(ApplyExp applyExp, ValuesMap valuesMap2) {
        LambdaExp lambdaExp;
        int i;
        Expression[] args = applyExp.getArgs();
        if (args.length != 2) {
            return null;
        }
        Expression expression = args[0];
        if (!(expression instanceof LambdaExp) || (i = (lambdaExp = (LambdaExp) expression).min_args) != lambdaExp.max_args) {
            return null;
        }
        if (i == (valuesMap2.startCounter < 0 ? 1 : 2)) {
            return lambdaExp;
        }
        return null;
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        LambdaExp lambdaExpCanInline = canInline(applyExp, this);
        if (lambdaExpCanInline == null) {
            ApplyExp.compile(applyExp, compilation, target);
            return;
        }
        Expression[] args = applyExp.getArgs();
        if (!(target instanceof IgnoreTarget) && !(target instanceof ConsumerTarget)) {
            ConsumerTarget.compileUsingConsumer(applyExp, compilation, target);
        } else {
            compileInlined(lambdaExpCanInline, args[1], this.startCounter, null, compilation, target);
        }
    }

    public static void compileInlined(LambdaExp lambdaExp, Expression expression, int i, Method method, Compilation compilation, Target target) {
        Variable variableAddVariable;
        Declaration declaration;
        Expression[] expressionArr;
        Declaration declarationFirstDecl = lambdaExp.firstDecl();
        CodeAttr code = compilation.getCode();
        Scope scopePushScope = code.pushScope();
        Type type = declarationFirstDecl.getType();
        if (i >= 0) {
            variableAddVariable = scopePushScope.addVariable(code, Type.intType, "position");
            code.emitPushInt(i);
            code.emitStore(variableAddVariable);
            declaration = new Declaration(variableAddVariable);
        } else {
            variableAddVariable = null;
            declaration = null;
        }
        if (declarationFirstDecl.isSimple() && method == null) {
            declarationFirstDecl.allocateVariable(code);
        } else {
            declarationFirstDecl = new Declaration(code.addLocal(type.getImplementationType(), Compilation.mangleNameIfNeeded(declarationFirstDecl.getName())));
        }
        if (i >= 0) {
            expressionArr = new Expression[]{new ReferenceExp(declarationFirstDecl), new ReferenceExp(declaration)};
        } else {
            expressionArr = new Expression[]{new ReferenceExp(declarationFirstDecl)};
        }
        Expression applyExp = new ApplyExp((Expression) lambdaExp, expressionArr);
        if (method != null) {
            if (applyExp.getType().getImplementationType() != Type.booleanType) {
                applyExp = new ApplyExp(method, applyExp, new ReferenceExp(declaration));
            }
            applyExp = new IfExp(applyExp, new ReferenceExp(declarationFirstDecl), QuoteExp.voidExp);
        }
        PrimType primType = Type.intType;
        Variable variableAddLocal = code.addLocal(primType);
        Variable variableAddLocal2 = code.addLocal(Type.pointer_type);
        Variable variableAddLocal3 = code.addLocal(primType);
        expression.compileWithPosition(compilation, Target.pushObject);
        code.emitStore(variableAddLocal2);
        code.emitPushInt(0);
        code.emitStore(variableAddLocal);
        Label label = new Label(code);
        Label label2 = new Label(code);
        label.define(code);
        code.emitLoad(variableAddLocal2);
        code.emitLoad(variableAddLocal);
        code.emitInvokeStatic(Compilation.typeValues.getDeclaredMethod("nextIndex", 2));
        code.emitDup(primType);
        code.emitStore(variableAddLocal3);
        code.emitGotoIfIntLtZero(label2);
        code.emitLoad(variableAddLocal2);
        code.emitLoad(variableAddLocal);
        code.emitInvokeStatic(Compilation.typeValues.getDeclaredMethod("nextValue", 2));
        StackTarget.convert(compilation, Type.objectType, type);
        declarationFirstDecl.compileStore(compilation);
        applyExp.compile(compilation, target);
        if (i >= 0) {
            code.emitInc(variableAddVariable, (short) 1);
        }
        code.emitLoad(variableAddLocal3);
        code.emitStore(variableAddLocal);
        code.emitGoto(label);
        label2.define(code);
        code.popScope();
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return Type.pointer_type;
    }
}
