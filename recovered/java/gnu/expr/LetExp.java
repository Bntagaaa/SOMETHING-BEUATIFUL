package gnu.expr;

import _COROUTINE.a;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.PrimType;
import gnu.bytecode.Type;
import gnu.mapping.CallContext;
import gnu.mapping.Location;
import gnu.mapping.OutPort;
import java.io.IOException;

/* loaded from: classes2.dex */
public class LetExp extends ScopeExp {
    public Expression body;
    public Expression[] inits;

    @Override // gnu.expr.Expression
    public boolean mustCompile() {
        return false;
    }

    public LetExp(Expression[] expressionArr) {
        this.inits = expressionArr;
    }

    public Expression getBody() {
        return this.body;
    }

    public void setBody(Expression expression) {
        this.body = expression;
    }

    public Object evalVariable(int i, CallContext callContext) throws Throwable {
        return this.inits[i].eval(callContext);
    }

    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        setIndexes();
        int iNesting = ScopeExp.nesting(this);
        Object[] objArr = new Object[this.frameSize];
        Object[][] objArr2 = callContext.evalFrames;
        int i = 0;
        if (objArr2 == null) {
            objArr2 = new Object[iNesting + 10][];
            callContext.evalFrames = objArr2;
        } else if (iNesting >= objArr2.length) {
            Object[][] objArr3 = new Object[iNesting + 10][];
            System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
            callContext.evalFrames = objArr3;
            objArr2 = objArr3;
        }
        Object[] objArr4 = objArr2[iNesting];
        objArr2[iNesting] = objArr;
        try {
            Declaration declarationFirstDecl = firstDecl();
            while (declarationFirstDecl != null) {
                if (this.inits[i] != QuoteExp.undefined_exp) {
                    Object objEvalVariable = evalVariable(i, callContext);
                    Type type = declarationFirstDecl.type;
                    if (type != null && type != Type.pointer_type) {
                        objEvalVariable = type.coerceFromObject(objEvalVariable);
                    }
                    if (declarationFirstDecl.isIndirectBinding()) {
                        Location locationMakeIndirectLocationFor = declarationFirstDecl.makeIndirectLocationFor();
                        locationMakeIndirectLocationFor.set(objEvalVariable);
                        objEvalVariable = locationMakeIndirectLocationFor;
                    }
                    objArr[i] = objEvalVariable;
                }
                declarationFirstDecl = declarationFirstDecl.nextDecl();
                i++;
            }
            this.body.apply(callContext);
            objArr2[iNesting] = objArr4;
        } catch (Throwable th) {
            objArr2[iNesting] = objArr4;
            throw th;
        }
    }

    public void store_rest(Compilation compilation, int i, Declaration declaration) {
        if (declaration != null) {
            store_rest(compilation, i + 1, declaration.nextDecl());
            if (declaration.needsInit()) {
                if (declaration.isIndirectBinding()) {
                    CodeAttr code = compilation.getCode();
                    if (this.inits[i] == QuoteExp.undefined_exp) {
                        Object symbol = declaration.getSymbol();
                        compilation.compileConstant(symbol, Target.pushObject);
                        code.emitInvokeStatic(BindingInitializer.makeLocationMethod(symbol));
                    } else {
                        declaration.pushIndirectBinding(compilation);
                    }
                }
                declaration.compileStore(compilation);
            }
        }
    }

    @Override // gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        Target checkedTarget;
        CodeAttr code = compilation.getCode();
        Declaration declarationFirstDecl = firstDecl();
        int i = 0;
        while (true) {
            Expression[] expressionArr = this.inits;
            if (i < expressionArr.length) {
                Expression quoteExp = expressionArr[i];
                boolean zNeedsInit = declarationFirstDecl.needsInit();
                if (zNeedsInit && declarationFirstDecl.isSimple()) {
                    declarationFirstDecl.allocateVariable(code);
                }
                if (!zNeedsInit || (declarationFirstDecl.isIndirectBinding() && quoteExp == QuoteExp.undefined_exp)) {
                    checkedTarget = Target.Ignore;
                } else {
                    Type type = declarationFirstDecl.getType();
                    checkedTarget = CheckedTarget.getInstance(declarationFirstDecl);
                    if (quoteExp == QuoteExp.undefined_exp) {
                        if (type instanceof PrimType) {
                            quoteExp = new QuoteExp(new Byte((byte) 0));
                        } else if (type != null && type != Type.pointer_type) {
                            quoteExp = QuoteExp.nullExp;
                        }
                    }
                }
                quoteExp.compileWithPosition(compilation, checkedTarget);
                i++;
                declarationFirstDecl = declarationFirstDecl.nextDecl();
            } else {
                code.enterScope(getVarScope());
                store_rest(compilation, 0, firstDecl());
                this.body.compileWithPosition(compilation, target);
                popScope(code);
                return;
            }
        }
    }

    @Override // gnu.expr.Expression
    public final Type getType() {
        return this.body.getType();
    }

    @Override // gnu.expr.ScopeExp, gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        return expVisitor.visitLetExp(this, d);
    }

    public <R, D> void visitInitializers(ExpVisitor<R, D> expVisitor, D d) {
        Declaration declarationFirstDecl = firstDecl();
        int i = 0;
        while (true) {
            Expression[] expressionArr = this.inits;
            if (i >= expressionArr.length) {
                return;
            }
            Expression expression = expressionArr[i];
            if (expression == null) {
                throw new Error("null1 init for " + this + " i:" + i + " d:" + declarationFirstDecl);
            }
            Expression expressionVisitAndUpdate = expVisitor.visitAndUpdate(expression, d);
            if (expressionVisitAndUpdate == null) {
                throw new Error("null2 init for " + this + " was:" + expression);
            }
            this.inits[i] = expressionVisitAndUpdate;
            if (declarationFirstDecl.value == expression) {
                declarationFirstDecl.value = expressionVisitAndUpdate;
            }
            i++;
            declarationFirstDecl = declarationFirstDecl.nextDecl();
        }
    }

    @Override // gnu.expr.Expression
    public <R, D> void visitChildren(ExpVisitor<R, D> expVisitor, D d) {
        visitInitializers(expVisitor, d);
        if (expVisitor.exitValue == null) {
            this.body = expVisitor.visitAndUpdate(this.body, d);
        }
    }

    @Override // gnu.expr.Expression
    public void print(OutPort outPort) throws IOException {
        print(outPort, "(Let", ")");
    }

    public void print(OutPort outPort, String str, String str2) throws IOException {
        StringBuilder sbQ = a.q(str, "#");
        sbQ.append(this.id);
        outPort.startLogicalBlock(sbQ.toString(), str2, 2);
        outPort.writeSpaceFill();
        printLineColumn(outPort);
        outPort.startLogicalBlock("(", false, ")");
        int i = 0;
        for (Declaration declarationFirstDecl = firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            if (i > 0) {
                outPort.writeSpaceFill();
            }
            outPort.startLogicalBlock("(", false, ")");
            declarationFirstDecl.printInfo(outPort);
            if (this.inits != null) {
                outPort.writeSpaceFill();
                outPort.print('=');
                outPort.writeSpaceFill();
                Expression[] expressionArr = this.inits;
                if (i >= expressionArr.length) {
                    outPort.print("<missing init>");
                } else {
                    Expression expression = expressionArr[i];
                    if (expression == null) {
                        outPort.print("<null>");
                    } else {
                        expression.print(outPort);
                    }
                }
                i++;
            }
            outPort.endLogicalBlock(")");
        }
        outPort.endLogicalBlock(")");
        outPort.writeSpaceLinear();
        Expression expression2 = this.body;
        if (expression2 == null) {
            outPort.print("<null body>");
        } else {
            expression2.print(outPort);
        }
        outPort.endLogicalBlock(str2);
    }
}
