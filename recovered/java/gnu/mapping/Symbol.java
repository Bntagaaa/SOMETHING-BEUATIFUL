package gnu.mapping;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;

/* loaded from: classes2.dex */
public class Symbol implements EnvironmentKey, Comparable, Externalizable {
    public static final Symbol FUNCTION = makeUninterned("(function)");
    public static final Symbol PLIST = makeUninterned("(property-list)");
    protected String name;
    Namespace namespace;

    @Override // gnu.mapping.EnvironmentKey
    public final Object getKeyProperty() {
        return null;
    }

    @Override // gnu.mapping.EnvironmentKey
    public final Symbol getKeySymbol() {
        return this;
    }

    @Override // gnu.mapping.EnvironmentKey
    public boolean matches(EnvironmentKey environmentKey) {
        return equals(environmentKey.getKeySymbol(), this) && environmentKey.getKeyProperty() == null;
    }

    @Override // gnu.mapping.EnvironmentKey
    public boolean matches(Symbol symbol, Object obj) {
        return equals(symbol, this) && obj == null;
    }

    public final String getNamespaceURI() {
        Namespace namespace = getNamespace();
        if (namespace == null) {
            return null;
        }
        return namespace.getName();
    }

    public final String getLocalPart() {
        return this.name;
    }

    public final String getPrefix() {
        Namespace namespace = this.namespace;
        return namespace == null ? "" : namespace.prefix;
    }

    public final boolean hasEmptyNamespace() {
        String name;
        Namespace namespace = getNamespace();
        return namespace == null || (name = namespace.getName()) == null || name.length() == 0;
    }

    public final String getLocalName() {
        return this.name;
    }

    public final String getName() {
        return this.name;
    }

    public static Symbol make(String str, String str2, String str3) {
        return Namespace.valueOf(str, str3).getSymbol(str2.intern());
    }

    public static Symbol make(Object obj, String str) {
        Namespace namespaceValueOf = obj instanceof String ? Namespace.valueOf((String) obj) : (Namespace) obj;
        if (namespaceValueOf == null || str == null) {
            return makeUninterned(str);
        }
        return namespaceValueOf.getSymbol(str.intern());
    }

    public static SimpleSymbol valueOf(String str) {
        return (SimpleSymbol) Namespace.EmptyNamespace.getSymbol(str.intern());
    }

    public static Symbol valueOf(String str, Object obj) {
        Namespace namespaceValueOf;
        if (obj == null || obj == Boolean.FALSE) {
            return makeUninterned(str);
        }
        if (obj instanceof Namespace) {
            namespaceValueOf = (Namespace) obj;
        } else if (obj == Boolean.TRUE) {
            namespaceValueOf = Namespace.EmptyNamespace;
        } else {
            namespaceValueOf = Namespace.valueOf(((CharSequence) obj).toString());
        }
        return namespaceValueOf.getSymbol(str.intern());
    }

    public static Symbol valueOf(String str, String str2, String str3) {
        return Namespace.valueOf(str2, str3).getSymbol(str.intern());
    }

    public static Symbol parse(String str) {
        int i;
        int length = str.length();
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        int i5 = -1;
        int i6 = 0;
        while (true) {
            if (i3 < length) {
                char cCharAt = str.charAt(i3);
                if (cCharAt == ':' && i4 == 0) {
                    i = i3 + 1;
                    break;
                }
                if (cCharAt == '{') {
                    if (i5 < 0) {
                        i5 = i3;
                        i6 = i5;
                    }
                    i4++;
                }
                if (cCharAt == '}') {
                    i4--;
                    if (i4 == 0) {
                        i = (i3 >= length || str.charAt(i3 + 1) != ':') ? i3 + 1 : i3 + 2;
                        i2 = i3;
                        i3 = i6;
                    } else if (i4 < 0) {
                        i = i6;
                        i3 = i;
                        break;
                    }
                }
                i3++;
            } else {
                i3 = i6;
                i = 0;
                break;
            }
        }
        if (i5 >= 0 && i2 > 0) {
            return valueOf(str.substring(i), str.substring(i5 + 1, i2), i3 > 0 ? str.substring(0, i3) : null);
        }
        if (i3 > 0) {
            return makeWithUnknownNamespace(str.substring(i), str.substring(0, i3));
        }
        return valueOf(str);
    }

    public static Symbol makeWithUnknownNamespace(String str, String str2) {
        return Namespace.makeUnknownNamespace(str2).getSymbol(str.intern());
    }

    public Symbol() {
    }

    public static Symbol makeUninterned(String str) {
        return new Symbol(null, str);
    }

    public Symbol(Namespace namespace, String str) {
        this.name = str;
        this.namespace = namespace;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        Symbol symbol = (Symbol) obj;
        if (getNamespaceURI() != symbol.getNamespaceURI()) {
            throw new IllegalArgumentException("comparing Symbols in different namespaces");
        }
        return getLocalName().compareTo(symbol.getLocalName());
    }

    public static boolean equals(Symbol symbol, Symbol symbol2) {
        if (symbol == symbol2) {
            return true;
        }
        if (symbol != null && symbol2 != null && symbol.name == symbol2.name) {
            Namespace namespace = symbol.namespace;
            Namespace namespace2 = symbol2.namespace;
            if (namespace != null && namespace2 != null && namespace.name == namespace2.name) {
                return true;
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof Symbol) && equals(this, (Symbol) obj);
    }

    public int hashCode() {
        String str = this.name;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final Namespace getNamespace() {
        return this.namespace;
    }

    public final void setNamespace(Namespace namespace) {
        this.namespace = namespace;
    }

    public String toString() {
        return toString('P');
    }

    public String toString(char c) {
        String namespaceURI = getNamespaceURI();
        String prefix = getPrefix();
        boolean z = false;
        boolean z2 = namespaceURI != null && namespaceURI.length() > 0;
        if (prefix != null && prefix.length() > 0) {
            z = true;
        }
        String name = getName();
        if (!z2 && !z) {
            return name;
        }
        StringBuilder sb = new StringBuilder();
        if (z && (c != 'U' || !z2)) {
            sb.append(prefix);
        }
        if (z2 && (c != 'P' || !z)) {
            sb.append('{');
            sb.append(getNamespaceURI());
            sb.append('}');
        }
        sb.append(':');
        sb.append(name);
        return sb.toString();
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(getNamespace());
        objectOutput.writeObject(getName());
    }

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.namespace = (Namespace) objectInput.readObject();
        this.name = (String) objectInput.readObject();
    }

    public Object readResolve() throws ObjectStreamException {
        Namespace namespace = this.namespace;
        return namespace == null ? this : make(namespace, getName());
    }
}
