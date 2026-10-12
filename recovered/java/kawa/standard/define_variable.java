package kawa.standard;

import gnu.expr.Declaration;
import gnu.expr.ScopeExp;
import gnu.lists.Pair;
import gnu.mapping.Symbol;
import java.util.Vector;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class define_variable extends Syntax {
    public static final define_variable define_variable;

    static {
        define_variable define_variableVar = new define_variable();
        define_variable = define_variableVar;
        define_variableVar.setName("define-variable");
    }

    @Override // kawa.lang.Syntax
    public boolean scanForDefinitions(Pair pair, Vector vector, ScopeExp scopeExp, Translator translator) {
        if (!(pair.getCdr() instanceof Pair)) {
            return super.scanForDefinitions(pair, vector, scopeExp, translator);
        }
        Pair pair2 = (Pair) pair.getCdr();
        Object car = pair2.getCar();
        if ((car instanceof String) || (car instanceof Symbol)) {
            if (scopeExp.lookup(car) != null) {
                translator.error('e', "duplicate declaration for '" + car + "'");
            }
            Declaration declarationAddDeclaration = scopeExp.addDeclaration(car);
            translator.push(declarationAddDeclaration);
            declarationAddDeclaration.setSimple(false);
            declarationAddDeclaration.setPrivate(true);
            declarationAddDeclaration.setFlag(268697600L);
            declarationAddDeclaration.setCanRead(true);
            declarationAddDeclaration.setCanWrite(true);
            declarationAddDeclaration.setIndirectBinding(true);
            pair = Translator.makePair(pair, this, Translator.makePair(pair2, declarationAddDeclaration, pair2.getCdr()));
        }
        vector.addElement(pair);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0042  */
    @Override // kawa.lang.Syntax
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.expr.Expression rewriteForm(gnu.lists.Pair r6, kawa.lang.Translator r7) {
        /*
            r5 = this;
            java.lang.Object r6 = r6.getCdr()
            boolean r0 = r6 instanceof gnu.lists.Pair
            r1 = 0
            if (r0 == 0) goto L42
            gnu.lists.Pair r6 = (gnu.lists.Pair) r6
            java.lang.Object r0 = r6.getCar()
            boolean r2 = r0 instanceof java.lang.String
            if (r2 != 0) goto L47
            boolean r2 = r0 instanceof gnu.mapping.Symbol
            if (r2 == 0) goto L18
            goto L47
        L18:
            boolean r0 = r0 instanceof gnu.expr.Declaration
            if (r0 == 0) goto L42
            java.lang.Object r0 = r6.getCar()
            gnu.expr.Declaration r0 = (gnu.expr.Declaration) r0
            java.lang.Object r6 = r6.getCdr()
            boolean r2 = r6 instanceof gnu.lists.Pair
            if (r2 == 0) goto L3e
            r2 = r6
            gnu.lists.Pair r2 = (gnu.lists.Pair) r2
            java.lang.Object r3 = r2.getCdr()
            gnu.lists.LList r4 = gnu.lists.LList.Empty
            if (r3 != r4) goto L3e
            java.lang.Object r6 = r2.getCar()
            gnu.expr.Expression r6 = r7.rewrite(r6)
            goto L61
        L3e:
            gnu.lists.LList r2 = gnu.lists.LList.Empty
            if (r6 == r2) goto L45
        L42:
            r6 = r1
            r0 = r6
            goto L61
        L45:
            r6 = r1
            goto L61
        L47:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = r5.getName()
            r6.append(r0)
            java.lang.String r0 = " is only allowed in a <body>"
            r6.append(r0)
            java.lang.String r6 = r6.toString()
            gnu.expr.Expression r6 = r7.syntaxError(r6)
            return r6
        L61:
            if (r0 != 0) goto L7a
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r0 = "invalid syntax for "
            r6.<init>(r0)
            java.lang.String r0 = r5.getName()
            r6.append(r0)
            java.lang.String r6 = r6.toString()
            gnu.expr.Expression r6 = r7.syntaxError(r6)
            return r6
        L7a:
            if (r6 != 0) goto L7f
            gnu.expr.QuoteExp r6 = gnu.expr.QuoteExp.voidExp
            return r6
        L7f:
            gnu.expr.SetExp r7 = new gnu.expr.SetExp
            r7.<init>(r0, r6)
            r2 = 1
            r7.setDefining(r2)
            r7.setSetIfUnbound(r2)
            r7.setBinding(r0)
            gnu.expr.ScopeExp r2 = r0.context
            boolean r2 = r2 instanceof gnu.expr.ModuleExp
            if (r2 == 0) goto L9b
            boolean r2 = r0.getCanWrite()
            if (r2 == 0) goto L9b
            goto L9c
        L9b:
            r1 = r6
        L9c:
            r0.noteValue(r1)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.standard.define_variable.rewriteForm(gnu.lists.Pair, kawa.lang.Translator):gnu.expr.Expression");
    }
}
