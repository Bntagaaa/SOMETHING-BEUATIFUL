package kawa.standard;

import gnu.expr.ApplyExp;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.mapping.Environment;
import gnu.mapping.Procedure;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class constant_fold extends Syntax {
    public static final constant_fold constant_fold;

    static {
        constant_fold constant_foldVar = new constant_fold();
        constant_fold = constant_foldVar;
        constant_foldVar.setName("constant-fold");
    }

    public static Object checkConstant(Expression expression, Translator translator) {
        if (expression instanceof QuoteExp) {
            return ((QuoteExp) expression).getValue();
        }
        if (!(expression instanceof ReferenceExp)) {
            return null;
        }
        ReferenceExp referenceExp = (ReferenceExp) expression;
        Declaration binding = referenceExp.getBinding();
        if (binding == null || binding.getFlag(65536L)) {
            return Environment.user().get(referenceExp.getName(), (Object) null);
        }
        return Declaration.followAliases(binding).getConstantValue();
    }

    @Override // kawa.lang.Syntax
    public Expression rewrite(Object obj, Translator translator) {
        Expression expressionRewrite = translator.rewrite(obj);
        if (!(expressionRewrite instanceof ApplyExp)) {
            return expressionRewrite;
        }
        ApplyExp applyExp = (ApplyExp) expressionRewrite;
        Object objCheckConstant = checkConstant(applyExp.getFunction(), translator);
        if (objCheckConstant instanceof Procedure) {
            Expression[] args = applyExp.getArgs();
            int length = args.length;
            Object[] objArr = new Object[length];
            while (true) {
                length--;
                if (length >= 0) {
                    Object objCheckConstant2 = checkConstant(args[length], translator);
                    if (objCheckConstant2 == null) {
                        break;
                    }
                    objArr[length] = objCheckConstant2;
                } else {
                    try {
                        return new QuoteExp(((Procedure) objCheckConstant).applyN(objArr));
                    } catch (Throwable th) {
                        Expression expressionSyntaxError = translator.syntaxError("caught exception in constant-fold:");
                        translator.syntaxError(th.toString());
                        return expressionSyntaxError;
                    }
                }
            }
        }
        return expressionRewrite;
    }
}
