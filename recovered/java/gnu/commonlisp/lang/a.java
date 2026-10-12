package gnu.commonlisp.lang;

import gnu.kawa.lispexpr.ReadTable;

/* loaded from: classes2.dex */
class a extends ReadTable {
    @Override // gnu.kawa.lispexpr.ReadTable
    public Object makeSymbol(String str) {
        return Lisp2.asSymbol(str.intern());
    }
}
