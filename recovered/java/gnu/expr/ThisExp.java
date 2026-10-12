package gnu.expr;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Type;
import gnu.mapping.CallContext;

/* loaded from: classes2.dex */
public class ThisExp extends ReferenceExp {
    static int EVAL_TO_CONTEXT = 2;
    public static final String THIS_NAME = new String("$this$");
    ScopeExp context;

    public final boolean isForContext() {
        return (this.flags & EVAL_TO_CONTEXT) != 0;
    }

    @Override // gnu.expr.ReferenceExp, gnu.expr.Expression, gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        if (isForContext()) {
            callContext.writeValue(this.context);
        } else {
            super.apply(callContext);
        }
    }

    public ScopeExp getContextScope() {
        return this.context;
    }

    public ThisExp() {
        super(THIS_NAME);
    }

    public ThisExp(ScopeExp scopeExp) {
        super(THIS_NAME);
        this.context = scopeExp;
    }

    public ThisExp(Declaration declaration) {
        super(THIS_NAME, declaration);
    }

    public ThisExp(ClassType classType) {
        this(new Declaration(THIS_NAME, classType));
    }

    public static ThisExp makeGivingContext(ScopeExp scopeExp) {
        ThisExp thisExp = new ThisExp(scopeExp);
        thisExp.flags |= EVAL_TO_CONTEXT;
        return thisExp;
    }

    @Override // gnu.expr.ReferenceExp, gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        if (target instanceof IgnoreTarget) {
            return;
        }
        if (isForContext()) {
            CodeAttr code = compilation.getCode();
            if (compilation.method.getStaticFlag()) {
                code.emitGetStatic(compilation.moduleInstanceMainField);
            } else {
                code.emitPushThis();
            }
            target.compileFromStack(compilation, getType());
            return;
        }
        super.compile(compilation, target);
    }

    @Override // gnu.expr.ReferenceExp, gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        return expVisitor.visitThisExp(this, d);
    }

    @Override // gnu.expr.ReferenceExp, gnu.expr.Expression
    public final Type getType() {
        Declaration declaration = this.binding;
        if (declaration != null) {
            return declaration.getType();
        }
        ScopeExp scopeExp = this.context;
        if ((scopeExp instanceof ClassExp) || (scopeExp instanceof ModuleExp)) {
            return scopeExp.getType();
        }
        return Type.pointer_type;
    }
}
