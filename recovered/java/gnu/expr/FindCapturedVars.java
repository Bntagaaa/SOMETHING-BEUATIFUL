package gnu.expr;

import gnu.bytecode.Field;
import gnu.mapping.EnvironmentKey;
import gnu.mapping.KeyPair;
import gnu.mapping.Symbol;
import gnu.text.SourceLocator;
import java.util.Hashtable;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public class FindCapturedVars extends ExpExpVisitor<Void> {
    int backJumpPossible = 0;
    Hashtable unknownDecls = null;
    ModuleExp currentModule = null;

    public static void findCapturedVars(Expression expression, Compilation compilation) {
        FindCapturedVars findCapturedVars = new FindCapturedVars();
        findCapturedVars.setContext(compilation);
        expression.visit(findCapturedVars, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0099  */
    @Override // gnu.expr.ExpVisitor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.expr.Expression visitApplyExp(gnu.expr.ApplyExp r8, java.lang.Void r9) {
        /*
            r7 = this;
            int r0 = r7.backJumpPossible
            gnu.expr.Expression r1 = r8.func
            boolean r2 = r1 instanceof gnu.expr.ReferenceExp
            r3 = 4096(0x1000, double:2.0237E-320)
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L3d
            int r2 = gnu.expr.Compilation.defaultCallConvention
            if (r2 > r5) goto L3d
            gnu.expr.ReferenceExp r1 = (gnu.expr.ReferenceExp) r1
            gnu.expr.Declaration r1 = r1.binding
            gnu.expr.Declaration r1 = gnu.expr.Declaration.followAliases(r1)
            if (r1 == 0) goto L99
            gnu.expr.ScopeExp r2 = r1.context
            boolean r2 = r2 instanceof gnu.expr.ModuleExp
            if (r2 == 0) goto L99
            boolean r2 = r1.isPublic()
            if (r2 != 0) goto L99
            boolean r2 = r1.getFlag(r3)
            if (r2 != 0) goto L99
            gnu.expr.Expression r1 = r1.getValue()
            boolean r2 = r1 instanceof gnu.expr.LambdaExp
            if (r2 == 0) goto L99
            gnu.expr.LambdaExp r1 = (gnu.expr.LambdaExp) r1
            boolean r1 = r1.getNeedsClosureEnv()
            if (r1 != 0) goto L99
            goto L9a
        L3d:
            boolean r1 = r1 instanceof gnu.expr.QuoteExp
            if (r1 == 0) goto L99
            int r1 = r8.getArgCount()
            if (r1 <= 0) goto L99
            gnu.expr.Expression r1 = r8.func
            gnu.expr.QuoteExp r1 = (gnu.expr.QuoteExp) r1
            java.lang.Object r1 = r1.getValue()
            gnu.expr.Expression r2 = r8.getArg(r6)
            boolean r1 = r1 instanceof gnu.expr.PrimProcedure
            if (r1 == 0) goto L99
            boolean r1 = r2 instanceof gnu.expr.ReferenceExp
            if (r1 == 0) goto L99
            gnu.expr.ReferenceExp r2 = (gnu.expr.ReferenceExp) r2
            gnu.expr.Declaration r1 = r2.binding
            gnu.expr.Declaration r1 = gnu.expr.Declaration.followAliases(r1)
            if (r1 == 0) goto L99
            gnu.expr.ScopeExp r2 = r1.context
            boolean r2 = r2 instanceof gnu.expr.ModuleExp
            if (r2 == 0) goto L99
            boolean r2 = r1.getFlag(r3)
            if (r2 != 0) goto L99
            gnu.expr.Expression r2 = r1.getValue()
            boolean r3 = r2 instanceof gnu.expr.ClassExp
            if (r3 == 0) goto L99
            gnu.expr.Expression[] r3 = r8.getArgs()
            gnu.expr.LambdaExp r2 = (gnu.expr.LambdaExp) r2
            boolean r2 = r2.getNeedsClosureEnv()
            if (r2 != 0) goto L99
            gnu.expr.ApplyExp r2 = r1.firstCall
            r8.nextCall = r2
            r1.firstCall = r8
            r1 = 1
        L8c:
            int r2 = r3.length
            if (r1 >= r2) goto L97
            r2 = r3[r1]
            r2.visit(r7, r9)
            int r1 = r1 + 1
            goto L8c
        L97:
            r6 = 1
            goto L9a
        L99:
            r5 = 0
        L9a:
            if (r5 != 0) goto La6
            gnu.expr.Expression r1 = r8.func
            java.lang.Object r1 = r1.visit(r7, r9)
            gnu.expr.Expression r1 = (gnu.expr.Expression) r1
            r8.func = r1
        La6:
            java.lang.Object r1 = r7.exitValue
            if (r1 != 0) goto Lb4
            if (r6 != 0) goto Lb4
            gnu.expr.Expression[] r1 = r8.args
            gnu.expr.Expression[] r9 = r7.visitExps(r1, r9)
            r8.args = r9
        Lb4:
            int r9 = r7.backJumpPossible
            if (r9 <= r0) goto Lbd
            r9 = 8
            r8.setFlag(r9)
        Lbd:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.FindCapturedVars.visitApplyExp(gnu.expr.ApplyExp, java.lang.Void):gnu.expr.Expression");
    }

    @Override // gnu.expr.ExpVisitor
    public void visitDefaultArgs(LambdaExp lambdaExp, Void r3) {
        if (lambdaExp.defaultArgs == null) {
            return;
        }
        super.visitDefaultArgs(lambdaExp, (LambdaExp) r3);
        for (Declaration declarationFirstDecl = lambdaExp.firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            if (!declarationFirstDecl.isSimple()) {
                lambdaExp.setFlag(true, 512);
                return;
            }
        }
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitClassExp(ClassExp classExp, Void r5) {
        Declaration declaration;
        Expression expression = (Expression) super.visitClassExp(classExp, (ClassExp) r5);
        if (!classExp.explicitInit && !classExp.instanceType.isInterface()) {
            Compilation.getConstructor(classExp.instanceType, classExp);
        } else if (classExp.getNeedsClosureEnv()) {
            for (LambdaExp lambdaExp = classExp.firstChild; lambdaExp != null; lambdaExp = lambdaExp.nextSibling) {
                if ("*init*".equals(lambdaExp.getName())) {
                    lambdaExp.setNeedsStaticLink(true);
                }
            }
        }
        if (classExp.isSimple() && classExp.getNeedsClosureEnv() && (declaration = classExp.nameDecl) != null && declaration.getType() == Compilation.typeClass) {
            classExp.nameDecl.setType(Compilation.typeClassType);
        }
        return expression;
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitModuleExp(ModuleExp moduleExp, Void r5) {
        ModuleExp moduleExp2 = this.currentModule;
        Hashtable hashtable = this.unknownDecls;
        this.currentModule = moduleExp;
        this.unknownDecls = null;
        try {
            return visitLambdaExp((LambdaExp) moduleExp, r5);
        } finally {
            this.currentModule = moduleExp2;
            this.unknownDecls = hashtable;
        }
    }

    public void maybeWarnNoDeclarationSeen(Object obj, Compilation compilation, SourceLocator sourceLocator) {
        if (compilation.warnUndefinedVariable()) {
            compilation.error('w', "no declaration seen for " + obj, sourceLocator);
        }
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitFluidLetExp(FluidLetExp fluidLetExp, Void r6) {
        for (Declaration declarationFirstDecl = fluidLetExp.firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            if (declarationFirstDecl.base == null) {
                Object symbol = declarationFirstDecl.getSymbol();
                Declaration declarationAllocUnboundDecl = allocUnboundDecl(symbol, false);
                maybeWarnNoDeclarationSeen(symbol, this.comp, fluidLetExp);
                capture(declarationAllocUnboundDecl);
                declarationFirstDecl.base = declarationAllocUnboundDecl;
            }
        }
        return (Expression) super.visitLetExp((LetExp) fluidLetExp, (FluidLetExp) r6);
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitLetExp(LetExp letExp, Void r11) {
        Expression expression = letExp.body;
        if (expression instanceof BeginExp) {
            Expression[] expressionArr = letExp.inits;
            int length = expressionArr.length;
            Expression[] expressionArr2 = ((BeginExp) expression).exps;
            Declaration declarationFirstDecl = letExp.firstDecl();
            int i = 0;
            for (int i2 = 0; i2 < expressionArr2.length && i < length; i2++) {
                Expression expression2 = expressionArr2[i2];
                if (expression2 instanceof SetExp) {
                    SetExp setExp = (SetExp) expression2;
                    if (setExp.binding == declarationFirstDecl && expressionArr[i] == QuoteExp.nullExp && setExp.isDefining()) {
                        Expression expression3 = setExp.new_value;
                        if (((expression3 instanceof QuoteExp) || (expression3 instanceof LambdaExp)) && declarationFirstDecl.getValue() == expression3) {
                            expressionArr[i] = expression3;
                            expressionArr2[i2] = QuoteExp.voidExp;
                        }
                        i++;
                        declarationFirstDecl = declarationFirstDecl.nextDecl();
                    }
                }
            }
        }
        return (Expression) super.visitLetExp(letExp, (LetExp) r11);
    }

    public static Expression checkInlineable(LambdaExp lambdaExp, Set<LambdaExp> set) {
        Expression expression = lambdaExp.returnContinuation;
        ApplyExp applyExp = LambdaExp.unknownContinuation;
        if (expression == applyExp) {
            return expression;
        }
        if (set.contains(lambdaExp)) {
            return lambdaExp.returnContinuation;
        }
        if (lambdaExp.getCanRead() || lambdaExp.isClassMethod() || lambdaExp.min_args != lambdaExp.max_args) {
            lambdaExp.returnContinuation = applyExp;
            return applyExp;
        }
        set.add(lambdaExp);
        Expression expression2 = lambdaExp.returnContinuation;
        Set<LambdaExp> set2 = lambdaExp.tailCallers;
        if (set2 != null) {
            for (LambdaExp lambdaExp2 : set2) {
                Expression expressionCheckInlineable = checkInlineable(lambdaExp2, set);
                ApplyExp applyExp2 = LambdaExp.unknownContinuation;
                if (expressionCheckInlineable == applyExp2) {
                    if (expression2 == null || expression2 == lambdaExp2.body) {
                        expression2 = lambdaExp2.body;
                        lambdaExp.inlineHome = lambdaExp2;
                    } else {
                        lambdaExp.returnContinuation = applyExp2;
                        return expressionCheckInlineable;
                    }
                } else if (expression2 == null) {
                    if (lambdaExp.inlineHome == null) {
                        if (!lambdaExp.nestedIn(lambdaExp2)) {
                            lambdaExp2 = lambdaExp2.inlineHome;
                        }
                        lambdaExp.inlineHome = lambdaExp2;
                    }
                    expression2 = expressionCheckInlineable;
                } else if ((expressionCheckInlineable != null && expression2 != expressionCheckInlineable) || lambdaExp.getFlag(32)) {
                    lambdaExp.returnContinuation = applyExp2;
                    return applyExp2;
                }
            }
        }
        return expression2;
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitLambdaExp(LambdaExp lambdaExp, Void r4) {
        if (checkInlineable(lambdaExp, new LinkedHashSet()) != LambdaExp.unknownContinuation && (!(lambdaExp.outer instanceof ModuleExp) || lambdaExp.nameDecl == null)) {
            lambdaExp.setInlineOnly(true);
            this.backJumpPossible++;
        }
        return (Expression) super.visitLambdaExp(lambdaExp, (LambdaExp) r4);
    }

    public void capture(Declaration declaration) {
        if (declaration.getCanRead() || declaration.getCanCall()) {
            Field field = declaration.field;
            if (field == null || !field.getStaticFlag()) {
                if (this.comp.immediate && declaration.hasConstantValue()) {
                    return;
                }
                LambdaExp currentLambda = getCurrentLambda();
                ScopeExp context = declaration.getContext();
                if (context == null) {
                    throw new Error("null context for " + declaration + " curL:" + currentLambda);
                }
                LambdaExp lambdaExpCurrentLambda = context.currentLambda();
                LambdaExp lambdaExp = null;
                LambdaExp lambdaExp2 = null;
                LambdaExp lambdaExp3 = null;
                while (currentLambda != lambdaExpCurrentLambda && currentLambda.getInlineOnly()) {
                    LambdaExp lambdaExpOuterLambda = currentLambda.outerLambda();
                    if (lambdaExpOuterLambda != lambdaExp2) {
                        lambdaExp3 = lambdaExpOuterLambda.firstChild;
                        lambdaExp2 = lambdaExpOuterLambda;
                    }
                    if (lambdaExp3 == null || currentLambda.inlineHome == null) {
                        currentLambda.setCanCall(false);
                        return;
                    } else {
                        currentLambda = currentLambda.getCaller();
                        lambdaExp3 = lambdaExp3.nextSibling;
                    }
                }
                if (this.comp.usingCPStyle()) {
                    if (currentLambda instanceof ModuleExp) {
                        return;
                    }
                } else if (currentLambda == lambdaExpCurrentLambda) {
                    return;
                }
                Expression value = declaration.getValue();
                if (value != null && (value instanceof LambdaExp)) {
                    LambdaExp lambdaExp4 = (LambdaExp) value;
                    if (lambdaExp4.getInlineOnly()) {
                        return;
                    }
                    if (!lambdaExp4.isHandlingTailCalls()) {
                        if (lambdaExp4 == currentLambda && !declaration.getCanRead()) {
                            return;
                        } else {
                            lambdaExp = lambdaExp4;
                        }
                    }
                }
                if (declaration.getFlag(65536L)) {
                    LambdaExp lambdaExpOuterLambda2 = currentLambda;
                    while (true) {
                        if (lambdaExpOuterLambda2 == lambdaExpCurrentLambda) {
                            break;
                        }
                        Declaration declaration2 = lambdaExpOuterLambda2.nameDecl;
                        if (declaration2 == null || !declaration2.getFlag(2048L)) {
                            lambdaExpOuterLambda2 = lambdaExpOuterLambda2.outerLambda();
                        } else {
                            declaration.setFlag(2048L);
                            break;
                        }
                    }
                }
                Declaration declaration3 = declaration.base;
                if (declaration3 != null) {
                    declaration3.setCanRead(true);
                    capture(declaration.base);
                    return;
                }
                if (declaration.getCanRead() || declaration.getCanCall() || lambdaExp == null) {
                    if (!declaration.isStatic()) {
                        if (!declaration.isFluid()) {
                            currentLambda.setImportsLexVars();
                        }
                        for (LambdaExp lambdaExpOuterLambda3 = currentLambda.outerLambda(); lambdaExpOuterLambda3 != lambdaExpCurrentLambda && lambdaExpOuterLambda3 != null && (declaration.getCanRead() || lambdaExp != lambdaExpOuterLambda3); lambdaExpOuterLambda3 = lambdaExpOuterLambda3.outerLambda()) {
                            Declaration declaration4 = lambdaExpOuterLambda3.nameDecl;
                            if (declaration4 != null && declaration4.getFlag(2048L)) {
                                this.comp.error('e', "static " + lambdaExpOuterLambda3.getName() + " references non-static " + declaration.getName());
                            }
                            if ((lambdaExpOuterLambda3 instanceof ClassExp) && lambdaExpOuterLambda3.getName() != null && ((ClassExp) lambdaExpOuterLambda3).isSimple()) {
                                this.comp.error('w', lambdaExpOuterLambda3.nameDecl, "simple class ", " requiring lexical link (because of reference to " + declaration.getName() + ") - use define-class instead");
                            }
                            lambdaExpOuterLambda3.setNeedsStaticLink();
                        }
                    }
                    if (lambdaExpCurrentLambda == null) {
                        System.err.println("null declLambda for " + declaration + " curL:" + currentLambda);
                        for (ScopeExp scopeExp = declaration.context; scopeExp != null; scopeExp = scopeExp.outer) {
                            System.err.println("- context:" + scopeExp);
                        }
                    }
                    lambdaExpCurrentLambda.capture(declaration);
                }
            }
        }
    }

    public Declaration allocUnboundDecl(Object obj, boolean z) {
        Object keyPair;
        Declaration declaration;
        if (!z || !(obj instanceof Symbol)) {
            keyPair = obj;
        } else if (getCompilation().getLanguage().hasSeparateFunctionNamespace()) {
            keyPair = new KeyPair((Symbol) obj, EnvironmentKey.FUNCTION);
        } else {
            keyPair = obj;
            z = false;
        }
        Hashtable hashtable = this.unknownDecls;
        if (hashtable == null) {
            this.unknownDecls = new Hashtable(100);
            declaration = null;
        } else {
            declaration = (Declaration) hashtable.get(keyPair);
        }
        if (declaration != null) {
            return declaration;
        }
        Declaration declarationAddDeclaration = this.currentModule.addDeclaration(obj);
        declarationAddDeclaration.setSimple(false);
        declarationAddDeclaration.setPrivate(true);
        if (z) {
            declarationAddDeclaration.setProcedureDecl(true);
        }
        if (this.currentModule.isStatic()) {
            declarationAddDeclaration.setFlag(2048L);
        }
        declarationAddDeclaration.setCanRead(true);
        declarationAddDeclaration.setCanWrite(true);
        declarationAddDeclaration.setFlag(327680L);
        declarationAddDeclaration.setIndirectBinding(true);
        this.unknownDecls.put(keyPair, declarationAddDeclaration);
        return declarationAddDeclaration;
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitReferenceExp(ReferenceExp referenceExp, Void r5) {
        Declaration binding = referenceExp.getBinding();
        if (binding == null) {
            binding = allocUnboundDecl(referenceExp.getSymbol(), referenceExp.isProcedureName());
            referenceExp.setBinding(binding);
        }
        if (binding.getFlag(65536L) && this.comp.resolve(referenceExp.getSymbol(), referenceExp.isProcedureName()) == null) {
            maybeWarnNoDeclarationSeen(referenceExp.getSymbol(), this.comp, referenceExp);
        }
        capture(referenceExp.contextDecl(), binding);
        return referenceExp;
    }

    public void capture(Declaration declaration, Declaration declaration2) {
        ReferenceExp referenceExp;
        Declaration declaration3;
        if (declaration2.isAlias()) {
            Expression expression = declaration2.value;
            if ((expression instanceof ReferenceExp) && (declaration3 = (referenceExp = (ReferenceExp) expression).binding) != null && (declaration == null || !declaration3.needsContext())) {
                capture(referenceExp.contextDecl(), declaration3);
                return;
            }
        }
        while (declaration2.isFluid() && (declaration2.context instanceof FluidLetExp)) {
            declaration2 = declaration2.base;
        }
        if (declaration != null && declaration2.needsContext()) {
            capture(declaration);
        } else {
            capture(declaration2);
        }
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitThisExp(ThisExp thisExp, Void r3) {
        if (thisExp.isForContext()) {
            getCurrentLambda().setImportsLexVars();
            return thisExp;
        }
        return visitReferenceExp((ReferenceExp) thisExp, r3);
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitSetExp(SetExp setExp, Void r4) {
        Declaration declarationFollowAliases = setExp.binding;
        if (declarationFollowAliases == null) {
            declarationFollowAliases = allocUnboundDecl(setExp.getSymbol(), setExp.isFuncDef());
            setExp.binding = declarationFollowAliases;
        }
        if (!declarationFollowAliases.ignorable()) {
            if (!setExp.isDefining()) {
                declarationFollowAliases = Declaration.followAliases(declarationFollowAliases);
            }
            capture(setExp.contextDecl(), declarationFollowAliases);
        }
        return (Expression) super.visitSetExp(setExp, (SetExp) r4);
    }
}
