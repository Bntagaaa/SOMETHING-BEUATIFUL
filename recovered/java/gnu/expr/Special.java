package gnu.expr;

import gnu.lists.Consumer;
import gnu.lists.Sequence;
import gnu.text.Printable;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;

/* loaded from: classes2.dex */
public class Special implements Printable, Externalizable {
    private String name;
    public static final Special undefined = new Special("undefined");
    public static final Special optional = new Special("optional");
    public static final Special rest = new Special("rest");
    public static final Special key = new Special("key");
    public static final Special dfault = new Special("default");
    public static final Special abstractSpecial = new Special("abstract");
    public static final Object eof = Sequence.eofValue;

    public Special() {
    }

    private Special(String str) {
        this.name = new String(str);
    }

    public static Special make(String str) {
        return str == "optional" ? optional : str == "rest" ? rest : str == "key" ? key : str == "default" ? dfault : new Special(str);
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public final String toString() {
        return "#!" + this.name;
    }

    @Override // gnu.text.Printable
    public void print(Consumer consumer) {
        consumer.write("#!");
        consumer.write(this.name);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeUTF(this.name);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.name = objectInput.readUTF();
    }

    public Object readResolve() throws ObjectStreamException {
        return make(this.name);
    }
}
