package gnu.kawa.reflect;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Method;
import gnu.bytecode.PrimType;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.ConditionalTarget;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.Language;
import gnu.expr.QuoteExp;
import gnu.expr.Target;
import gnu.expr.TypeValue;
import gnu.mapping.Procedure;
import gnu.mapping.Procedure2;

/* loaded from: classes2.dex */
public class InstanceOf extends Procedure2 implements Inlineable {
    static Method instanceMethod;
    static ClassType typeType;
    protected Language language;

    public InstanceOf(Language language) {
        this.language = language;
        setProperty(Procedure.validateApplyKey, "gnu.kawa.reflect.CompileReflect:validateApplyInstanceOf");
    }

    public InstanceOf(Language language, String str) {
        this(language);
        setName(str);
    }

    @Override // gnu.mapping.Procedure2, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) {
        Type typeAsType = this.language.asType(obj2);
        if (typeAsType instanceof PrimType) {
            typeAsType = ((PrimType) typeAsType).boxedType();
        }
        return this.language.booleanObject(typeAsType.isInstance(obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        Type typeAsType;
        Expression[] args = applyExp.getArgs();
        CodeAttr code = compilation.getCode();
        Expression expression = args[1];
        if (expression instanceof QuoteExp) {
            try {
                typeAsType = this.language.asType(((QuoteExp) expression).getValue());
            } catch (Exception unused) {
                compilation.error('w', "unknown type spec: null");
                typeAsType = null;
            }
        } else {
            typeAsType = this.language.getTypeFor(expression);
        }
        if (typeAsType != null) {
            boolean z = typeAsType instanceof PrimType;
            Type typeBoxedType = typeAsType;
            if (z) {
                typeBoxedType = ((PrimType) typeAsType).boxedType();
            }
            args[0].compile(compilation, Target.pushObject);
            if (typeBoxedType instanceof TypeValue) {
                ((TypeValue) typeBoxedType).emitIsInstance(null, compilation, target);
                return;
            } else {
                typeBoxedType.emitIsInstance(code);
                compilation.usedClass(typeBoxedType);
            }
        } else {
            if (typeType == null) {
                ClassType classTypeMake = ClassType.make("gnu.bytecode.Type");
                typeType = classTypeMake;
                instanceMethod = classTypeMake.addMethod("isInstance", Compilation.apply1args, Type.boolean_type, 1);
            }
            args[1].compile(compilation, typeType);
            args[0].compile(compilation, Target.pushObject);
            code.emitInvokeVirtual(instanceMethod);
        }
        target.compileFromStack(compilation, this.language.getTypeFor(Boolean.TYPE));
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return this.language.getTypeFor(Boolean.TYPE);
    }

    public static void emitIsInstance(TypeValue typeValue, Variable variable, Compilation compilation, Target target) {
        CodeAttr code = compilation.getCode();
        ConditionalTarget conditionalTarget = null;
        typeValue.emitTestIf(null, null, compilation);
        if (target instanceof ConditionalTarget) {
            conditionalTarget = (ConditionalTarget) target;
            code.emitGoto(conditionalTarget.ifTrue);
        } else {
            code.emitPushInt(1);
        }
        code.emitElse();
        if (conditionalTarget != null) {
            code.emitGoto(conditionalTarget.ifFalse);
        } else {
            code.emitPushInt(0);
        }
        code.emitFi();
        if (conditionalTarget == null) {
            target.compileFromStack(compilation, compilation.getLanguage().getTypeFor(Boolean.TYPE));
        }
    }
}
