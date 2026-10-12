package gnu.bytecode;

import java.util.List;
import java.util.Vector;

/* loaded from: classes2.dex */
public class ObjectType extends Type {
    static final int ADD_ENCLOSING_DONE = 8;
    static final int ADD_FIELDS_DONE = 1;
    static final int ADD_MEMBERCLASSES_DONE = 4;
    static final int ADD_METHODS_DONE = 2;
    static final int EXISTING_CLASS = 16;
    static final int HAS_OUTER_LINK = 32;
    public int flags;

    public Field getField(String str, int i) {
        return null;
    }

    public ObjectType() {
        this.size = 4;
    }

    public ObjectType(String str) {
        this.this_name = str;
        this.size = 4;
    }

    @Override // gnu.bytecode.Type
    public final boolean isExisting() {
        Type implementationType = getImplementationType();
        if (implementationType instanceof ArrayType) {
            implementationType = ((ArrayType) implementationType).getComponentType();
        }
        return implementationType == this ? (this.flags & 16) != 0 : !(implementationType instanceof ObjectType) || ((ObjectType) implementationType).isExisting();
    }

    public final void setExisting(boolean z) {
        if (z) {
            this.flags |= 16;
        } else {
            this.flags &= -17;
        }
    }

    public String getInternalName() {
        return getName().replace('.', '/');
    }

    public static Class getContextClass(String str) throws ClassNotFoundException {
        try {
            try {
                return Class.forName(str, false, ObjectType.class.getClassLoader());
            } catch (ClassNotFoundException unused) {
                return Class.forName(str, false, getContextClassLoader());
            }
        } catch (ClassNotFoundException unused2) {
            return Class.forName(str, false, getThreadContextClassLoader());
        }
    }

    public static ClassLoader getThreadContextClassLoader() {
        try {
            return Thread.currentThread().getContextClassLoader();
        } catch (SecurityException unused) {
            return ObjectType.class.getClassLoader();
        }
    }

    public static ClassLoader getContextClassLoader() {
        try {
            return ClassLoader.getSystemClassLoader();
        } catch (SecurityException unused) {
            return ObjectType.class.getClassLoader();
        }
    }

    @Override // gnu.bytecode.Type
    public Class getReflectClass() {
        try {
            if (this.reflectClass == null) {
                this.reflectClass = getContextClass(getInternalName().replace('/', '.'));
            }
            this.flags |= 16;
        } catch (ClassNotFoundException e) {
            if ((this.flags & 16) != 0) {
                RuntimeException runtimeException = new RuntimeException("no such class: " + getName());
                runtimeException.initCause(e);
                throw runtimeException;
            }
        }
        return this.reflectClass;
    }

    @Override // gnu.bytecode.Type
    public Type getImplementationType() {
        return this == Type.nullType ? Type.objectType : this == Type.toStringType ? Type.javalangStringType : this;
    }

    @Override // gnu.bytecode.Type
    public Type promote() {
        return this == Type.nullType ? Type.objectType : this;
    }

    @Override // gnu.bytecode.Type
    public boolean isInstance(Object obj) {
        if (this == Type.nullType) {
            return obj == null;
        }
        return super.isInstance(obj);
    }

    public Method getMethod(String str, Type[] typeArr) {
        return Type.objectType.getMethod(str, typeArr);
    }

    public final int getMethods(Filter filter, int i, Vector vector, String str) {
        return Type.objectType.getMethods(filter, i, vector, str);
    }

    public int getMethods(Filter filter, int i, List<Method> list) {
        return Type.objectType.getMethods(filter, i, list);
    }

    @Override // gnu.bytecode.Type
    public int compare(Type type) {
        return type == Type.nullType ? 0 : -1;
    }

    @Override // gnu.bytecode.Type
    public Object coerceFromObject(Object obj) {
        if (obj != null) {
            if (this == Type.toStringType) {
                return obj.toString();
            }
            Class reflectClass = getReflectClass();
            Class<?> cls = obj.getClass();
            if (!reflectClass.isAssignableFrom(cls)) {
                throw new ClassCastException("don't know how to coerce " + cls.getName() + " to " + getName());
            }
        }
        return obj;
    }

    @Override // gnu.bytecode.Type
    public void emitCoerceFromObject(CodeAttr codeAttr) {
        if (this == Type.toStringType) {
            codeAttr.emitDup();
            codeAttr.emitIfNull();
            codeAttr.emitPop(1);
            codeAttr.emitPushNull();
            codeAttr.emitElse();
            codeAttr.emitInvokeVirtual(Type.toString_method);
            codeAttr.emitFi();
            return;
        }
        if (this != Type.objectType) {
            codeAttr.emitCheckcast(this);
        }
    }
}
