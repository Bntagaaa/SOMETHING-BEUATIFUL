package gnu.expr;

import _COROUTINE.a;
import gnu.text.SourceLocator;
import gnu.text.SourceMessages;

/* loaded from: classes2.dex */
public class ExpVisitor<R, D> implements SourceLocator {
    Compilation comp;
    protected LambdaExp currentLambda = null;
    protected Object exitValue = null;
    protected SourceMessages messages;

    public R defaultValue(Expression expression, D d) {
        return null;
    }

    @Override // gnu.text.SourceLocator
    public boolean isStableSourceLocation() {
        return false;
    }

    public Expression update(Expression expression, R r) {
        return expression;
    }

    public Compilation getCompilation() {
        return this.comp;
    }

    public SourceMessages getMessages() {
        return this.messages;
    }

    public R visitExpression(Expression expression, D d) {
        expression.visitChildren(this, d);
        return defaultValue(expression, d);
    }

    public void setContext(Compilation compilation) {
        this.comp = compilation;
        this.messages = compilation.getMessages();
    }

    public R visit(Expression expression, D d) {
        int lineNumber = expression.getLineNumber();
        SourceMessages sourceMessages = this.messages;
        if (sourceMessages != null && lineNumber > 0) {
            String fileName = sourceMessages.getFileName();
            int lineNumber2 = this.messages.getLineNumber();
            int columnNumber = this.messages.getColumnNumber();
            this.messages.setLine(expression.getFileName(), lineNumber, expression.getColumnNumber());
            R r = (R) expression.visit(this, d);
            this.messages.setLine(fileName, lineNumber2, columnNumber);
            return r;
        }
        return (R) expression.visit(this, d);
    }

    public R visitApplyExp(ApplyExp applyExp, D d) {
        return visitExpression(applyExp, d);
    }

    public R visitIfExp(IfExp ifExp, D d) {
        return visitExpression(ifExp, d);
    }

    public final void visitDeclarationType(Declaration declaration) {
        Expression expressionVisitAndUpdate;
        Expression expression = declaration.typeExp;
        if (expression == null || (expressionVisitAndUpdate = visitAndUpdate(expression, null)) == expression) {
            return;
        }
        declaration.setTypeExp(expressionVisitAndUpdate);
    }

    public final void visitDeclarationTypes(ScopeExp scopeExp) {
        for (Declaration declarationFirstDecl = scopeExp.firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            visitDeclarationType(declarationFirstDecl);
        }
    }

    public R visitScopeExp(ScopeExp scopeExp, D d) {
        visitDeclarationTypes(scopeExp);
        return visitExpression(scopeExp, d);
    }

    public R visitLetExp(LetExp letExp, D d) {
        return visitScopeExp(letExp, d);
    }

    public R visitLambdaExp(LambdaExp lambdaExp, D d) {
        return visitScopeExp(lambdaExp, d);
    }

    public R visitClassExp(ClassExp classExp, D d) {
        return visitLambdaExp(classExp, d);
    }

    public R visitObjectExp(ObjectExp objectExp, D d) {
        return visitClassExp(objectExp, d);
    }

    public R visitModuleExp(ModuleExp moduleExp, D d) {
        return visitLambdaExp(moduleExp, d);
    }

    public Expression visitSetExpValue(Expression expression, D d, Declaration declaration) {
        return visitAndUpdate(expression, d);
    }

    public R visitSetExp(SetExp setExp, D d) {
        Declaration declaration = setExp.binding;
        boolean z = declaration != null && declaration.value == setExp.new_value;
        setExp.new_value = visitSetExpValue(setExp.new_value, d, setExp.getBinding());
        if (z && setExp.isDefining()) {
            Expression expression = setExp.new_value;
            declaration.value = expression;
            if (expression instanceof LambdaExp) {
                ((LambdaExp) expression).nameDecl = declaration;
            }
        }
        return defaultValue(setExp, d);
    }

    public R visitTryExp(TryExp tryExp, D d) {
        return visitExpression(tryExp, d);
    }

    public R visitBeginExp(BeginExp beginExp, D d) {
        return visitExpression(beginExp, d);
    }

    public R visitQuoteExp(QuoteExp quoteExp, D d) {
        return visitExpression(quoteExp, d);
    }

    public R visitReferenceExp(ReferenceExp referenceExp, D d) {
        return visitExpression(referenceExp, d);
    }

    public R visitThisExp(ThisExp thisExp, D d) {
        return visitReferenceExp(thisExp, d);
    }

    public R visitSynchronizedExp(SynchronizedExp synchronizedExp, D d) {
        return visitExpression(synchronizedExp, d);
    }

    public R visitBlockExp(BlockExp blockExp, D d) {
        return visitExpression(blockExp, d);
    }

    public R visitExitExp(ExitExp exitExp, D d) {
        return visitExpression(exitExp, d);
    }

    public R visitFluidLetExp(FluidLetExp fluidLetExp, D d) {
        return visitLetExp(fluidLetExp, d);
    }

    public R visitLangExp(LangExp langExp, D d) {
        return visitExpression(langExp, d);
    }

    public Object getExitValue() {
        return this.exitValue;
    }

    public final LambdaExp getCurrentLambda() {
        return this.currentLambda;
    }

    public Expression visitAndUpdate(Expression expression, D d) {
        return update(expression, visit(expression, d));
    }

    public Expression[] visitExps(Expression[] expressionArr, D d) {
        if (expressionArr == null) {
            return null;
        }
        return visitExps(expressionArr, expressionArr.length, d);
    }

    public Expression[] visitExps(Expression[] expressionArr, int i, D d) {
        for (int i2 = 0; i2 < i && this.exitValue == null; i2++) {
            expressionArr[i2] = visitAndUpdate(expressionArr[i2], d);
        }
        return expressionArr;
    }

    public void visitDefaultArgs(LambdaExp lambdaExp, D d) {
        lambdaExp.defaultArgs = visitExps(lambdaExp.defaultArgs, d);
    }

    public void error(char c, String str) {
        if (c == 'w' && this.comp.warnAsError()) {
            c = 'e';
        }
        SourceMessages sourceMessages = this.messages;
        if (sourceMessages != null) {
            sourceMessages.error(c, str);
        } else {
            new Error(a.i("internal error: ", str));
        }
    }

    public Expression noteError(String str) {
        SourceMessages sourceMessages = this.messages;
        if (sourceMessages != null) {
            sourceMessages.error('e', str);
        }
        return new ErrorExp(str);
    }

    @Override // gnu.text.SourceLocator
    public final String getFileName() {
        return this.messages.getFileName();
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public final int getLineNumber() {
        return this.messages.getLineNumber();
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public final int getColumnNumber() {
        return this.messages.getColumnNumber();
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public String getPublicId() {
        return this.messages.getPublicId();
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public String getSystemId() {
        return this.messages.getSystemId();
    }

    public void setFile(String str) {
        this.messages.setFile(str);
    }

    public void setLine(int i) {
        this.messages.setLine(i);
    }

    public void setColumn(int i) {
        this.messages.setColumn(i);
    }

    public void setLine(String str, int i, int i2) {
        this.messages.setLine(str, i, i2);
    }
}
