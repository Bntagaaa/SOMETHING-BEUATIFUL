package gnu.expr;

import gnu.lists.Consumer;
import gnu.mapping.Namespace;
import gnu.mapping.Symbol;
import gnu.text.Printable;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;

/* loaded from: classes2.dex */
public class Keyword extends Symbol implements Printable, Externalizable {
    public static final Namespace keywordNamespace;

    static {
        Namespace namespaceCreate = Namespace.create();
        keywordNamespace = namespaceCreate;
        namespaceCreate.setName("(keywords)");
    }

    public Keyword() {
    }

    private Keyword(String str) {
        super(keywordNamespace, str);
    }

    public Keyword(Namespace namespace, String str) {
        super(namespace, str);
    }

    public Symbol asSymbol() {
        return Namespace.EmptyNamespace.getSymbol(getName());
    }

    public static Keyword make(String str) {
        int iHashCode = str.hashCode();
        Namespace namespace = keywordNamespace;
        Keyword keyword = (Keyword) namespace.lookup(str, iHashCode, false);
        if (keyword != null) {
            return keyword;
        }
        Keyword keyword2 = new Keyword(str);
        namespace.add(keyword2, iHashCode);
        return keyword2;
    }

    public static boolean isKeyword(Object obj) {
        return obj instanceof Keyword;
    }

    @Override // gnu.mapping.Symbol
    public final String toString() {
        return getName() + ':';
    }

    @Override // gnu.text.Printable
    public void print(Consumer consumer) {
        Symbols.print(getName(), consumer);
        consumer.write(58);
    }

    public static Object searchForKeyword(Object[] objArr, int i, Object obj) {
        while (i < objArr.length) {
            if (objArr[i] == obj) {
                return objArr[i + 1];
            }
            i += 2;
        }
        return Special.dfault;
    }

    public static Object searchForKeyword(Object[] objArr, int i, Object obj, Object obj2) {
        while (i < objArr.length) {
            if (objArr[i] == obj) {
                return objArr[i + 1];
            }
            i += 2;
        }
        return obj2;
    }

    @Override // gnu.mapping.Symbol, java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(getName());
    }

    @Override // gnu.mapping.Symbol, java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.name = (String) objectInput.readObject();
    }

    @Override // gnu.mapping.Symbol
    public Object readResolve() throws ObjectStreamException {
        return Symbol.make(keywordNamespace, getName());
    }
}
