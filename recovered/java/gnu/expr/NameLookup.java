package gnu.expr;

import gnu.kawa.util.GeneralHashTable;
import gnu.kawa.util.HashNode;
import gnu.mapping.Environment;
import gnu.mapping.Location;
import gnu.mapping.Symbol;

/* loaded from: classes2.dex */
public class NameLookup extends GeneralHashTable<Object, Declaration> {
    static final Symbol KEY = Symbol.makeUninterned("<current-NameLookup>");
    Language language;

    public Language getLanguage() {
        return this.language;
    }

    public void setLanguage(Language language) {
        this.language = language;
    }

    public NameLookup(Language language) {
        this.language = language;
    }

    public static NameLookup getInstance(Environment environment, Language language) {
        Location location = environment.getLocation(KEY);
        NameLookup nameLookup = (NameLookup) location.get(null);
        if (nameLookup == null) {
            NameLookup nameLookup2 = new NameLookup(language);
            location.set(nameLookup2);
            return nameLookup2;
        }
        nameLookup.setLanguage(language);
        return nameLookup;
    }

    public static void setInstance(Environment environment, NameLookup nameLookup) {
        if (nameLookup == null) {
            environment.remove(KEY);
        } else {
            environment.put(KEY, null, nameLookup);
        }
    }

    public void push(Declaration declaration) {
        Object symbol = declaration.getSymbol();
        if (symbol == null) {
            return;
        }
        int i = this.num_bindings + 1;
        this.num_bindings = i;
        if (i >= ((HashNode[]) this.table).length) {
            rehash();
        }
        int iHash = hash(symbol);
        HashNode<Object, Declaration> hashNodeMakeEntry = makeEntry((NameLookup) symbol, iHash, (int) declaration);
        int iHashToIndex = hashToIndex(iHash);
        Entry[] entryArr = this.table;
        hashNodeMakeEntry.next = ((HashNode[]) entryArr)[iHashToIndex];
        ((HashNode[]) entryArr)[iHashToIndex] = hashNodeMakeEntry;
    }

    public boolean pop(Declaration declaration) {
        Object symbol = declaration.getSymbol();
        if (symbol == null) {
            return false;
        }
        int iHashToIndex = hashToIndex(hash(symbol));
        HashNode hashNode = ((HashNode[]) this.table)[iHashToIndex];
        HashNode hashNode2 = null;
        while (hashNode != null) {
            HashNode hashNode3 = hashNode.next;
            if (hashNode.getValue() == declaration) {
                if (hashNode2 == null) {
                    ((HashNode[]) this.table)[iHashToIndex] = hashNode3;
                } else {
                    hashNode2.next = hashNode3;
                }
                this.num_bindings--;
                return true;
            }
            hashNode2 = hashNode;
            hashNode = hashNode3;
        }
        return false;
    }

    public void push(ScopeExp scopeExp) {
        for (Declaration declarationFirstDecl = scopeExp.firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            push(declarationFirstDecl);
        }
    }

    public void pop(ScopeExp scopeExp) {
        for (Declaration declarationFirstDecl = scopeExp.firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            pop(declarationFirstDecl);
        }
    }

    public void removeSubsumed(Declaration declaration) {
        int iHashToIndex = hashToIndex(hash(declaration.getSymbol()));
        HashNode hashNode = ((HashNode[]) this.table)[iHashToIndex];
        HashNode hashNode2 = null;
        while (hashNode != null) {
            HashNode hashNode3 = hashNode.next;
            Declaration declaration2 = (Declaration) hashNode.getValue();
            if (declaration2 == declaration || !subsumedBy(declaration, declaration2)) {
                hashNode2 = hashNode;
            } else if (hashNode2 == null) {
                ((HashNode[]) this.table)[iHashToIndex] = hashNode3;
            } else {
                hashNode2.next = hashNode3;
            }
            hashNode = hashNode3;
        }
    }

    public boolean subsumedBy(Declaration declaration, Declaration declaration2) {
        return declaration.getSymbol() == declaration2.getSymbol() && (this.language.getNamespaceOf(declaration) & this.language.getNamespaceOf(declaration2)) != 0;
    }

    public Declaration lookup(Object obj, int i) {
        for (HashNode hashNode = ((HashNode[]) this.table)[hashToIndex(hash(obj))]; hashNode != null; hashNode = hashNode.next) {
            Declaration declaration = (Declaration) hashNode.getValue();
            if (obj.equals(declaration.getSymbol()) && this.language.hasNamespace(declaration, i)) {
                return declaration;
            }
        }
        return null;
    }

    public Declaration lookup(Object obj, boolean z) {
        return lookup(obj, z ? 2 : 1);
    }
}
