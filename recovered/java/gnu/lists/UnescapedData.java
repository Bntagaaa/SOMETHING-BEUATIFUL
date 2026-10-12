package gnu.lists;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public class UnescapedData implements CharSequence, Externalizable {
    String data;

    public UnescapedData() {
    }

    public UnescapedData(String str) {
        this.data = str;
    }

    public final String getData() {
        return this.data;
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.data;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof UnescapedData) && this.data.equals(obj.toString());
    }

    public final int hashCode() {
        String str = this.data;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.data.length();
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.data.charAt(i);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return new UnescapedData(this.data.substring(i, i2));
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.data);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.data = (String) objectInput.readObject();
    }
}
