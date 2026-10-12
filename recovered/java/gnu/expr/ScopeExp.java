package gnu.expr;

import gnu.bytecode.CodeAttr;
import gnu.bytecode.Scope;
import gnu.bytecode.Type;

/* loaded from: classes2.dex */
public abstract class ScopeExp extends Expression {
    static int counter;
    Declaration decls;
    protected int frameSize;
    public int id;
    Declaration last;
    public ScopeExp outer;
    private Scope scope;

    public Declaration firstDecl() {
        return this.decls;
    }

    public Scope getVarScope() {
        Scope scope = this.scope;
        if (scope != null) {
            return scope;
        }
        Scope scope2 = new Scope();
        this.scope = scope2;
        return scope2;
    }

    public void popScope(CodeAttr codeAttr) {
        for (Declaration declarationFirstDecl = firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            declarationFirstDecl.var = null;
        }
        codeAttr.popScope();
        this.scope = null;
    }

    public void add(Declaration declaration) {
        Declaration declaration2 = this.last;
        if (declaration2 == null) {
            this.decls = declaration;
        } else {
            declaration2.next = declaration;
        }
        this.last = declaration;
        declaration.context = this;
    }

    public void add(Declaration declaration, Declaration declaration2) {
        if (declaration == null) {
            declaration2.next = this.decls;
            this.decls = declaration2;
        } else {
            declaration2.next = declaration.next;
            declaration.next = declaration2;
        }
        if (this.last == declaration) {
            this.last = declaration2;
        }
        declaration2.context = this;
    }

    public void replaceFollowing(Declaration declaration, Declaration declaration2) {
        Declaration declaration3;
        if (declaration == null) {
            declaration3 = this.decls;
            this.decls = declaration2;
        } else {
            Declaration declaration4 = declaration.next;
            declaration.next = declaration2;
            declaration3 = declaration4;
        }
        declaration2.next = declaration3.next;
        if (this.last == declaration3) {
            this.last = declaration2;
        }
        declaration3.next = null;
        declaration2.context = this;
    }

    public void remove(Declaration declaration) {
        Declaration declaration2 = null;
        for (Declaration declarationFirstDecl = firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            if (declarationFirstDecl != declaration) {
                declaration2 = declarationFirstDecl;
            } else {
                remove(declaration2, declaration);
                return;
            }
        }
    }

    public void remove(Declaration declaration, Declaration declaration2) {
        if (declaration == null) {
            this.decls = declaration2.next;
        } else {
            declaration.next = declaration2.next;
        }
        if (this.last == declaration2) {
            this.last = declaration;
        }
    }

    public ScopeExp() {
        int i = counter + 1;
        counter = i;
        this.id = i;
    }

    public LambdaExp currentLambda() {
        for (ScopeExp scopeExp = this; scopeExp != null; scopeExp = scopeExp.outer) {
            if (scopeExp instanceof LambdaExp) {
                return (LambdaExp) scopeExp;
            }
        }
        return null;
    }

    public ScopeExp topLevel() {
        ScopeExp scopeExp = this;
        while (true) {
            ScopeExp scopeExp2 = scopeExp.outer;
            if (scopeExp2 == null || (scopeExp2 instanceof ModuleExp)) {
                break;
            }
            scopeExp = scopeExp2;
        }
        return scopeExp;
    }

    public ModuleExp currentModule() {
        for (ScopeExp scopeExp = this; scopeExp != null; scopeExp = scopeExp.outer) {
            if (scopeExp instanceof ModuleExp) {
                return (ModuleExp) scopeExp;
            }
        }
        return null;
    }

    public Declaration lookup(Object obj) {
        if (obj == null) {
            return null;
        }
        for (Declaration declarationFirstDecl = firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            if (obj.equals(declarationFirstDecl.symbol)) {
                return declarationFirstDecl;
            }
        }
        return null;
    }

    public Declaration lookup(Object obj, Language language, int i) {
        for (Declaration declarationFirstDecl = firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            if (obj.equals(declarationFirstDecl.symbol) && language.hasNamespace(declarationFirstDecl, i)) {
                return declarationFirstDecl;
            }
        }
        return null;
    }

    public Declaration getNoDefine(Object obj) {
        Declaration declarationLookup = lookup(obj);
        if (declarationLookup != null) {
            return declarationLookup;
        }
        Declaration declarationAddDeclaration = addDeclaration(obj);
        declarationAddDeclaration.flags |= 66048;
        return declarationAddDeclaration;
    }

    public Declaration getDefine(Object obj, char c, Compilation compilation) {
        Declaration declarationLookup = lookup(obj);
        if (declarationLookup == null) {
            return addDeclaration(obj);
        }
        long j = declarationLookup.flags;
        if ((66048 & j) != 0) {
            declarationLookup.flags = j & (-66049);
            return declarationLookup;
        }
        Declaration declarationAddDeclaration = addDeclaration(obj);
        duplicateDeclarationError(declarationLookup, declarationAddDeclaration, compilation);
        return declarationAddDeclaration;
    }

    public static void duplicateDeclarationError(Declaration declaration, Declaration declaration2, Compilation compilation) {
        compilation.error('e', declaration2, "duplicate declaration of '", "'");
        compilation.error('e', declaration, "(this is the previous declaration of '", "')");
    }

    public final Declaration addDeclaration(Object obj) {
        Declaration declaration = new Declaration(obj);
        add(declaration);
        return declaration;
    }

    public final Declaration addDeclaration(Object obj, Type type) {
        Declaration declaration = new Declaration(obj, type);
        add(declaration);
        return declaration;
    }

    public final void addDeclaration(Declaration declaration) {
        add(declaration);
    }

    public int countDecls() {
        int i = 0;
        for (Declaration declarationFirstDecl = firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            i++;
        }
        return i;
    }

    public int countNonDynamicDecls() {
        int i = 0;
        for (Declaration declarationFirstDecl = firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            if (!declarationFirstDecl.getFlag(268435456L)) {
                i++;
            }
        }
        return i;
    }

    public static int nesting(ScopeExp scopeExp) {
        int i = 0;
        while (scopeExp != null) {
            scopeExp = scopeExp.outer;
            i++;
        }
        return i;
    }

    public boolean nestedIn(ScopeExp scopeExp) {
        for (ScopeExp scopeExp2 = this; scopeExp2 != null; scopeExp2 = scopeExp2.outer) {
            if (scopeExp2 == scopeExp) {
                return true;
            }
        }
        return false;
    }

    public void setIndexes() {
        Declaration declarationFirstDecl = firstDecl();
        int i = 0;
        while (declarationFirstDecl != null) {
            declarationFirstDecl.evalIndex = i;
            declarationFirstDecl = declarationFirstDecl.nextDecl();
            i++;
        }
        this.frameSize = i;
    }

    @Override // gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        return expVisitor.visitScopeExp(this, d);
    }

    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    public String toString() {
        return getClass().getName() + "#" + this.id;
    }
}
