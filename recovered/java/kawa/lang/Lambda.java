package kawa.lang;

import gnu.expr.Declaration;
import gnu.expr.ErrorExp;
import gnu.expr.Expression;
import gnu.expr.Keyword;
import gnu.expr.LambdaExp;
import gnu.expr.QuoteExp;
import gnu.expr.ScopeExp;
import gnu.lists.Consumer;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;

/* loaded from: classes2.dex */
public class Lambda extends Syntax {
    public static final Keyword nameKeyword = Keyword.make("name");
    public Expression defaultDefault = QuoteExp.falseExp;
    public Object keyKeyword;
    public Object optionalKeyword;
    public Object restKeyword;

    public void setKeywords(Object obj, Object obj2, Object obj3) {
        this.optionalKeyword = obj;
        this.restKeyword = obj2;
        this.keyKeyword = obj3;
    }

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        Expression expressionRewrite = rewrite(pair.getCdr(), translator);
        Translator.setLine(expressionRewrite, pair);
        return expressionRewrite;
    }

    @Override // kawa.lang.Syntax
    public Expression rewrite(Object obj, Translator translator) {
        if (!(obj instanceof Pair)) {
            return translator.syntaxError("missing formals in lambda");
        }
        int errorCount = translator.getMessages().getErrorCount();
        LambdaExp lambdaExp = new LambdaExp();
        Pair pair = (Pair) obj;
        Translator.setLine(lambdaExp, pair);
        rewrite(lambdaExp, pair.getCar(), pair.getCdr(), translator, null);
        return translator.getMessages().getErrorCount() > errorCount ? new ErrorExp("bad lambda expression") : lambdaExp;
    }

    public void rewrite(LambdaExp lambdaExp, Object obj, Object obj2, Translator translator, TemplateScope templateScope) {
        rewriteFormals(lambdaExp, obj, translator, templateScope);
        if (obj2 instanceof PairWithPosition) {
            lambdaExp.setFile(((PairWithPosition) obj2).getFileName());
        }
        rewriteBody(lambdaExp, rewriteAttrs(lambdaExp, obj2, translator), translator);
    }

    /* JADX WARN: Code restructure failed: missing block: B:172:0x0368, code lost:
    
        r22.syntaxError(r19.optionalKeyword.toString() + " after " + r19.restKeyword + " or " + r19.keyKeyword);
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x038f, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x02a8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void rewriteFormals(gnu.expr.LambdaExp r20, java.lang.Object r21, kawa.lang.Translator r22, kawa.lang.TemplateScope r23) {
        /*
            Method dump skipped, instructions count: 1056
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.lang.Lambda.rewriteFormals(gnu.expr.LambdaExp, java.lang.Object, kawa.lang.Translator, kawa.lang.TemplateScope):void");
    }

    private static void addParam(Declaration declaration, ScopeExp scopeExp, LambdaExp lambdaExp, Translator translator) {
        if (scopeExp != null) {
            declaration = translator.makeRenamedAlias(declaration, scopeExp);
        }
        lambdaExp.addDeclaration(declaration);
        if (scopeExp != null) {
            declaration.context = scopeExp;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x017b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object rewriteAttrs(gnu.expr.LambdaExp r18, java.lang.Object r19, kawa.lang.Translator r20) {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.lang.Lambda.rewriteAttrs(gnu.expr.LambdaExp, java.lang.Object, kawa.lang.Translator):java.lang.Object");
    }

    public Object skipAttrs(LambdaExp lambdaExp, Object obj, Translator translator) {
        while (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            if (!(pair.getCdr() instanceof Pair)) {
                break;
            }
            Object car = pair.getCar();
            if (!translator.matches(car, "::") && !(car instanceof Keyword)) {
                break;
            }
            obj = ((Pair) pair.getCdr()).getCdr();
        }
        return obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0118  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void rewriteBody(gnu.expr.LambdaExp r10, java.lang.Object r11, kawa.lang.Translator r12) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.lang.Lambda.rewriteBody(gnu.expr.LambdaExp, java.lang.Object, kawa.lang.Translator):void");
    }

    @Override // kawa.lang.Syntax, gnu.text.Printable
    public void print(Consumer consumer) {
        consumer.write("#<builtin lambda>");
    }
}
