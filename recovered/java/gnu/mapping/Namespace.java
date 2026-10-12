package gnu.mapping;

import _COROUTINE.a;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;
import java.util.Hashtable;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class Namespace implements Externalizable, HasNamedParts {
    int log2Size;
    private int mask;
    String name;
    int num_bindings;
    protected String prefix;
    protected SymbolRef[] table;
    protected static final Hashtable nsTable = new Hashtable(50);
    public static final Namespace EmptyNamespace = valueOf("");

    public boolean isConstant(String str) {
        return false;
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final String getPrefix() {
        return this.prefix;
    }

    public Namespace() {
        this(64);
    }

    public Namespace(int i) {
        this.prefix = "";
        this.log2Size = 4;
        while (true) {
            int i2 = this.log2Size;
            if (i > (1 << i2)) {
                this.log2Size = i2 + 1;
            } else {
                int i3 = 1 << i2;
                this.table = new SymbolRef[i3];
                this.mask = i3 - 1;
                return;
            }
        }
    }

    public static Namespace create(int i) {
        return new Namespace(i);
    }

    public static Namespace create() {
        return new Namespace(64);
    }

    public static Namespace getDefault() {
        return EmptyNamespace;
    }

    public static Symbol getDefaultSymbol(String str) {
        return EmptyNamespace.getSymbol(str);
    }

    public static Namespace valueOf() {
        return EmptyNamespace;
    }

    public static Namespace valueOf(String str) {
        if (str == null) {
            str = "";
        }
        Hashtable hashtable = nsTable;
        synchronized (hashtable) {
            try {
                Namespace namespace = (Namespace) hashtable.get(str);
                if (namespace != null) {
                    return namespace;
                }
                Namespace namespace2 = new Namespace();
                namespace2.setName(str.intern());
                hashtable.put(str, namespace2);
                return namespace2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Namespace valueOf(String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            return valueOf(str);
        }
        String strJ = a.j(str2, " -> ", str);
        Hashtable hashtable = nsTable;
        synchronized (hashtable) {
            try {
                Object obj = hashtable.get(strJ);
                if (obj instanceof Namespace) {
                    return (Namespace) obj;
                }
                Namespace namespace = new Namespace();
                namespace.setName(str.intern());
                namespace.prefix = str2.intern();
                hashtable.put(strJ, namespace);
                return namespace;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Namespace valueOf(String str, SimpleSymbol simpleSymbol) {
        return valueOf(str, simpleSymbol == null ? null : simpleSymbol.getName());
    }

    public static Namespace makeUnknownNamespace(String str) {
        String strConcat = "";
        if (str != null && str != "") {
            strConcat = "http://kawa.gnu.org/unknown-namespace/".concat(str);
        }
        return valueOf(strConcat, str);
    }

    public Object get(String str) {
        return Environment.getCurrent().get(getSymbol(str));
    }

    public Symbol getSymbol(String str) {
        return lookup(str, str.hashCode(), true);
    }

    public Symbol lookup(String str) {
        return lookup(str, str.hashCode(), false);
    }

    public final Symbol lookupInternal(String str, int i) {
        int i2 = i & this.mask;
        SymbolRef symbolRef = this.table[i2];
        SymbolRef symbolRef2 = null;
        while (symbolRef != null) {
            SymbolRef symbolRef3 = symbolRef.next;
            Symbol symbol = symbolRef.getSymbol();
            if (symbol == null) {
                if (symbolRef2 == null) {
                    this.table[i2] = symbolRef3;
                } else {
                    symbolRef2.next = symbolRef3;
                }
                this.num_bindings--;
            } else {
                if (symbol.getLocalPart().equals(str)) {
                    return symbol;
                }
                symbolRef2 = symbolRef;
            }
            symbolRef = symbolRef3;
        }
        return null;
    }

    public Symbol add(Symbol symbol, int i) {
        int i2 = i & this.mask;
        SymbolRef symbolRef = new SymbolRef(symbol, this);
        symbol.namespace = this;
        SymbolRef[] symbolRefArr = this.table;
        symbolRef.next = symbolRefArr[i2];
        symbolRefArr[i2] = symbolRef;
        int i3 = this.num_bindings + 1;
        this.num_bindings = i3;
        if (i3 >= symbolRefArr.length) {
            rehash();
        }
        return symbol;
    }

    public Symbol lookup(String str, int i, boolean z) {
        Symbol symbol;
        synchronized (this) {
            try {
                Symbol symbolLookupInternal = lookupInternal(str, i);
                if (symbolLookupInternal != null) {
                    return symbolLookupInternal;
                }
                if (!z) {
                    return null;
                }
                if (this == EmptyNamespace) {
                    symbol = new SimpleSymbol(str);
                } else {
                    symbol = new Symbol(this, str);
                }
                return add(symbol, i);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean remove(Symbol symbol) {
        synchronized (this) {
            try {
                int iHashCode = symbol.getLocalPart().hashCode() & this.mask;
                SymbolRef symbolRef = this.table[iHashCode];
                SymbolRef symbolRef2 = null;
                while (symbolRef != null) {
                    SymbolRef symbolRef3 = symbolRef.next;
                    Symbol symbol2 = symbolRef.getSymbol();
                    if (symbol2 == null || symbol2 == symbol) {
                        if (symbolRef2 == null) {
                            this.table[iHashCode] = symbolRef3;
                        } else {
                            symbolRef2.next = symbolRef3;
                        }
                        this.num_bindings--;
                        if (symbol2 != null) {
                            return true;
                        }
                    } else {
                        symbolRef2 = symbolRef;
                    }
                    symbolRef = symbolRef3;
                }
                return false;
            } finally {
            }
        }
    }

    public void rehash() {
        SymbolRef[] symbolRefArr = this.table;
        int length = symbolRefArr.length;
        int i = length * 2;
        int i2 = i - 1;
        SymbolRef[] symbolRefArr2 = new SymbolRef[i];
        int i3 = 0;
        while (true) {
            length--;
            if (length >= 0) {
                SymbolRef symbolRef = symbolRefArr[length];
                while (symbolRef != null) {
                    SymbolRef symbolRef2 = symbolRef.next;
                    Symbol symbol = symbolRef.getSymbol();
                    if (symbol != null) {
                        int iHashCode = symbol.getName().hashCode() & i2;
                        i3++;
                        symbolRef.next = symbolRefArr2[iHashCode];
                        symbolRefArr2[iHashCode] = symbolRef;
                    }
                    symbolRef = symbolRef2;
                }
            } else {
                this.table = symbolRefArr2;
                this.log2Size++;
                this.mask = i2;
                this.num_bindings = i3;
                return;
            }
        }
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(getName());
        objectOutput.writeObject(this.prefix);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.name = ((String) objectInput.readObject()).intern();
        this.prefix = (String) objectInput.readObject();
    }

    public Object readResolve() throws ObjectStreamException {
        String name = getName();
        if (name != null) {
            String str = this.prefix;
            if (str != null && str.length() != 0) {
                name = this.prefix + " -> " + name;
            }
            Hashtable hashtable = nsTable;
            Namespace namespace = (Namespace) hashtable.get(name);
            if (namespace != null) {
                return namespace;
            }
            hashtable.put(name, this);
        }
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("#,(namespace \"");
        sb.append(this.name);
        sb.append(Typography.quote);
        String str = this.prefix;
        if (str != null && str != "") {
            sb.append(' ');
            sb.append(this.prefix);
        }
        sb.append(')');
        return sb.toString();
    }
}
