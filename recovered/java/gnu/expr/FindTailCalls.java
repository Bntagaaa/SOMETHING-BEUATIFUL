package gnu.expr;

import gnu.bytecode.Type;

/* loaded from: classes2.dex */
public class FindTailCalls extends ExpExpVisitor<Expression> {
    public static void findTailCalls(Expression expression, Compilation compilation) {
        FindTailCalls findTailCalls = new FindTailCalls();
        findTailCalls.setContext(compilation);
        findTailCalls.visit(expression, expression);
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitExpression(Expression expression, Expression expression2) {
        return (Expression) super.visitExpression(expression, expression);
    }

    public Expression[] visitExps(Expression[] expressionArr) {
        int length = expressionArr.length;
        for (int i = 0; i < length; i++) {
            Expression expression = expressionArr[i];
            expressionArr[i] = visit(expression, expression);
        }
        return expressionArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0075  */
    @Override // gnu.expr.ExpVisitor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.expr.Expression visitApplyExp(gnu.expr.ApplyExp r7, gnu.expr.Expression r8) {
        /*
            r6 = this;
            gnu.expr.LambdaExp r0 = r6.currentLambda
            gnu.expr.Expression r0 = r0.body
            r1 = 0
            r2 = 1
            if (r8 != r0) goto La
            r0 = 1
            goto Lb
        La:
            r0 = 0
        Lb:
            if (r0 == 0) goto L10
            r7.setTailCall(r2)
        L10:
            gnu.expr.LambdaExp r3 = r6.currentLambda
            r7.context = r3
            gnu.expr.Expression r3 = r7.func
            boolean r4 = r3 instanceof gnu.expr.ReferenceExp
            r5 = 0
            if (r4 == 0) goto L4c
            gnu.expr.ReferenceExp r3 = (gnu.expr.ReferenceExp) r3
            gnu.expr.Declaration r1 = r3.binding
            gnu.expr.Declaration r1 = gnu.expr.Declaration.followAliases(r1)
            if (r1 == 0) goto L75
            r2 = 2048(0x800, double:1.012E-320)
            boolean r2 = r1.getFlag(r2)
            if (r2 != 0) goto L33
            gnu.expr.ApplyExp r2 = r1.firstCall
            r7.nextCall = r2
            r1.firstCall = r7
        L33:
            gnu.expr.Compilation r2 = r6.getCompilation()
            r1.setCanCall()
            boolean r2 = r2.mustCompile
            if (r2 != 0) goto L41
            r1.setCanRead()
        L41:
            gnu.expr.Expression r1 = r1.getValue()
            boolean r2 = r1 instanceof gnu.expr.LambdaExp
            if (r2 == 0) goto L75
            gnu.expr.LambdaExp r1 = (gnu.expr.LambdaExp) r1
            goto L76
        L4c:
            boolean r4 = r3 instanceof gnu.expr.LambdaExp
            if (r4 == 0) goto L5e
            boolean r4 = r3 instanceof gnu.expr.ClassExp
            if (r4 != 0) goto L5e
            gnu.expr.LambdaExp r3 = (gnu.expr.LambdaExp) r3
            r6.visitLambdaExp(r3, r1)
            r3.setCanCall(r2)
            r1 = r3
            goto L76
        L5e:
            boolean r1 = r3 instanceof gnu.expr.QuoteExp
            if (r1 == 0) goto L6d
            gnu.expr.QuoteExp r3 = (gnu.expr.QuoteExp) r3
            java.lang.Object r1 = r3.getValue()
            gnu.kawa.functions.AppendValues r2 = gnu.kawa.functions.AppendValues.appendValues
            if (r1 != r2) goto L6d
            goto L75
        L6d:
            gnu.expr.Expression r1 = r7.func
            gnu.expr.Expression r1 = r6.visitExpression(r1, r1)
            r7.func = r1
        L75:
            r1 = r5
        L76:
            if (r1 == 0) goto La6
            gnu.expr.Expression r2 = r1.returnContinuation
            if (r2 != r8) goto L7d
            goto La6
        L7d:
            gnu.expr.LambdaExp r3 = r6.currentLambda
            if (r1 != r3) goto L84
            if (r0 == 0) goto L84
            goto La6
        L84:
            if (r0 == 0) goto L99
            java.util.Set<gnu.expr.LambdaExp> r8 = r1.tailCallers
            if (r8 != 0) goto L91
            java.util.HashSet r8 = new java.util.HashSet
            r8.<init>()
            r1.tailCallers = r8
        L91:
            java.util.Set<gnu.expr.LambdaExp> r8 = r1.tailCallers
            gnu.expr.LambdaExp r0 = r6.currentLambda
            r8.add(r0)
            goto La6
        L99:
            if (r2 != 0) goto La0
            r1.returnContinuation = r8
            r1.inlineHome = r3
            goto La6
        La0:
            gnu.expr.ApplyExp r8 = gnu.expr.LambdaExp.unknownContinuation
            r1.returnContinuation = r8
            r1.inlineHome = r5
        La6:
            gnu.expr.Expression[] r8 = r7.args
            gnu.expr.Expression[] r8 = r6.visitExps(r8)
            r7.args = r8
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.FindTailCalls.visitApplyExp(gnu.expr.ApplyExp, gnu.expr.Expression):gnu.expr.Expression");
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitBlockExp(BlockExp blockExp, Expression expression) {
        blockExp.body = (Expression) blockExp.body.visit(this, expression);
        Expression expression2 = blockExp.exitBody;
        if (expression2 != null) {
            blockExp.exitBody = (Expression) expression2.visit(this, expression2);
        }
        return blockExp;
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitBeginExp(BeginExp beginExp, Expression expression) {
        int i = beginExp.length - 1;
        int i2 = 0;
        while (i2 <= i) {
            Expression[] expressionArr = beginExp.exps;
            Expression expression2 = expressionArr[i2];
            expressionArr[i2] = (Expression) expression2.visit(this, i2 == i ? expression : expression2);
            i2++;
        }
        return beginExp;
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitFluidLetExp(FluidLetExp fluidLetExp, Expression expression) {
        for (Declaration declarationFirstDecl = fluidLetExp.firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            declarationFirstDecl.setCanRead(true);
            Declaration declaration = declarationFirstDecl.base;
            if (declaration != null) {
                declaration.setCanRead(true);
            }
        }
        visitLetDecls(fluidLetExp);
        Expression expression2 = fluidLetExp.body;
        fluidLetExp.body = (Expression) expression2.visit(this, expression2);
        postVisitDecls(fluidLetExp);
        return fluidLetExp;
    }

    public void visitLetDecls(LetExp letExp) {
        Declaration declarationFirstDecl = letExp.firstDecl();
        int length = letExp.inits.length;
        int i = 0;
        while (i < length) {
            Expression expressionVisitSetExp = visitSetExp(declarationFirstDecl, letExp.inits[i]);
            if (expressionVisitSetExp == QuoteExp.undefined_exp) {
                Expression value = declarationFirstDecl.getValue();
                if ((value instanceof LambdaExp) || (value != expressionVisitSetExp && (value instanceof QuoteExp))) {
                    expressionVisitSetExp = value;
                }
            }
            letExp.inits[i] = expressionVisitSetExp;
            i++;
            declarationFirstDecl = declarationFirstDecl.nextDecl();
        }
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitLetExp(LetExp letExp, Expression expression) {
        visitLetDecls(letExp);
        letExp.body = (Expression) letExp.body.visit(this, expression);
        postVisitDecls(letExp);
        return letExp;
    }

    public void postVisitDecls(ScopeExp scopeExp) {
        Declaration declarationContextDecl;
        for (Declaration declarationFirstDecl = scopeExp.firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            Expression value = declarationFirstDecl.getValue();
            if (value instanceof LambdaExp) {
                LambdaExp lambdaExp = (LambdaExp) value;
                if (declarationFirstDecl.getCanRead()) {
                    lambdaExp.setCanRead(true);
                }
                if (declarationFirstDecl.getCanCall()) {
                    lambdaExp.setCanCall(true);
                }
            }
            if (declarationFirstDecl.getFlag(1024L) && (value instanceof ReferenceExp) && (declarationContextDecl = ((ReferenceExp) value).contextDecl()) != null && declarationContextDecl.isPrivate()) {
                declarationContextDecl.setFlag(524288L);
            }
        }
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitIfExp(IfExp ifExp, Expression expression) {
        Expression expression2 = ifExp.test;
        ifExp.test = (Expression) expression2.visit(this, expression2);
        ifExp.then_clause = (Expression) ifExp.then_clause.visit(this, expression);
        Expression expression3 = ifExp.else_clause;
        if (expression3 != null) {
            ifExp.else_clause = (Expression) expression3.visit(this, expression);
        }
        return ifExp;
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitLambdaExp(LambdaExp lambdaExp, Expression expression) {
        visitLambdaExp(lambdaExp, true);
        return lambdaExp;
    }

    public final void visitLambdaExp(LambdaExp lambdaExp, boolean z) {
        Expression expression;
        LambdaExp lambdaExp2 = this.currentLambda;
        this.currentLambda = lambdaExp;
        if (z) {
            lambdaExp.setCanRead(true);
        }
        try {
            Expression[] expressionArr = lambdaExp.defaultArgs;
            if (expressionArr != null) {
                lambdaExp.defaultArgs = visitExps(expressionArr);
            }
            if (this.exitValue == null && (expression = lambdaExp.body) != null) {
                lambdaExp.body = (Expression) expression.visit(this, lambdaExp.getInlineOnly() ? lambdaExp : lambdaExp.body);
            }
            this.currentLambda = lambdaExp2;
            postVisitDecls(lambdaExp);
        } catch (Throwable th) {
            this.currentLambda = lambdaExp2;
            throw th;
        }
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitClassExp(ClassExp classExp, Expression expression) {
        LambdaExp lambdaExp = this.currentLambda;
        this.currentLambda = classExp;
        try {
            for (LambdaExp lambdaExp2 = classExp.firstChild; lambdaExp2 != null; lambdaExp2 = lambdaExp2.nextSibling) {
                if (this.exitValue != null) {
                    break;
                }
                visitLambdaExp(lambdaExp2, false);
            }
            return classExp;
        } finally {
            this.currentLambda = lambdaExp;
        }
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitReferenceExp(ReferenceExp referenceExp, Expression expression) {
        Declaration declarationFollowAliases = Declaration.followAliases(referenceExp.binding);
        if (declarationFollowAliases != null) {
            Type type = declarationFollowAliases.type;
            if (type != null && type.isVoid()) {
                return QuoteExp.voidExp;
            }
            declarationFollowAliases.setCanRead(true);
        }
        Declaration declarationContextDecl = referenceExp.contextDecl();
        if (declarationContextDecl != null) {
            declarationContextDecl.setCanRead(true);
        }
        return referenceExp;
    }

    public final Expression visitSetExp(Declaration declaration, Expression expression) {
        if (declaration != null && declaration.getValue() == expression && (expression instanceof LambdaExp) && !(expression instanceof ClassExp) && !declaration.isPublic()) {
            LambdaExp lambdaExp = (LambdaExp) expression;
            visitLambdaExp(lambdaExp, false);
            return lambdaExp;
        }
        return (Expression) expression.visit(this, expression);
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitSetExp(SetExp setExp, Expression expression) {
        Declaration declarationFollowAliases = setExp.binding;
        if (declarationFollowAliases != null && declarationFollowAliases.isAlias()) {
            if (setExp.isDefining()) {
                Expression expression2 = setExp.new_value;
                setExp.new_value = (Expression) expression2.visit(this, expression2);
                return setExp;
            }
            declarationFollowAliases = Declaration.followAliases(declarationFollowAliases);
        }
        Declaration declarationContextDecl = setExp.contextDecl();
        if (declarationContextDecl != null) {
            declarationContextDecl.setCanRead(true);
        }
        Expression expressionVisitSetExp = visitSetExp(declarationFollowAliases, setExp.new_value);
        if (declarationFollowAliases != null && (declarationFollowAliases.context instanceof LetExp) && expressionVisitSetExp == declarationFollowAliases.getValue() && ((expressionVisitSetExp instanceof LambdaExp) || (expressionVisitSetExp instanceof QuoteExp))) {
            return QuoteExp.voidExp;
        }
        setExp.new_value = expressionVisitSetExp;
        return setExp;
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitTryExp(TryExp tryExp, Expression expression) {
        tryExp.try_clause = (Expression) tryExp.try_clause.visit(this, tryExp.finally_clause == null ? expression : tryExp.try_clause);
        for (CatchClause next = tryExp.catch_clauses; this.exitValue == null && next != null; next = next.getNext()) {
            next.body = (Expression) next.body.visit(this, tryExp.finally_clause == null ? expression : next.body);
        }
        Expression expression2 = tryExp.finally_clause;
        if (expression2 != null) {
            tryExp.finally_clause = (Expression) expression2.visit(this, expression2);
        }
        return tryExp;
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitSynchronizedExp(SynchronizedExp synchronizedExp, Expression expression) {
        Expression expression2 = synchronizedExp.object;
        synchronizedExp.object = (Expression) expression2.visit(this, expression2);
        Expression expression3 = synchronizedExp.body;
        synchronizedExp.body = (Expression) expression3.visit(this, expression3);
        return synchronizedExp;
    }
}
