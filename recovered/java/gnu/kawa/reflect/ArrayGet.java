package gnu.kawa.reflect;

import gnu.bytecode.Type;
import gnu.mapping.Procedure;
import gnu.mapping.Procedure2;
import gnu.mapping.PropertySet;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public class ArrayGet extends Procedure2 implements Externalizable {
    Type element_type;

    @Override // gnu.mapping.Procedure
    public boolean isSideEffectFree() {
        return true;
    }

    public ArrayGet(Type type) {
        this.element_type = type;
        setProperty(Procedure.validateApplyKey, "gnu.kawa.reflect.CompileArrays:validateArrayGet");
        Procedure.compilerKey.set((PropertySet) this, "*gnu.kawa.reflect.CompileArrays:getForArrayGet");
    }

    @Override // gnu.mapping.Procedure2, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) throws ArrayIndexOutOfBoundsException, IllegalArgumentException {
        return this.element_type.coerceToObject(Array.get(obj, ((Number) obj2).intValue()));
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
