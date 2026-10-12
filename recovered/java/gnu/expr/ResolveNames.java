package gnu.expr;

/* loaded from: classes2.dex */
public class ResolveNames extends ExpExpVisitor<Void> {
    protected NameLookup lookup;

    public ResolveNames() {
    }

    public ResolveNames(Compilation compilation) {
        setContext(compilation);
        this.lookup = compilation.lexical;
    }

    public void resolveModule(ModuleExp moduleExp) {
        Compilation saveCurrent = Compilation.setSaveCurrent(this.comp);
        try {
            push(moduleExp);
            moduleExp.visitChildren(this, null);
        } finally {
            Compilation.restoreCurrent(saveCurrent);
        }
    }

    public void push(ScopeExp scopeExp) {
        this.lookup.push(scopeExp);
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitScopeExp(ScopeExp scopeExp, Void r2) {
        visitDeclarationTypes(scopeExp);
        push(scopeExp);
        scopeExp.visitChildren(this, r2);
        this.lookup.pop(scopeExp);
        return scopeExp;
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitLetExp(LetExp letExp, Void r3) {
        visitDeclarationTypes(letExp);
        letExp.visitInitializers(this, r3);
        push(letExp);
        letExp.body = visit(letExp.body, r3);
        this.lookup.pop(letExp);
        return letExp;
    }

    public Declaration lookup(Expression expression, Object obj, boolean z) {
        return this.lookup.lookup(obj, z);
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitReferenceExp(ReferenceExp referenceExp, Void r3) {
        Declaration declarationLookup;
        if (referenceExp.getBinding() == null && (declarationLookup = lookup(referenceExp, referenceExp.getSymbol(), referenceExp.isProcedureName())) != null) {
            referenceExp.setBinding(declarationLookup);
        }
        return referenceExp;
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitSetExp(SetExp setExp, Void r4) {
        if (setExp.binding == null) {
            Declaration declarationLookup = lookup(setExp, setExp.getSymbol(), setExp.isFuncDef());
            if (declarationLookup != null) {
                declarationLookup.setCanWrite(true);
            }
            setExp.binding = declarationLookup;
        }
        return (Expression) super.visitSetExp(setExp, (SetExp) r4);
    }
}
