package gnu.expr;

import _COROUTINE.a;
import gnu.bytecode.Type;
import gnu.kawa.functions.GetNamedPart;
import gnu.kawa.reflect.OccurrenceType;
import gnu.kawa.util.IdentityHashTable;
import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.CharArrayOutPort;
import gnu.mapping.Environment;
import gnu.mapping.OutPort;
import gnu.mapping.Procedure0;
import gnu.text.Printable;
import gnu.text.SourceLocator;
import java.io.IOException;
import java.io.PrintWriter;

/* loaded from: classes2.dex */
public abstract class Expression extends Procedure0 implements Printable, SourceLocator {
    protected static final int NEXT_AVAIL_FLAG = 2;
    public static final int VALIDATED = 1;
    public static final Expression[] noExpressions = new Expression[0];
    String filename;
    protected int flags;
    int position;

    public abstract void compile(Compilation compilation, Target target);

    public Expression deepCopy(IdentityHashTable identityHashTable) {
        return null;
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public String getPublicId() {
        return null;
    }

    @Override // gnu.text.SourceLocator
    public boolean isStableSourceLocation() {
        return true;
    }

    public abstract boolean mustCompile();

    public abstract void print(OutPort outPort);

    public boolean side_effects() {
        return true;
    }

    public Object valueIfConstant() {
        return null;
    }

    public <R, D> void visitChildren(ExpVisitor<R, D> expVisitor, D d) {
    }

    public final Object eval(CallContext callContext) throws Throwable {
        int iStartFromContext = callContext.startFromContext();
        try {
            match0(callContext);
            return callContext.getFromContext(iStartFromContext);
        } catch (Throwable th) {
            callContext.cleanupFromContext(iStartFromContext);
            throw th;
        }
    }

    public final Object eval(Environment environment) throws Throwable {
        CallContext callContext = CallContext.getInstance();
        Environment saveCurrent = Environment.setSaveCurrent(environment);
        try {
            return eval(callContext);
        } finally {
            Environment.restoreCurrent(saveCurrent);
        }
    }

    @Override // gnu.mapping.Procedure
    public final int match0(CallContext callContext) {
        callContext.proc = this;
        callContext.pc = 0;
        return 0;
    }

    @Override // gnu.mapping.Procedure0, gnu.mapping.Procedure
    public final Object apply0() throws Throwable {
        CallContext callContext = CallContext.getInstance();
        check0(callContext);
        return callContext.runUntilValue();
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        throw new RuntimeException("internal error - " + getClass() + ".eval called");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // gnu.text.Printable
    public final void print(Consumer consumer) throws IOException {
        if (consumer instanceof OutPort) {
            print((OutPort) consumer);
            return;
        }
        if (consumer instanceof PrintWriter) {
            OutPort outPort = new OutPort((PrintWriter) consumer);
            print(outPort);
            outPort.close();
        } else {
            CharArrayOutPort charArrayOutPort = new CharArrayOutPort();
            print((OutPort) charArrayOutPort);
            charArrayOutPort.close();
            charArrayOutPort.writeTo(consumer);
        }
    }

    public void printLineColumn(OutPort outPort) throws IOException {
        int lineNumber = getLineNumber();
        if (lineNumber > 0) {
            outPort.print("line:");
            outPort.print(lineNumber);
            int columnNumber = getColumnNumber();
            if (columnNumber > 0) {
                outPort.print(':');
                outPort.print(columnNumber);
            }
            outPort.writeSpaceFill();
        }
    }

    public final void compileWithPosition(Compilation compilation, Target target) {
        int lineNumber = getLineNumber();
        if (lineNumber > 0) {
            compilation.getCode().putLineNumber(getFileName(), lineNumber);
            compileNotePosition(compilation, target, this);
        } else {
            compile(compilation, target);
        }
    }

    public final void compileWithPosition(Compilation compilation, Target target, Expression expression) {
        int lineNumber = expression.getLineNumber();
        if (lineNumber > 0) {
            compilation.getCode().putLineNumber(expression.getFileName(), lineNumber);
            compileNotePosition(compilation, target, expression);
        } else {
            compile(compilation, target);
        }
    }

    public final void compileNotePosition(Compilation compilation, Target target, Expression expression) {
        String fileName = compilation.getFileName();
        int lineNumber = compilation.getLineNumber();
        int columnNumber = compilation.getColumnNumber();
        compilation.setLine(expression);
        compile(compilation, target);
        compilation.setLine(fileName, lineNumber, columnNumber);
    }

    public final void compile(Compilation compilation, Type type) {
        compile(compilation, StackTarget.getInstance(type));
    }

    public final void compile(Compilation compilation, Declaration declaration) {
        compile(compilation, CheckedTarget.getInstance(declaration));
    }

    public static void compileButFirst(Expression expression, Compilation compilation) {
        BeginExp beginExp;
        int i;
        if (!(expression instanceof BeginExp) || (i = (beginExp = (BeginExp) expression).length) == 0) {
            return;
        }
        Expression[] expressionArr = beginExp.exps;
        compileButFirst(expressionArr[0], compilation);
        for (int i2 = 1; i2 < i; i2++) {
            expressionArr[i2].compileWithPosition(compilation, Target.Ignore);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Expression deepCopy(Expression expression, IdentityHashTable identityHashTable) {
        if (expression == null) {
            return null;
        }
        V v = identityHashTable.get(expression);
        if (v != 0) {
            return (Expression) v;
        }
        Expression expressionDeepCopy = expression.deepCopy(identityHashTable);
        identityHashTable.put(expression, expressionDeepCopy);
        return expressionDeepCopy;
    }

    public static Expression[] deepCopy(Expression[] expressionArr, IdentityHashTable identityHashTable) {
        if (expressionArr == null) {
            return null;
        }
        int length = expressionArr.length;
        Expression[] expressionArr2 = new Expression[length];
        for (int i = 0; i < length; i++) {
            Expression expression = expressionArr[i];
            Expression expressionDeepCopy = deepCopy(expression, identityHashTable);
            if (expressionDeepCopy == null && expression != null) {
                return null;
            }
            expressionArr2[i] = expressionDeepCopy;
        }
        return expressionArr2;
    }

    public static Expression deepCopy(Expression expression) {
        return deepCopy(expression, new IdentityHashTable());
    }

    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        return expVisitor.visitExpression(this, d);
    }

    public Expression validateApply(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Declaration declaration) {
        applyExp.args = inlineCalls.visitExps(applyExp.args, null);
        return applyExp;
    }

    public static Expression makeWhile(Object obj, Object obj2, Compilation compilation) {
        LetExp letExp = new LetExp(new Expression[]{lambdaExp});
        Declaration declarationAddDeclaration = letExp.addDeclaration("%do%loop");
        ReferenceExp referenceExp = new ReferenceExp(declarationAddDeclaration);
        Expression[] expressionArr = noExpressions;
        ApplyExp applyExp = new ApplyExp((Expression) referenceExp, expressionArr);
        LambdaExp lambdaExp = new LambdaExp();
        compilation.push(lambdaExp);
        lambdaExp.body = new IfExp(compilation.parse(obj), new BeginExp(compilation.parse(obj2), applyExp), QuoteExp.voidExp);
        lambdaExp.setName("%do%loop");
        compilation.pop(lambdaExp);
        declarationAddDeclaration.noteValue(lambdaExp);
        letExp.setBody(new ApplyExp((Expression) new ReferenceExp(declarationAddDeclaration), expressionArr));
        return letExp;
    }

    public final void setLocation(SourceLocator sourceLocator) {
        this.filename = sourceLocator.getFileName();
        setLine(sourceLocator.getLineNumber(), sourceLocator.getColumnNumber());
    }

    public final Expression setLine(Expression expression) {
        setLocation(expression);
        return this;
    }

    public final void setFile(String str) {
        this.filename = str;
    }

    public final void setLine(int i, int i2) {
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        this.position = (i << 12) + i2;
    }

    public final void setLine(int i) {
        setLine(i, 0);
    }

    @Override // gnu.text.SourceLocator
    public final String getFileName() {
        return this.filename;
    }

    public void setLine(Compilation compilation) {
        int lineNumber = compilation.getLineNumber();
        if (lineNumber > 0) {
            setFile(compilation.getFileName());
            setLine(lineNumber, compilation.getColumnNumber());
        }
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public String getSystemId() {
        return this.filename;
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public final int getLineNumber() {
        int i = this.position >> 12;
        if (i == 0) {
            return -1;
        }
        return i;
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public final int getColumnNumber() {
        int i = this.position & 4095;
        if (i == 0) {
            return -1;
        }
        return i;
    }

    public Type getType() {
        return Type.pointer_type;
    }

    public boolean isSingleValue() {
        return OccurrenceType.itemCountIsOne(getType());
    }

    public void setFlag(boolean z, int i) {
        if (z) {
            this.flags |= i;
        } else {
            this.flags &= ~i;
        }
    }

    public void setFlag(int i) {
        this.flags = i | this.flags;
    }

    public int getFlags() {
        return this.flags;
    }

    public boolean getFlag(int i) {
        return (i & this.flags) != 0;
    }

    @Override // gnu.mapping.Procedure
    public String toString() {
        String name = getClass().getName();
        if (name.startsWith("gnu.expr.")) {
            name = name.substring(9);
        }
        StringBuilder sbQ = a.q(name, GetNamedPart.CAST_METHOD_NAME);
        sbQ.append(Integer.toHexString(hashCode()));
        return sbQ.toString();
    }
}
