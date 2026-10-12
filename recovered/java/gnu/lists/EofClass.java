package gnu.lists;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;

/* loaded from: classes2.dex */
public class EofClass implements Externalizable {
    public static final EofClass eofValue = new EofClass();

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
    }

    public final String toString() {
        return "#!eof";
    }

    public Object readResolve() throws ObjectStreamException {
        return Sequence.eofValue;
    }
}
