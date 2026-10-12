package gnu.kawa.reflect;

import gnu.bytecode.Type;
import gnu.mapping.Procedure;
import gnu.mapping.Procedure1;
import gnu.mapping.PropertySet;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public class ArrayNew extends Procedure1 implements Externalizable {
    Type element_type;

    @Override // gnu.mapping.Procedure
    public boolean isSideEffectFree() {
        return true;
    }

    public ArrayNew(Type type) {
        this.element_type = type;
        setProperty(Procedure.validateApplyKey, "gnu.kawa.reflect.CompileArrays:validateArrayNew");
        Procedure.compilerKey.set((PropertySet) this, "*gnu.kawa.reflect.CompileArrays:getForArrayNew");
    }

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public Object apply1(Object obj) {
        return Array.newInstance((Class<?>) this.element_type.getImplementationType().getReflectClass(), ((Number) obj).intValue());
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.element_type);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.element_type = (Type) objectInput.readObject();
    }
}
