package gnu.mapping;

import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
class SymbolRef extends WeakReference {
    SymbolRef next;

    public SymbolRef(Symbol symbol, Namespace namespace) {
        super(symbol);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Symbol getSymbol() {
        return (Symbol) get();
    }

    public String toString() {
        return "SymbolRef[" + getSymbol() + "]";
    }
}
