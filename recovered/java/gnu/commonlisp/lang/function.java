package gnu.commonlisp.lang;

import gnu.expr.Expression;
import gnu.expr.ReferenceExp;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.Symbol;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class function extends Syntax {

    /* renamed from: a, reason: collision with root package name */
    public final Syntax f5460a;

    public function(Syntax syntax) {
        this.f5460a = syntax;
    }

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        Object cdr = pair.getCdr();
        if (cdr instanceof Pair) {
            Pair pair2 = (Pair) cdr;
            if (pair2.getCdr() != LList.Empty) {
                return translator.syntaxError("too many forms after 'function'");
            }
            Object car = pair2.getCar();
            if ((car instanceof String) || (car instanceof Symbol)) {
                ReferenceExp referenceExp = new ReferenceExp(car);
                referenceExp.setProcedureName(true);
                referenceExp.setFlag(8);
                return referenceExp;
            }
            if (car instanceof Pair) {
                Pair pair3 = (Pair) car;
                Object car2 = pair3.getCar();
                if (!(car2 instanceof String) ? !(!(car2 instanceof Symbol) || !"lambda".equals(((Symbol) car2).getName())) : "lambda".equals(car2)) {
                    return this.f5460a.rewriteForm(pair3, translator);
                }
            }
        }
        return translator.syntaxError("function must be followed by name or lambda expression");
    }
}
