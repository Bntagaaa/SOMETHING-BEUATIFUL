package gnu.expr;

import _COROUTINE.a;
import gnu.bytecode.ObjectType;
import gnu.bytecode.Type;
import gnu.kawa.util.IdentityHashTable;
import gnu.lists.AbstractFormat;
import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.OutPort;
import gnu.mapping.Procedure;
import gnu.mapping.Values;
import gnu.mapping.WrongArguments;
import gnu.text.SourceLocator;
import java.io.IOException;

/* loaded from: classes2.dex */
public class QuoteExp extends Expression {
    public static final int EXPLICITLY_TYPED = 2;
    public static final int SHARED_CONSTANT = 4;
    protected Type type;
    Object value;
    public static QuoteExp undefined_exp = makeShared(Special.undefined);
    public static QuoteExp abstractExp = makeShared(Special.abstractSpecial);
    public static QuoteExp voidExp = makeShared(Values.empty, Type.voidType);
    public static QuoteExp trueExp = makeShared(Boolean.TRUE);
    public static QuoteExp falseExp = makeShared(Boolean.FALSE);
    public static QuoteExp nullExp = makeShared(null, Type.nullType);
    public static final QuoteExp classObjectExp = makeShared(Type.objectType);

    @Override // gnu.expr.Expression
    public Expression deepCopy(IdentityHashTable identityHashTable) {
        return this;
    }

    @Override // gnu.expr.Expression
    public boolean mustCompile() {
        return false;
    }

    @Override // gnu.expr.Expression
    public boolean side_effects() {
        return false;
    }

    public final Object getValue() {
        return this.value;
    }

    @Override // gnu.expr.Expression
    public final Object valueIfConstant() {
        return this.value;
    }

    public final Type getRawType() {
        return this.type;
    }

    @Override // gnu.expr.Expression
    public final Type getType() {
        Type type = this.type;
        if (type != null) {
            return type;
        }
        Object obj = this.value;
        if (obj == Values.empty) {
            return Type.voidType;
        }
        if (obj == null) {
            return Type.nullType;
        }
        if (this == undefined_exp) {
            return Type.pointer_type;
        }
        return Type.make(obj.getClass());
    }

    public void setType(Type type) {
        this.type = type;
        setFlag(2);
    }

    public boolean isExplicitlyTyped() {
        return getFlag(2);
    }

    public boolean isSharedConstant() {
        return getFlag(4);
    }

    public static QuoteExp getInstance(Object obj) {
        return getInstance(obj, null);
    }

    public static QuoteExp getInstance(Object obj, SourceLocator sourceLocator) {
        if (obj == null) {
            return nullExp;
        }
        if (obj == Type.pointer_type) {
            return classObjectExp;
        }
        if (obj == Special.undefined) {
            return undefined_exp;
        }
        if (obj == Values.empty) {
            return voidExp;
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue() ? trueExp : falseExp;
        }
        QuoteExp quoteExp = new QuoteExp(obj);
        if (sourceLocator != null) {
            quoteExp.setLocation(sourceLocator);
        }
        return quoteExp;
    }

    public static QuoteExp makeShared(Object obj) {
        QuoteExp quoteExp = new QuoteExp(obj);
        quoteExp.setFlag(4);
        return quoteExp;
    }

    public static QuoteExp makeShared(Object obj, Type type) {
        QuoteExp quoteExp = new QuoteExp(obj, type);
        quoteExp.setFlag(4);
        return quoteExp;
    }

    public QuoteExp(Object obj) {
        this.value = obj;
    }

    public QuoteExp(Object obj, Type type) {
        this.value = obj;
        setType(type);
    }

    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    public void apply(CallContext callContext) {
        callContext.writeValue(this.value);
    }

    @Override // gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        Type type = this.type;
        if (type == null || type == Type.pointer_type || (target instanceof IgnoreTarget) || ((type instanceof ObjectType) && type.isInstance(this.value))) {
            compilation.compileConstant(this.value, target);
        } else {
            compilation.compileConstant(this.value, StackTarget.getInstance(this.type));
            target.compileFromStack(compilation, this.type);
        }
    }

    @Override // gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        return expVisitor.visitQuoteExp(this, d);
    }

    @Override // gnu.expr.Expression
    public Expression validateApply(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Declaration declaration) {
        ApplyExp applyExp2;
        Expression expressionInlineIfConstant;
        if (this == undefined_exp) {
            return applyExp;
        }
        Object value = getValue();
        if (!(value instanceof Procedure)) {
            return inlineCalls.noteError((declaration == null || value == null) ? "called value is not a procedure" : "calling " + declaration.getName() + " which is a " + value.getClass().getName());
        }
        Procedure procedure = (Procedure) value;
        int argCount = applyExp.getArgCount();
        String strCheckArgCount = WrongArguments.checkArgCount(procedure, argCount);
        if (strCheckArgCount != null) {
            return inlineCalls.noteError(strCheckArgCount);
        }
        Expression expressionMaybeInline = inlineCalls.maybeInline(applyExp, type, procedure);
        if (expressionMaybeInline != null) {
            return expressionMaybeInline;
        }
        Expression[] expressionArr = applyExp.args;
        MethodProc methodProc = procedure instanceof MethodProc ? (MethodProc) procedure : null;
        for (int i = 0; i < argCount; i++) {
            Type parameterType = methodProc != null ? methodProc.getParameterType(i) : null;
            if (i == argCount - 1 && parameterType != null && methodProc.maxArgs() < 0 && i == methodProc.minArgs()) {
                parameterType = null;
            }
            expressionArr[i] = inlineCalls.visit(expressionArr[i], parameterType);
        }
        if (applyExp.getFlag(4) && (expressionInlineIfConstant = applyExp.inlineIfConstant(procedure, inlineCalls)) != applyExp) {
            return inlineCalls.visit(expressionInlineIfConstant, type);
        }
        Compilation compilation = inlineCalls.getCompilation();
        if (!compilation.inlineOk(procedure)) {
            return applyExp;
        }
        if (ApplyExp.asInlineable(procedure) != null) {
            return applyExp.getFunction() == this ? applyExp : new ApplyExp((Expression) this, applyExp.getArgs()).setLine(applyExp);
        }
        PrimProcedure methodFor = PrimProcedure.getMethodFor(procedure, declaration, applyExp.args, compilation.getLanguage());
        if (methodFor == null) {
            return applyExp;
        }
        if (methodFor.getStaticFlag() || declaration == null) {
            applyExp2 = new ApplyExp(methodFor, applyExp.args);
        } else {
            if (declaration.base == null) {
                return applyExp;
            }
            Expression[] expressionArr2 = new Expression[argCount + 1];
            System.arraycopy(applyExp.getArgs(), 0, expressionArr2, 1, argCount);
            expressionArr2[0] = new ReferenceExp(declaration.base);
            applyExp2 = new ApplyExp(methodFor, expressionArr2);
        }
        return applyExp2.setLine(applyExp);
    }

    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    public String toString() {
        return a.l(new StringBuilder("QuoteExp["), this.value, "]");
    }

    @Override // gnu.expr.Expression
    public void print(OutPort outPort) throws IOException {
        outPort.startLogicalBlock("(Quote", ")", 2);
        outPort.writeSpaceLinear();
        Object string = this.value;
        if (string instanceof Expression) {
            string = string.toString();
        }
        AbstractFormat abstractFormat = outPort.objectFormat;
        try {
            outPort.objectFormat = Language.getDefaultLanguage().getFormat(true);
            outPort.print(string);
            if (this.type != null) {
                outPort.print(" ::");
                outPort.print(this.type.getName());
            }
            outPort.objectFormat = abstractFormat;
            outPort.endLogicalBlock(")");
        } catch (Throwable th) {
            outPort.objectFormat = abstractFormat;
            throw th;
        }
    }
}
