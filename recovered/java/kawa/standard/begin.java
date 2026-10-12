package kawa.standard;

import gnu.expr.Expression;
import gnu.expr.ScopeExp;
import gnu.lists.LList;
import gnu.lists.Pair;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class begin extends Syntax {
    public static final begin begin;

    static {
        begin beginVar = new begin();
        begin = beginVar;
        beginVar.setName("begin");
    }

    @Override // kawa.lang.Syntax
    public Expression rewrite(Object obj, Translator translator) {
        return translator.rewrite_body(obj);
    }

    @Override // kawa.lang.Syntax
    public void scanForm(Pair pair, ScopeExp scopeExp, Translator translator) {
        LList lListScanBody = translator.scanBody(pair.getCdr(), scopeExp, true);
        if (lListScanBody != LList.Empty) {
            translator.formStack.add(Translator.makePair(pair, pair.getCar(), lListScanBody));
        }
    }
}
