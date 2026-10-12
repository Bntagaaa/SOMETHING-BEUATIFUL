package gnu.bytecode;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;
import java.util.List;

/* loaded from: classes2.dex */
public class ArrayType extends ObjectType implements Externalizable {
    public Type elements;

    public ArrayType(Type type) {
        this(type, type.getName() + "[]");
    }

    public ArrayType(Type type, String str) {
        this.this_name = str;
        this.elements = type;
    }

    @Override // gnu.bytecode.Type
    public String getSignature() {
        if (this.signature == null) {
            setSignature("[" + this.elements.getSignature());
        }
        return this.signature;
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public Type getImplementationType() {
        Type implementationType = this.elements.getImplementationType();
        return this.elements == implementationType ? this : make(implementationType);
    }

    public static ArrayType make(String str) {
        Type type = Type.getType(str.substring(0, str.length() - 2));
        ArrayType arrayType = type.array_type;
        if (arrayType != null) {
            return arrayType;
        }
        ArrayType arrayType2 = new ArrayType(type, str);
        type.array_type = arrayType2;
        return arrayType2;
    }

    public static ArrayType make(Type type) {
        ArrayType arrayType = type.array_type;
        if (arrayType != null) {
            return arrayType;
        }
        ArrayType arrayType2 = new ArrayType(type, type.getName() + "[]");
        type.array_type = arrayType2;
        return arrayType2;
    }

    public Type getComponentType() {
        return this.elements;
    }

    @Override // gnu.bytecode.ObjectType
    public String getInternalName() {
        return getSignature();
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public Class getReflectClass() {
        try {
            if (this.reflectClass == null) {
                this.reflectClass = Class.forName(getInternalName().replace('/', '.'), false, this.elements.getReflectClass().getClassLoader());
            }
            this.flags |= 16;
        } catch (ClassNotFoundException e) {
            if ((this.flags & 16) != 0) {
                RuntimeException runtimeException = new RuntimeException("no such array class: " + getName());
                runtimeException.initCause(e);
                throw runtimeException;
            }
        }
        return this.reflectClass;
    }

    @Override // gnu.bytecode.ObjectType
    public int getMethods(Filter filter, int i, List<Method> list) {
        if (i <= 0) {
            return 0;
        }
        int methods = Type.objectType.getMethods(filter, 0, list);
        if (i <= 1) {
            return methods;
        }
        Method method = Type.clone_method;
        if (!filter.select(method)) {
            return methods;
        }
        if (list != null) {
            list.add(method);
        }
        return methods + 1;
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public int compare(Type type) {
        if (type == Type.nullType) {
            return 1;
        }
        if (type instanceof ArrayType) {
            return this.elements.compare(((ArrayType) type).elements);
        }
        return (type.getName().equals("java.lang.Object") || type == Type.toStringType) ? -1 : -3;
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.elements);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.elements = (Type) objectInput.readObject();
    }

    public Object readResolve() throws ObjectStreamException {
        Type type = this.elements;
        ArrayType arrayType = type.array_type;
        if (arrayType != null) {
            return arrayType;
        }
        type.array_type = this;
        return this;
    }
}
