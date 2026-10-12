package gnu.kawa.reflect;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.ObjectType;
import gnu.bytecode.Type;
import gnu.mapping.Values;

/* loaded from: classes2.dex */
public class SingletonType extends ObjectType {
    static final SingletonType instance = new SingletonType("singleton");

    public SingletonType(String str) {
        super(str);
    }

    public static final SingletonType getInstance() {
        return instance;
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public Class getReflectClass() {
        return getImplementationType().getReflectClass();
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public Type getImplementationType() {
        return Type.pointer_type;
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public int compare(Type type) {
        int iItemCountRange = OccurrenceType.itemCountRange(type);
        int i = iItemCountRange & 4095;
        int i2 = iItemCountRange >> 12;
        if (i2 == 0 || i > 1) {
            return -3;
        }
        if (i == 1 && i2 == 1) {
            return Type.pointer_type.compare(type);
        }
        int iCompare = Type.pointer_type.compare(type);
        return (iCompare == 0 || iCompare == -1) ? -1 : -2;
    }

    public static Object coerceToSingleton(Object obj) {
        if (obj instanceof Values) {
            obj = ((Values) obj).canonicalize();
        }
        if (obj == null || (obj instanceof Values)) {
            throw new ClassCastException("value is not a singleton");
        }
        return obj;
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public Object coerceFromObject(Object obj) {
        return coerceToSingleton(obj);
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public void emitCoerceFromObject(CodeAttr codeAttr) {
        codeAttr.emitInvokeStatic(ClassType.make("gnu.kawa.reflect.SingletonType").getDeclaredMethod("coerceToSingleton", 1));
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public boolean isInstance(Object obj) {
        return (obj == null || (obj instanceof Values)) ? false : true;
    }
}
