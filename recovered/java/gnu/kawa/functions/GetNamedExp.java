package gnu.kawa.functions;

import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.InlineCalls;
import gnu.expr.PrimProcedure;
import gnu.expr.ReferenceExp;
import gnu.mapping.CallContext;
import gnu.mapping.Environment;
import gnu.mapping.Location;
import gnu.mapping.Symbol;

/* loaded from: classes2.dex */
class GetNamedExp extends ApplyExp {
    public String combinedName;
    char kind;
    PrimProcedure[] methods;
    static final Declaration fieldDecl = Declaration.getDeclarationFromStatic("gnu.kawa.reflect.SlotGet", "field");
    static final Declaration staticFieldDecl = Declaration.getDeclarationFromStatic("gnu.kawa.reflect.SlotGet", "staticField");
    static final Declaration makeDecl = Declaration.getDeclarationFromStatic("gnu.kawa.reflect.Invoke", "make");
    static final Declaration invokeDecl = Declaration.getDeclarationFromStatic("gnu.kawa.reflect.Invoke", "invoke");
    static final Declaration invokeStaticDecl = Declaration.getDeclarationFromStatic("gnu.kawa.reflect.Invoke", "invokeStatic");
    static final Declaration instanceOfDecl = Declaration.getDeclarationFromStatic("kawa.standard.Scheme", "instanceOf");
    static final Declaration castDecl = Declaration.getDeclarationFromStatic("gnu.kawa.functions.Convert", "as");

    @Override // gnu.expr.ApplyExp, gnu.expr.Expression, gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        if (this.combinedName != null) {
            Environment current = Environment.getCurrent();
            Symbol symbol = current.getSymbol(this.combinedName);
            String str = Location.UNBOUND;
            Object obj = current.get(symbol, null, str);
            if (obj != str) {
                callContext.writeValue(obj);
                return;
            }
        }
        super.apply(callContext);
    }

    public GetNamedExp(Expression[] expressionArr) {
        super(GetNamedPart.getNamedPart, expressionArr);
    }

    public GetNamedExp setProcedureKind(char c) {
        this.type = Compilation.typeProcedure;
        this.kind = c;
        return this;
    }

    @Override // gnu.expr.Expression
    public Expression validateApply(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Declaration declaration) {
        Declaration declaration2;
        Expression[] expressionArr;
        Expression[] args = getArgs();
        Expression expression = args[0];
        Expression[] args2 = applyExp.getArgs();
        char c = this.kind;
        if (c == 'C') {
            declaration2 = castDecl;
            expressionArr = new Expression[args2.length + 1];
            System.arraycopy(args2, 1, expressionArr, 2, args2.length - 1);
            expressionArr[0] = expression;
            expressionArr[1] = args2[0];
        } else if (c == 'I') {
            declaration2 = instanceOfDecl;
            expressionArr = new Expression[args2.length + 1];
            System.arraycopy(args2, 1, expressionArr, 2, args2.length - 1);
            expressionArr[0] = args2[0];
            expressionArr[1] = expression;
        } else if (c == 'S') {
            Declaration declaration3 = invokeStaticDecl;
            Expression[] expressionArr2 = new Expression[args2.length + 2];
            expressionArr2[0] = expression;
            expressionArr2[1] = args[1];
            System.arraycopy(args2, 0, expressionArr2, 2, args2.length);
            declaration2 = declaration3;
            expressionArr = expressionArr2;
        } else if (c == 'M') {
            Declaration declaration4 = invokeDecl;
            expressionArr = new Expression[args2.length + 2];
            expressionArr[0] = args[0];
            expressionArr[1] = args[1];
            System.arraycopy(args2, 0, expressionArr, 2, args2.length);
            declaration2 = declaration4;
        } else {
            if (c != 'N') {
                return applyExp;
            }
            declaration2 = makeDecl;
            expressionArr = new Expression[args2.length + 1];
            System.arraycopy(args2, 0, expressionArr, 1, args2.length);
            expressionArr[0] = expression;
        }
        ApplyExp applyExp2 = new ApplyExp((Expression) new ReferenceExp(declaration2), expressionArr);
        applyExp2.setLine(applyExp);
        return inlineCalls.visit((Expression) applyExp2, type);
    }

    @Override // gnu.expr.ApplyExp, gnu.expr.Expression
    public boolean side_effects() {
        char c = this.kind;
        if (c == 'S' || c == 'N' || c == 'C' || c == 'I') {
            return false;
        }
        if (c == 'M') {
            return getArgs()[0].side_effects();
        }
        return true;
    }
}
