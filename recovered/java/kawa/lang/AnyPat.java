package kawa.lang;

import gnu.lists.Consumer;
import gnu.text.Printable;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public class AnyPat extends Pattern implements Printable, Externalizable {
    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
    }

    @Override // kawa.lang.Pattern
    public int varCount() {
        return 1;
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
    }

    public static AnyPat make() {
        return new AnyPat();
    }

    @Override // gnu.text.Printable
    public void print(Consumer consumer) {
        consumer.write("#<match any>");
    }

    @Override // kawa.lang.Pattern
    public boolean match(Object obj, Object[] objArr, int i) {
        objArr[i] = obj;
        return true;
    }
}
