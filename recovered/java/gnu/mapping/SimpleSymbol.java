package gnu.mapping;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;

/* loaded from: classes2.dex */
public class SimpleSymbol extends Symbol {
    public SimpleSymbol() {
    }

    public SimpleSymbol(String str) {
        super(Namespace.EmptyNamespace, str);
    }

    @Override // gnu.mapping.Symbol, java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(getName());
    }

    @Override // gnu.mapping.Symbol, java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.name = ((String) objectInput.readObject()).intern();
    }

    @Override // gnu.mapping.Symbol
    public Object readResolve() throws ObjectStreamException {
        return Namespace.EmptyNamespace.getSymbol(getName().intern());
    }
}
