package gnu.expr;

import gnu.bytecode.PrimType;
import gnu.bytecode.Type;
import gnu.kawa.reflect.CompileReflect;
import gnu.kawa.reflect.Invoke;
import gnu.kawa.util.IdentityHashTable;
import gnu.mapping.Procedure;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.math.IntNum;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class InlineCalls extends ExpExpVisitor<Type> {
    private static Class[] inlinerMethodArgTypes;

    public static Expression inlineCalls(Expression expression, Compilation compilation) {
        return new InlineCalls(compilation).visit(expression, (Type) null);
    }

    public InlineCalls(Compilation compilation) {
        setContext(compilation);
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visit(Expression expression, Type type) {
        if (!expression.getFlag(1)) {
            expression.setFlag(1);
            expression = (Expression) super.visit(expression, (Expression) type);
            expression.setFlag(1);
        }
        return checkType(expression, type);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.expr.Expression checkType(gnu.expr.Expression r6, gnu.bytecode.Type r7) {
        /*
            r5 = this;
            r0 = 0
            gnu.bytecode.Type r1 = r6.getType()
            boolean r2 = r7 instanceof gnu.bytecode.ClassType
            r3 = 1
            if (r2 == 0) goto L60
            r2 = r7
            gnu.bytecode.ClassType r2 = (gnu.bytecode.ClassType) r2
            boolean r4 = r2.isInterface()
            if (r4 == 0) goto L60
            gnu.bytecode.ClassType r4 = gnu.expr.Compilation.typeProcedure
            boolean r4 = r1.isSubtype(r4)
            if (r4 == 0) goto L60
            boolean r4 = r1.isSubtype(r7)
            if (r4 != 0) goto L60
            boolean r4 = r6 instanceof gnu.expr.LambdaExp
            if (r4 == 0) goto L81
            gnu.bytecode.Method r2 = r2.checkSingleAbstractMethod()
            if (r2 == 0) goto L81
            r1 = r6
            gnu.expr.LambdaExp r1 = (gnu.expr.LambdaExp) r1
            gnu.expr.ObjectExp r4 = new gnu.expr.ObjectExp
            r4.<init>()
            r4.setLocation(r6)
            gnu.expr.QuoteExp r6 = new gnu.expr.QuoteExp
            r6.<init>(r7)
            gnu.expr.Expression[] r3 = new gnu.expr.Expression[r3]
            r3[r0] = r6
            r4.supers = r3
            gnu.expr.Compilation r6 = r5.getCompilation()
            r4.setTypes(r6)
            java.lang.String r6 = r2.getName()
            r4.addMethod(r1, r6)
            gnu.bytecode.ClassType r0 = gnu.expr.Compilation.typeProcedure
            r4.addDeclaration(r6, r0)
            r4.firstChild = r1
            gnu.expr.Compilation r6 = r5.comp
            r4.declareParts(r6)
            gnu.expr.Expression r6 = r5.visit(r4, r7)
            return r6
        L60:
            gnu.bytecode.ClassType r2 = gnu.bytecode.Type.toStringType
            if (r1 != r2) goto L66
            gnu.bytecode.ClassType r1 = gnu.bytecode.Type.javalangStringType
        L66:
            if (r7 == 0) goto L70
            int r2 = r7.compare(r1)
            r4 = -3
            if (r2 != r4) goto L70
            r0 = 1
        L70:
            if (r0 == 0) goto L80
            boolean r2 = r7 instanceof gnu.expr.TypeValue
            if (r2 == 0) goto L80
            r2 = r7
            gnu.expr.TypeValue r2 = (gnu.expr.TypeValue) r2
            gnu.expr.Expression r2 = r2.convertValue(r6)
            if (r2 == 0) goto L80
            return r2
        L80:
            r3 = r0
        L81:
            if (r3 == 0) goto Lae
            gnu.expr.Compilation r0 = r5.comp
            gnu.expr.Language r0 = r0.getLanguage()
            gnu.expr.Compilation r2 = r5.comp
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "type "
            r3.<init>(r4)
            java.lang.String r1 = r0.formatType(r1)
            r3.append(r1)
            java.lang.String r1 = " is incompatible with required type "
            r3.append(r1)
            java.lang.String r7 = r0.formatType(r7)
            r3.append(r7)
            java.lang.String r7 = r3.toString()
            r0 = 119(0x77, float:1.67E-43)
            r2.error(r0, r7, r6)
        Lae:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.InlineCalls.checkType(gnu.expr.Expression, gnu.bytecode.Type):gnu.expr.Expression");
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitApplyExp(ApplyExp applyExp, Type type) {
        Expression expressionInlineCall;
        Expression expression = applyExp.func;
        if ((expression instanceof LambdaExp) && (expressionInlineCall = inlineCall((LambdaExp) expression, applyExp.args, false)) != null) {
            return visit(expressionInlineCall, type);
        }
        Expression expressionVisit = visit(expression, (Type) null);
        applyExp.func = expressionVisit;
        return expressionVisit.validateApply(applyExp, this, type, null);
    }

    public final Expression visitApplyOnly(ApplyExp applyExp, Type type) {
        return applyExp.func.validateApply(applyExp, this, type, null);
    }

    public static Integer checkIntValue(Expression expression) {
        if (!(expression instanceof QuoteExp)) {
            return null;
        }
        QuoteExp quoteExp = (QuoteExp) expression;
        Object value = quoteExp.getValue();
        if (quoteExp.isExplicitlyTyped() || !(value instanceof IntNum)) {
            return null;
        }
        IntNum intNum = (IntNum) value;
        if (intNum.inIntRange()) {
            return Integer.valueOf(intNum.intValue());
        }
        return null;
    }

    public static Long checkLongValue(Expression expression) {
        if (!(expression instanceof QuoteExp)) {
            return null;
        }
        QuoteExp quoteExp = (QuoteExp) expression;
        Object value = quoteExp.getValue();
        if (quoteExp.isExplicitlyTyped() || !(value instanceof IntNum)) {
            return null;
        }
        IntNum intNum = (IntNum) value;
        if (intNum.inLongRange()) {
            return Long.valueOf(intNum.longValue());
        }
        return null;
    }

    public QuoteExp fixIntValue(Expression expression) {
        Integer numCheckIntValue = checkIntValue(expression);
        if (numCheckIntValue != null) {
            return new QuoteExp(numCheckIntValue, this.comp.getLanguage().getTypeFor(Integer.TYPE));
        }
        return null;
    }

    public QuoteExp fixLongValue(Expression expression) {
        Long lCheckLongValue = checkLongValue(expression);
        if (lCheckLongValue != null) {
            return new QuoteExp(lCheckLongValue, this.comp.getLanguage().getTypeFor(Long.TYPE));
        }
        return null;
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitQuoteExp(QuoteExp quoteExp, Type type) {
        Object value;
        QuoteExp quoteExpFixLongValue;
        if (quoteExp.getRawType() == null && !quoteExp.isSharedConstant() && (value = quoteExp.getValue()) != null) {
            Type typeFor = this.comp.getLanguage().getTypeFor(value.getClass());
            if (typeFor == Type.toStringType) {
                typeFor = Type.javalangStringType;
            }
            quoteExp.type = typeFor;
            if (type instanceof PrimType) {
                char cCharAt = type.getSignature().charAt(0);
                if (cCharAt == 'I') {
                    quoteExpFixLongValue = fixIntValue(quoteExp);
                } else {
                    quoteExpFixLongValue = cCharAt == 'J' ? fixLongValue(quoteExp) : null;
                }
                if (quoteExpFixLongValue != null) {
                    return quoteExpFixLongValue;
                }
            }
        }
        return quoteExp;
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitReferenceExp(ReferenceExp referenceExp, Type type) {
        Declaration binding = referenceExp.getBinding();
        if (binding != null && binding.field == null && !binding.getCanWrite()) {
            Expression value = binding.getValue();
            if ((value instanceof QuoteExp) && value != QuoteExp.undefined_exp) {
                return visitQuoteExp((QuoteExp) value, type);
            }
            if ((value instanceof ReferenceExp) && !binding.isAlias()) {
                ReferenceExp referenceExp2 = (ReferenceExp) value;
                Declaration binding2 = referenceExp2.getBinding();
                Type type2 = binding.getType();
                if (binding2 != null && !binding2.getCanWrite() && ((type2 == null || type2 == Type.pointer_type || type2 == binding2.getType()) && !referenceExp2.getDontDereference())) {
                    return visitReferenceExp(referenceExp2, type);
                }
            }
            if (!referenceExp.isProcedureName() && (binding.flags & 1048704) == 1048704) {
                this.comp.error('e', "unimplemented: reference to method " + binding.getName() + " as variable");
                this.comp.error('e', binding, "here is the definition of ", "");
            }
        }
        return (Expression) super.visitReferenceExp(referenceExp, (ReferenceExp) type);
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitIfExp(IfExp ifExp, Type type) {
        Expression expression;
        Declaration binding;
        Expression expression2 = (Expression) ifExp.test.visit(this, null);
        if ((expression2 instanceof ReferenceExp) && (binding = ((ReferenceExp) expression2).getBinding()) != null) {
            Expression value = binding.getValue();
            if ((value instanceof QuoteExp) && value != QuoteExp.undefined_exp) {
                expression2 = value;
            }
        }
        ifExp.test = expression2;
        if (this.exitValue == null) {
            ifExp.then_clause = visit(ifExp.then_clause, type);
        }
        if (this.exitValue == null && (expression = ifExp.else_clause) != null) {
            ifExp.else_clause = visit(expression, type);
        }
        if (expression2 instanceof QuoteExp) {
            return ifExp.select(this.comp.getLanguage().isTrue(((QuoteExp) expression2).getValue()));
        }
        if (!expression2.getType().isVoid()) {
            return ifExp;
        }
        boolean zIsTrue = this.comp.getLanguage().isTrue(Values.empty);
        this.comp.error('w', "void-valued condition is always " + zIsTrue);
        return new BeginExp(expression2, ifExp.select(zIsTrue));
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitBeginExp(BeginExp beginExp, Type type) {
        int i = beginExp.length - 1;
        int i2 = 0;
        while (i2 <= i) {
            Expression[] expressionArr = beginExp.exps;
            expressionArr[i2] = visit(expressionArr[i2], i2 < i ? null : type);
            i2++;
        }
        return beginExp;
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitScopeExp(ScopeExp scopeExp, Type type) {
        scopeExp.visitChildren(this, null);
        visitDeclarationTypes(scopeExp);
        for (Declaration declarationFirstDecl = scopeExp.firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            if (declarationFirstDecl.type == null) {
                Expression value = declarationFirstDecl.getValue();
                Type type2 = Type.objectType;
                declarationFirstDecl.type = type2;
                if (value != null && value != QuoteExp.undefined_exp) {
                    type2 = value.getType();
                }
                declarationFirstDecl.setType(type2);
            }
        }
        return scopeExp;
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitLetExp(LetExp letExp, Type type) {
        ReferenceExp referenceExp;
        Declaration binding;
        Declaration declarationFirstDecl = letExp.firstDecl();
        int length = letExp.inits.length;
        int i = 0;
        while (true) {
            Type type2 = null;
            if (i >= length) {
                break;
            }
            Expression expression = letExp.inits[i];
            boolean flag = declarationFirstDecl.getFlag(8192L);
            if (flag && expression != QuoteExp.undefined_exp) {
                type2 = declarationFirstDecl.getType();
            }
            Expression expressionVisit = visit(expression, type2);
            letExp.inits[i] = expressionVisit;
            if (declarationFirstDecl.value == expression) {
                declarationFirstDecl.value = expressionVisit;
                if (!flag) {
                    declarationFirstDecl.setType(expressionVisit.getType());
                }
            }
            i++;
            declarationFirstDecl = declarationFirstDecl.nextDecl();
        }
        if (this.exitValue == null) {
            letExp.body = visit(letExp.body, type);
        }
        Expression expression2 = letExp.body;
        if (!(expression2 instanceof ReferenceExp) || (binding = (referenceExp = (ReferenceExp) expression2).getBinding()) == null || binding.context != letExp || referenceExp.getDontDereference() || length != 1) {
            return letExp;
        }
        Expression expression3 = letExp.inits[0];
        Expression typeExp = binding.getTypeExp();
        return typeExp != QuoteExp.classObjectExp ? visitApplyOnly(Compilation.makeCoercion(expression3, typeExp), null) : expression3;
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitLambdaExp(LambdaExp lambdaExp, Type type) {
        Declaration declarationFirstDecl = lambdaExp.firstDecl();
        if (declarationFirstDecl != null && declarationFirstDecl.isThisParameter() && !lambdaExp.isClassMethod() && declarationFirstDecl.type == null) {
            declarationFirstDecl.setType(this.comp.mainClass);
        }
        return visitScopeExp((ScopeExp) lambdaExp, type);
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitTryExp(TryExp tryExp, Type type) {
        if (tryExp.getCatchClauses() == null && tryExp.getFinallyClause() == null) {
            return visit(tryExp.try_clause, type);
        }
        return (Expression) super.visitTryExp(tryExp, (TryExp) type);
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitSetExpValue(Expression expression, Type type, Declaration declaration) {
        return visit(expression, (declaration == null || declaration.isAlias()) ? null : declaration.type);
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitSetExp(SetExp setExp, Type type) {
        Declaration binding = setExp.getBinding();
        super.visitSetExp(setExp, (SetExp) type);
        if (!setExp.isDefining() && binding != null && (binding.flags & 1048704) == 1048704) {
            this.comp.error('e', "can't assign to method " + binding.getName(), setExp);
        }
        if (binding != null && binding.getFlag(8192L) && CompileReflect.checkKnownClass(binding.getType(), this.comp) < 0) {
            binding.setType(Type.errorType);
        }
        return setExp;
    }

    private static synchronized Class[] getInlinerMethodArgTypes() throws Exception {
        Class[] clsArr;
        clsArr = inlinerMethodArgTypes;
        if (clsArr == null) {
            int i = ApplyExp.TAILCALL;
            PrimType primType = Type.byteType;
            Symbol symbol = Procedure.validateApplyKey;
            clsArr = new Class[]{ApplyExp.class, InlineCalls.class, Type.class, Procedure.class};
            inlinerMethodArgTypes = clsArr;
        }
        return clsArr;
    }

    public Expression maybeInline(ApplyExp applyExp, Type type, Procedure procedure) {
        try {
        } catch (Throwable th) {
            th = th;
            if (th instanceof InvocationTargetException) {
                th = ((InvocationTargetException) th).getTargetException();
            }
            this.messages.error('e', "caught exception in inliner for " + procedure + " - " + th, th);
        }
        synchronized (procedure) {
            try {
                Object property = procedure.getProperty(Procedure.validateApplyKey, null);
                if (property instanceof String) {
                    String str = (String) property;
                    int iIndexOf = str.indexOf(58);
                    if (iIndexOf > 0) {
                        property = Class.forName(str.substring(0, iIndexOf), true, procedure.getClass().getClassLoader()).getDeclaredMethod(str.substring(iIndexOf + 1), getInlinerMethodArgTypes());
                    } else {
                        property = null;
                    }
                    if (property == null) {
                        error('e', "inliner property string for " + procedure + " is not of the form CLASS:METHOD");
                        return null;
                    }
                }
                if (property != null) {
                    Object[] objArr = {applyExp, this, type, procedure};
                    if (property instanceof Procedure) {
                        return (Expression) ((Procedure) property).applyN(objArr);
                    }
                    if (property instanceof Method) {
                        return (Expression) ((Method) property).invoke(null, objArr);
                    }
                }
                return null;
            } finally {
            }
        }
    }

    public static Expression inlineCall(LambdaExp lambdaExp, Expression[] expressionArr, boolean z) {
        Expression[] expressionArrDeepCopy;
        IdentityHashTable identityHashTable;
        if (lambdaExp.keywords == null && (lambdaExp.nameDecl == null || z)) {
            int i = lambdaExp.max_args;
            int i2 = 0;
            boolean z2 = i < 0;
            int i3 = lambdaExp.min_args;
            if ((i3 == i && i3 == expressionArr.length) || (z2 && i3 == 0)) {
                if (z) {
                    identityHashTable = new IdentityHashTable();
                    expressionArrDeepCopy = Expression.deepCopy(expressionArr, identityHashTable);
                    if (expressionArrDeepCopy == null && expressionArr != null) {
                        return null;
                    }
                } else {
                    expressionArrDeepCopy = expressionArr;
                    identityHashTable = null;
                }
                if (z2) {
                    Expression[] expressionArr2 = new Expression[expressionArr.length + 1];
                    expressionArr2[0] = QuoteExp.getInstance(lambdaExp.firstDecl().type);
                    System.arraycopy(expressionArr, 0, expressionArr2, 1, expressionArr.length);
                    expressionArrDeepCopy = new Expression[]{new ApplyExp(Invoke.make, expressionArr2)};
                }
                LetExp letExp = new LetExp(expressionArrDeepCopy);
                Declaration declarationFirstDecl = lambdaExp.firstDecl();
                Declaration declaration = null;
                while (declarationFirstDecl != null) {
                    Declaration declarationNextDecl = declarationFirstDecl.nextDecl();
                    if (z) {
                        Declaration declarationAddDeclaration = letExp.addDeclaration(declarationFirstDecl.symbol, declarationFirstDecl.type);
                        Expression expression = declarationFirstDecl.typeExp;
                        if (expression != null) {
                            Expression expressionDeepCopy = Expression.deepCopy(expression);
                            declarationAddDeclaration.typeExp = expressionDeepCopy;
                            if (expressionDeepCopy == null) {
                                return null;
                            }
                        }
                        identityHashTable.put(declarationFirstDecl, declarationAddDeclaration);
                    } else {
                        lambdaExp.remove(declaration, declarationFirstDecl);
                        letExp.add(declaration, declarationFirstDecl);
                    }
                    if (!z2 && !declarationFirstDecl.getCanWrite()) {
                        declarationFirstDecl.setValue(expressionArrDeepCopy[i2]);
                    }
                    i2++;
                    declaration = declarationFirstDecl;
                    declarationFirstDecl = declarationNextDecl;
                }
                Expression expressionDeepCopy2 = lambdaExp.body;
                if (z && (expressionDeepCopy2 = Expression.deepCopy(expressionDeepCopy2, identityHashTable)) == null && lambdaExp.body != null) {
                    return null;
                }
                letExp.body = expressionDeepCopy2;
                return letExp;
            }
        }
        return null;
    }
}
