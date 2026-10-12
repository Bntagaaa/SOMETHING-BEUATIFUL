package gnu.kawa.lispexpr;

import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.Namespace;
import gnu.mapping.Symbol;

/* loaded from: classes2.dex */
public class LispPackage extends Namespace {
    Namespace exported;
    NamespaceUse imported;
    NamespaceUse importing;
    LList shadowingSymbols = LList.Empty;

    @Override // gnu.mapping.Namespace
    public Symbol lookup(String str, int i, boolean z) {
        Symbol symbolLookup = this.exported.lookup(str, i, false);
        if (symbolLookup != null) {
            return symbolLookup;
        }
        Symbol symbolLookupInternal = lookupInternal(str, i);
        if (symbolLookupInternal != null) {
            return symbolLookupInternal;
        }
        for (NamespaceUse namespaceUse = this.imported; namespaceUse != null; namespaceUse = namespaceUse.nextImported) {
            Symbol symbolLookup2 = lookup(str, i, false);
            if (symbolLookup2 != null) {
                return symbolLookup2;
            }
        }
        if (z) {
            return add(new Symbol(this, str), i);
        }
        return null;
    }

    public Symbol lookupPresent(String str, int i, boolean z) {
        Symbol symbolLookup = this.exported.lookup(str, i, false);
        return symbolLookup == null ? super.lookup(str, i, z) : symbolLookup;
    }

    public boolean isPresent(String str) {
        return lookupPresent(str, str.hashCode(), false) != null;
    }

    public boolean unintern(Symbol symbol) {
        String name = symbol.getName();
        int iHashCode = name.hashCode();
        if (this.exported.lookup(name, iHashCode, false) == symbol) {
            this.exported.remove(symbol);
        } else {
            if (super.lookup(name, iHashCode, false) != symbol) {
                return false;
            }
            super.remove(symbol);
        }
        symbol.setNamespace(null);
        removeFromShadowingSymbols(symbol);
        return true;
    }

    private void addToShadowingSymbols(Symbol symbol) {
        Object cdr = this.shadowingSymbols;
        while (cdr != LList.Empty) {
            Pair pair = (Pair) cdr;
            if (pair.getCar() == symbol) {
                return;
            } else {
                cdr = pair.getCdr();
            }
        }
        this.shadowingSymbols = new Pair(symbol, this.shadowingSymbols);
    }

    private boolean removeFromShadowingSymbols(Symbol symbol) {
        Object obj = this.shadowingSymbols;
        Pair pair = null;
        while (obj != LList.Empty) {
            Pair pair2 = (Pair) obj;
            Object cdr = pair2.getCdr();
            if (pair2.getCar() == symbol) {
                if (pair == null) {
                    this.shadowingSymbols = (LList) cdr;
                    return true;
                }
                pair.setCdr(cdr);
                return true;
            }
            pair = pair2;
            obj = cdr;
        }
        return false;
    }

    public void shadow(String str) {
        addToShadowingSymbols(lookupPresent(str, str.hashCode(), true));
    }

    public void shadowingImport(Symbol symbol) {
        String name = symbol.getName();
        name.getClass();
        Symbol symbolLookupPresent = lookupPresent(name, name.hashCode(), false);
        if (symbolLookupPresent != null && symbolLookupPresent != symbol) {
            unintern(symbolLookupPresent);
        }
        addToShadowingSymbols(symbol);
    }
}
