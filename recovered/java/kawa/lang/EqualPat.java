package kawa.lang;

import gnu.lists.Consumer;
import gnu.mapping.Symbol;
import gnu.text.Printable;
import gnu.text.ReportFormat;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public class EqualPat extends Pattern implements Printable, Externalizable {
    Object value;

    @Override // kawa.lang.Pattern
    public int varCount() {
        return 0;
    }

    public EqualPat() {
    }

    public EqualPat(Object obj) {
        this.value = obj;
    }

    public static EqualPat make(Object obj) {
        return new EqualPat(obj);
    }

    @Override // kawa.lang.Pattern
    public boolean match(Object obj, Object[] objArr, int i) {
        if ((this.value instanceof String) && (obj instanceof Symbol)) {
            obj = ((Symbol) obj).getName();
        }
        return this.value.equals(obj);
    }

    @Override // gnu.text.Printable
    public void print(Consumer consumer) {
        consumer.write("#<equals: ");
        ReportFormat.print(this.value, consumer);
        consumer.write(62);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.value);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.value = objectInput.readObject();
    }
}
