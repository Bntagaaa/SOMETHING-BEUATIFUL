package gnu.commonlisp.lang;

import gnu.expr.BeginExp;
import gnu.expr.Expression;
import gnu.expr.LetExp;
import gnu.expr.ReferenceExp;
import gnu.lists.LList;
import gnu.lists.Pair;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class prog1 extends Syntax {
    public static final prog1 prog1 = new prog1("prog1", 1);
    public static final prog1 prog2 = new prog1("prog2", 2);

    /* renamed from: a, reason: collision with root package name */
    public final int f5461a;

    public prog1(String str, int i) {
        this.f5461a = i;
        setName(str);
    }

    @Override // kawa.lang.Syntax
    public Expression rewrite(Object obj, Translator translator) {
        int length = LList.length(obj);
        int i = this.f5461a;
        if (length < i) {
            return translator.syntaxError("too few expressions in " + getName());
        }
        if (i == 2) {
            Pair pair = (Pair) obj;
            return new BeginExp(translator.rewrite(pair.getCar()), prog1.rewrite(pair.getCdr(), translator));
        }
        LetExp letExp = new LetExp(new Expression[]{translator.rewrite(pair.getCar())});
        Expression[] expressionArr = new Expression[length];
        Pair pair2 = (Pair) obj;
        int i2 = 0;
        Object cdr = pair2.getCdr();
        while (true) {
            int i3 = length - 1;
            if (i2 < i3) {
                Pair pair3 = (Pair) cdr;
                expressionArr[i2] = translator.rewrite(pair3.getCar());
                cdr = pair3.getCdr();
                i2++;
            } else {
                expressionArr[i3] = new ReferenceExp(letExp.addDeclaration((Object) null));
                letExp.body = BeginExp.canonicalize(expressionArr);
                translator.mustCompileHere();
                return letExp;
            }
        }
    }
}
