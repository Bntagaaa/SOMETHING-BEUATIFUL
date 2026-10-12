package gnu.kawa.functions;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.ConditionalTarget;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.Language;
import gnu.expr.Target;
import gnu.mapping.Procedure2;

/* loaded from: classes2.dex */
public class IsEq extends Procedure2 implements Inlineable {
    Language language;

    public boolean apply(Object obj, Object obj2) {
        return obj == obj2;
    }

    public IsEq(Language language, String str) {
        this.language = language;
        setName(str);
    }

    @Override // gnu.mapping.Procedure2, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) {
        return this.language.booleanObject(obj == obj2);
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        compile(applyExp.getArgs(), compilation, target, this.language);
    }

    public static void compile(Expression[] expressionArr, Compilation compilation, Target target, Language language) {
        Type typeFor;
        CodeAttr code = compilation.getCode();
        Expression expression = expressionArr[0];
        Target target2 = Target.pushObject;
        expression.compile(compilation, target2);
        expressionArr[1].compile(compilation, target2);
        if (target instanceof ConditionalTarget) {
            ConditionalTarget conditionalTarget = (ConditionalTarget) target;
            if (conditionalTarget.trueBranchComesFirst) {
                code.emitGotoIfNE(conditionalTarget.ifFalse);
            } else {
                code.emitGotoIfEq(conditionalTarget.ifTrue);
            }
            conditionalTarget.emitGotoFirstBranch(code);
            return;
        }
        code.emitIfEq();
        if (target.getType() instanceof ClassType) {
            Object objBooleanObject = language.booleanObject(true);
            Object objBooleanObject2 = language.booleanObject(false);
            compilation.compileConstant(objBooleanObject, target2);
            code.emitElse();
            compilation.compileConstant(objBooleanObject2, target2);
            if ((objBooleanObject instanceof Boolean) && (objBooleanObject2 instanceof Boolean)) {
                typeFor = Compilation.scmBooleanType;
            } else {
                typeFor = Type.pointer_type;
            }
        } else {
            code.emitPushInt(1);
            code.emitElse();
            code.emitPushInt(0);
            typeFor = language.getTypeFor(Boolean.TYPE);
        }
        code.emitFi();
        target.compileFromStack(compilation, typeFor);
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return this.language.getTypeFor(Boolean.TYPE);
    }
}
