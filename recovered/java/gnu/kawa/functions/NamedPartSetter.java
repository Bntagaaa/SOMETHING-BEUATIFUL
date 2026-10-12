package gnu.kawa.functions;

import gnu.mapping.Procedure;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
class NamedPartSetter extends gnu.mapping.Setter implements Externalizable {
    public NamedPartSetter(NamedPart namedPart) {
        super(namedPart);
        setProperty(Procedure.validateApplyKey, "gnu.kawa.functions.CompileNamedPart:validateNamedPartSetter");
    }

    @Override // gnu.mapping.Setter, gnu.mapping.Procedure
    public int numArgs() {
        return ((NamedPart) this.getter).kind == 'D' ? 8193 : -4096;
    }

    public Procedure getGetter() {
        return this.getter;
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.getter);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.getter = (Procedure) objectInput.readObject();
    }
}
