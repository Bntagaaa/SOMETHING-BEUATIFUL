package gnu.expr;

import gnu.bytecode.Type;
import gnu.kawa.util.IdentityHashTable;
import gnu.mapping.Environment;
import gnu.mapping.OutPort;
import gnu.mapping.Procedure;
import gnu.mapping.Symbol;
import java.io.IOException;

/* loaded from: classes2.dex */
public class ReferenceExp extends AccessExp {
    public static final int DONT_DEREFERENCE = 2;
    public static final int PREFER_BINDING2 = 8;
    public static final int PROCEDURE_NAME = 4;
    public static final int TYPE_NAME = 16;
    static int counter;
    int id;

    @Override // gnu.expr.Expression
    public boolean mustCompile() {
        return false;
    }

    public final boolean getDontDereference() {
        return (this.flags & 2) != 0;
    }

    public final void setDontDereference(boolean z) {
        setFlag(z, 2);
    }

    public final boolean isUnknown() {
        return Declaration.isUnknown(this.binding);
    }

    public final boolean isProcedureName() {
        return (this.flags & 4) != 0;
    }

    public final void setProcedureName(boolean z) {
        setFlag(z, 4);
    }

    public ReferenceExp(Object obj) {
        int i = counter + 1;
        counter = i;
        this.id = i;
        this.symbol = obj;
    }

    public ReferenceExp(Object obj, Declaration declaration) {
        int i = counter + 1;
        counter = i;
        this.id = i;
        this.symbol = obj;
        this.binding = declaration;
    }

    public ReferenceExp(Declaration declaration) {
        this(declaration.getSymbol(), declaration);
    }

    @Override // gnu.expr.Expression
    public final Object valueIfConstant() {
        Expression value;
        Declaration declaration = this.binding;
        if (declaration == null || (value = declaration.getValue()) == null) {
            return null;
        }
        return value.valueIfConstant();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00dc  */
    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void apply(gnu.mapping.CallContext r5) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.ReferenceExp.apply(gnu.mapping.CallContext):void");
    }

    @Override // gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        if ((target instanceof ConsumerTarget) && ((ConsumerTarget) target).compileWrite(this, compilation)) {
            return;
        }
        this.binding.load(this, this.flags, compilation, target);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // gnu.expr.Expression
    public Expression deepCopy(IdentityHashTable identityHashTable) {
        Declaration declaration = this.binding;
        Declaration declaration2 = (Declaration) identityHashTable.get(declaration, declaration);
        Object obj = this.symbol;
        ReferenceExp referenceExp = new ReferenceExp(identityHashTable.get(obj, obj), declaration2);
        referenceExp.flags = getFlags();
        return referenceExp;
    }

    @Override // gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        return expVisitor.visitReferenceExp(this, d);
    }

    @Override // gnu.expr.Expression
    public Expression validateApply(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Declaration declaration) {
        Expression value;
        Declaration declaration2 = this.binding;
        if (declaration2 != null && !declaration2.getFlag(65536L)) {
            Declaration declarationFollowAliases = Declaration.followAliases(declaration2);
            if (!declarationFollowAliases.isIndirectBinding() && (value = declarationFollowAliases.getValue()) != null) {
                return value.validateApply(applyExp, inlineCalls, type, declarationFollowAliases);
            }
        } else if (getSymbol() instanceof Symbol) {
            Object function = Environment.getCurrent().getFunction((Symbol) getSymbol(), null);
            if (function instanceof Procedure) {
                return new QuoteExp(function).validateApply(applyExp, inlineCalls, type, null);
            }
        }
        applyExp.visitArgs(inlineCalls);
        return applyExp;
    }

    @Override // gnu.expr.Expression
    public void print(OutPort outPort) throws IOException {
        outPort.print("(Ref/");
        outPort.print(this.id);
        Object obj = this.symbol;
        if (obj != null && (this.binding == null || obj.toString() != this.binding.getName())) {
            outPort.print('/');
            outPort.print(this.symbol);
        }
        if (this.binding != null) {
            outPort.print('/');
            outPort.print(this.binding);
        }
        outPort.print(")");
    }

    @Override // gnu.expr.Expression
    public Type getType() {
        Expression value;
        Declaration declaration = this.binding;
        if (declaration == null || declaration.isFluid()) {
            return Type.pointer_type;
        }
        if (getDontDereference()) {
            return Compilation.typeLocation;
        }
        Declaration declarationFollowAliases = Declaration.followAliases(declaration);
        Type type = declarationFollowAliases.getType();
        if ((type == null || type == Type.pointer_type) && (value = declarationFollowAliases.getValue()) != null && value != QuoteExp.undefined_exp) {
            Expression expression = declarationFollowAliases.value;
            declarationFollowAliases.value = null;
            Type type2 = value.getType();
            declarationFollowAliases.value = expression;
            type = type2;
        }
        return type == Type.toStringType ? Type.javalangStringType : type;
    }

    @Override // gnu.expr.Expression
    public boolean isSingleValue() {
        Declaration declaration = this.binding;
        if (declaration == null || !declaration.getFlag(262144L)) {
            return super.isSingleValue();
        }
        return true;
    }

    @Override // gnu.expr.Expression
    public boolean side_effects() {
        Declaration declaration = this.binding;
        return declaration == null || !declaration.isLexical();
    }

    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    public String toString() {
        return "RefExp/" + this.symbol + '/' + this.id + '/';
    }
}
