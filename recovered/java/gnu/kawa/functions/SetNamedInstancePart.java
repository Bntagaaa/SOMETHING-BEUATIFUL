package gnu.kawa.functions;

import gnu.kawa.reflect.SlotSet;
import gnu.mapping.Procedure;
import gnu.mapping.Procedure2;
import gnu.mapping.Values;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
class SetNamedInstancePart extends Procedure2 implements Externalizable {
    String pname;

    public SetNamedInstancePart() {
        setProperty(Procedure.validateApplyKey, "gnu.kawa.functions.CompileNamedPart:validateSetNamedInstancePart");
    }

    public SetNamedInstancePart(String str) {
        this();
        setPartName(str);
    }

    public void setPartName(String str) {
        setName("set-instance-part:." + str);
        this.pname = str;
    }

    @Override // gnu.mapping.Procedure2, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) throws Throwable {
        SlotSet.setField(obj, this.pname, obj2);
        return Values.empty;
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.pname);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        setPartName((String) objectInput.readObject());
    }
}
