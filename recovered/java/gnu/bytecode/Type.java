package gnu.bytecode;

import com.google.appinventor.components.common.PropertyTypeConstants;
import gnu.kawa.util.AbstractWeakHashTable;
import java.io.PrintWriter;
import java.util.HashMap;

/* loaded from: classes2.dex */
public abstract class Type implements java.lang.reflect.Type {
    public static final PrimType booleanType;
    public static final Method booleanValue_method;
    public static final ClassType boolean_ctype;
    public static final PrimType boolean_type;
    public static final PrimType byteType;
    public static final PrimType byte_type;
    public static final PrimType charType;
    public static final PrimType char_type;
    public static final Method clone_method;
    public static final PrimType doubleType;
    public static final Method doubleValue_method;
    public static final PrimType double_type;
    public static final ObjectType errorType;
    public static final PrimType floatType;
    public static final Method floatValue_method;
    public static final PrimType float_type;
    public static final PrimType intType;
    public static final Method intValue_method;
    public static final PrimType int_type;
    public static final ClassType java_lang_Class_type;
    public static final ClassType javalangBooleanType;
    public static final ClassType javalangClassType;
    public static final ClassType javalangNumberType;
    public static final ClassType javalangObjectType;
    public static ClassType javalangStringType;
    public static final ClassType javalangThrowableType;
    public static final PrimType longType;
    public static final Method longValue_method;
    public static final PrimType long_type;
    static ClassToTypeMap mapClassToType;
    static HashMap<String, Type> mapNameToType;
    public static final PrimType neverReturnsType;
    public static final ObjectType nullType;
    public static final ClassType number_type;
    public static final ClassType objectType;
    public static final ClassType pointer_type;
    public static final PrimType shortType;
    public static final PrimType short_type;
    public static final ClassType string_type;
    public static final ClassType throwable_type;
    public static final ClassType toStringType;
    public static final Method toString_method;
    public static final ClassType tostring_type;
    public static final Type[] typeArray0;
    public static final PrimType voidType;
    public static final PrimType void_type;
    ArrayType array_type;
    protected Class reflectClass;
    String signature;
    int size;
    String this_name;

    public static int swappedCompareResult(int i) {
        if (i == 1) {
            return -1;
        }
        if (i == -1) {
            return 1;
        }
        return i;
    }

    public abstract Object coerceFromObject(Object obj);

    public Object coerceToObject(Object obj) {
        return obj;
    }

    public abstract int compare(Type type);

    public void emitCoerceToObject(CodeAttr codeAttr) {
    }

    public Type getImplementationType() {
        return this;
    }

    public Type getRealType() {
        return this;
    }

    public boolean isExisting() {
        return true;
    }

    public Type() {
    }

    public static Type lookupType(String str) {
        Type type;
        HashMap<String, Type> map = mapNameToType;
        synchronized (map) {
            type = map.get(str);
        }
        return type;
    }

    public static Type getType(String str) {
        Type type;
        Type typeMake;
        HashMap<String, Type> map = mapNameToType;
        synchronized (map) {
            try {
                Type type2 = map.get(str);
                type = type2;
                if (type2 == null) {
                    if (str.endsWith("[]")) {
                        typeMake = ArrayType.make(str);
                    } else {
                        ClassType classType = new ClassType(str);
                        classType.flags |= 16;
                        typeMake = classType;
                    }
                    map.put(str, typeMake);
                    type = typeMake;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return type;
    }

    public static synchronized void registerTypeForClass(Class cls, Type type) {
        try {
            ClassToTypeMap classToTypeMap = mapClassToType;
            if (classToTypeMap == null) {
                classToTypeMap = new ClassToTypeMap();
                mapClassToType = classToTypeMap;
            }
            type.reflectClass = cls;
            classToTypeMap.put(cls, type);
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized Type make(Class cls) {
        Type type;
        Type typeMake;
        Type type2;
        ClassToTypeMap classToTypeMap = mapClassToType;
        if (classToTypeMap != null && (type2 = classToTypeMap.get(cls)) != null) {
            return type2;
        }
        if (cls.isArray()) {
            typeMake = ArrayType.make(make(cls.getComponentType()));
        } else {
            if (cls.isPrimitive()) {
                throw new Error("internal error - primitive type not found");
            }
            String name = cls.getName();
            HashMap<String, Type> map = mapNameToType;
            synchronized (map) {
                try {
                    Type type3 = map.get(name);
                    if (type3 != null) {
                        Class cls2 = type3.reflectClass;
                        type = type3;
                        type = type3;
                        if (cls2 != cls && cls2 != null) {
                        }
                        typeMake = type;
                    }
                    ClassType classType = new ClassType(name);
                    classType.flags |= 16;
                    mapNameToType.put(name, classType);
                    type = classType;
                    typeMake = type;
                } finally {
                }
            }
        }
        registerTypeForClass(cls, typeMake);
        return typeMake;
    }

    public String getSignature() {
        return this.signature;
    }

    public void setSignature(String str) {
        this.signature = str;
    }

    public Type(String str, String str2) {
        this.this_name = str;
        this.signature = str2;
    }

    public Type(Type type) {
        this.this_name = type.this_name;
        this.signature = type.signature;
        this.size = type.size;
        this.reflectClass = type.reflectClass;
    }

    public Type promote() {
        return this.size < 4 ? intType : this;
    }

    public final int getSize() {
        return this.size;
    }

    public int getSizeInWords() {
        return this.size > 4 ? 2 : 1;
    }

    public final boolean isVoid() {
        return this.size == 0;
    }

    public static PrimType signatureToPrimitive(char c) {
        if (c == 'F') {
            return floatType;
        }
        if (c == 'S') {
            return shortType;
        }
        if (c == 'V') {
            return voidType;
        }
        if (c == 'Z') {
            return booleanType;
        }
        if (c == 'I') {
            return intType;
        }
        if (c != 'J') {
            switch (c) {
                case 'B':
                    return byteType;
                case 'C':
                    return charType;
                case 'D':
                    return doubleType;
                default:
                    return null;
            }
        }
        return longType;
    }

    public static Type signatureToType(String str, int i, int i2) {
        int i3;
        PrimType primTypeSignatureToPrimitive;
        if (i2 == 0) {
            return null;
        }
        char cCharAt = str.charAt(i);
        if (i2 == 1 && (primTypeSignatureToPrimitive = signatureToPrimitive(cCharAt)) != null) {
            return primTypeSignatureToPrimitive;
        }
        if (cCharAt == '[') {
            Type typeSignatureToType = signatureToType(str, i + 1, i2 - 1);
            if (typeSignatureToType == null) {
                return null;
            }
            return ArrayType.make(typeSignatureToType);
        }
        if (cCharAt == 'L' && i2 > 2 && str.indexOf(59, i) == (i3 = (i2 - 1) + i)) {
            return ClassType.make(str.substring(i + 1, i3).replace('/', '.'));
        }
        return null;
    }

    public static Type signatureToType(String str) {
        return signatureToType(str, 0, str.length());
    }

    public static void printSignature(String str, int i, int i2, PrintWriter printWriter) {
        int i3;
        if (i2 == 0) {
            return;
        }
        char cCharAt = str.charAt(i);
        if (i2 == 1) {
            PrimType primTypeSignatureToPrimitive = signatureToPrimitive(cCharAt);
            if (primTypeSignatureToPrimitive != null) {
                printWriter.print(primTypeSignatureToPrimitive.getName());
                return;
            }
            return;
        }
        if (cCharAt == '[') {
            printSignature(str, i + 1, i2 - 1, printWriter);
            printWriter.print("[]");
        } else if (cCharAt == 'L' && i2 > 2 && str.indexOf(59, i) == (i3 = (i2 - 1) + i)) {
            printWriter.print(str.substring(i + 1, i3).replace('/', '.'));
        } else {
            printWriter.append((CharSequence) str, i, i2 - i);
        }
    }

    public static int signatureLength(String str, int i) {
        int iIndexOf;
        if (str.length() <= i) {
            return -1;
        }
        char cCharAt = str.charAt(i);
        int i2 = 0;
        while (cCharAt == '[') {
            i2++;
            i++;
            cCharAt = str.charAt(i);
        }
        if (signatureToPrimitive(cCharAt) != null) {
            return i2 + 1;
        }
        if (cCharAt != 'L' || (iIndexOf = str.indexOf(59, i)) <= 0) {
            return -1;
        }
        return ((i2 + iIndexOf) + 1) - i;
    }

    public static int signatureLength(String str) {
        return signatureLength(str, 0);
    }

    public static String signatureToName(String str) {
        int i;
        PrimType primTypeSignatureToPrimitive;
        int length = str.length();
        if (length == 0) {
            return null;
        }
        char cCharAt = str.charAt(0);
        int i2 = 1;
        if (length == 1 && (primTypeSignatureToPrimitive = signatureToPrimitive(cCharAt)) != null) {
            return primTypeSignatureToPrimitive.getName();
        }
        if (cCharAt == '[') {
            if (1 < length && str.charAt(1) == '[') {
                i2 = 2;
            }
            String strSignatureToName = signatureToName(str.substring(i2));
            if (strSignatureToName == null) {
                return null;
            }
            StringBuffer stringBuffer = new StringBuffer(50);
            stringBuffer.append(strSignatureToName);
            while (true) {
                i2--;
                if (i2 >= 0) {
                    stringBuffer.append("[]");
                } else {
                    return stringBuffer.toString();
                }
            }
        } else {
            if (cCharAt == 'L' && length > 2 && str.indexOf(59) == (i = length - 1)) {
                return str.substring(1, i).replace('/', '.');
            }
            return null;
        }
    }

    public final String getName() {
        return this.this_name;
    }

    public void setName(String str) {
        this.this_name = str;
    }

    public static boolean isValidJavaTypeName(String str) {
        int length = str.length();
        while (length > 2 && str.charAt(length - 1) == ']' && str.charAt(length - 2) == '[') {
            length -= 2;
        }
        int i = 0;
        boolean z = false;
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '.') {
                if (!z) {
                    return false;
                }
                z = false;
            } else if (z) {
                if (!Character.isJavaIdentifierPart(cCharAt)) {
                    return false;
                }
                z = true;
            } else {
                if (!Character.isJavaIdentifierStart(cCharAt)) {
                    return false;
                }
                z = true;
            }
            i++;
        }
        return i == length;
    }

    public boolean isInstance(Object obj) {
        return getReflectClass().isInstance(obj);
    }

    public final boolean isSubtype(Type type) {
        int iCompare = compare(type);
        return iCompare == -1 || iCompare == 0;
    }

    public static Type lowestCommonSuperType(Type type, Type type2) {
        PrimType primType = neverReturnsType;
        if (type == primType) {
            return type2;
        }
        if (type2 == primType) {
            return type;
        }
        if (type == null || type2 == null) {
            return null;
        }
        if ((type instanceof PrimType) && (type2 instanceof PrimType)) {
            if (type != type2) {
                Type typePromotedType = ((PrimType) type).promotedType();
                if (typePromotedType == ((PrimType) type2).promotedType()) {
                    return typePromotedType;
                }
                return null;
            }
        } else {
            if (type.isSubtype(type2)) {
                return type2;
            }
            if (!type2.isSubtype(type)) {
                if (!(type instanceof ClassType) || !(type2 instanceof ClassType)) {
                    return objectType;
                }
                ClassType classType = (ClassType) type;
                ClassType classType2 = (ClassType) type2;
                if (classType.isInterface() || classType2.isInterface()) {
                    return objectType;
                }
                return lowestCommonSuperType(classType.getSuperclass(), classType2.getSuperclass());
            }
        }
        return type;
    }

    public static boolean isMoreSpecific(Type[] typeArr, Type[] typeArr2) {
        if (typeArr.length != typeArr2.length) {
            return false;
        }
        int length = typeArr.length;
        do {
            length--;
            if (length < 0) {
                return true;
            }
        } while (typeArr[length].isSubtype(typeArr2[length]));
        return false;
    }

    public void emitIsInstance(CodeAttr codeAttr) {
        codeAttr.emitInstanceof(this);
    }

    public void emitConvertFromPrimitive(Type type, CodeAttr codeAttr) {
        type.emitCoerceToObject(codeAttr);
    }

    public void emitCoerceFromObject(CodeAttr codeAttr) {
        throw new Error("unimplemented emitCoerceFromObject for " + this);
    }

    static {
        PrimType primType = new PrimType("byte", "B", 1, Byte.TYPE);
        byteType = primType;
        PrimType primType2 = new PrimType("short", "S", 2, Short.TYPE);
        shortType = primType2;
        PrimType primType3 = new PrimType("int", "I", 4, Integer.TYPE);
        intType = primType3;
        PrimType primType4 = new PrimType("long", "J", 8, Long.TYPE);
        longType = primType4;
        PrimType primType5 = new PrimType(PropertyTypeConstants.PROPERTY_TYPE_FLOAT, "F", 4, Float.TYPE);
        floatType = primType5;
        PrimType primType6 = new PrimType("double", "D", 8, Double.TYPE);
        doubleType = primType6;
        PrimType primType7 = new PrimType(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN, "Z", 1, Boolean.TYPE);
        booleanType = primType7;
        PrimType primType8 = new PrimType("char", "C", 2, Character.TYPE);
        charType = primType8;
        PrimType primType9 = new PrimType("void", "V", 0, Void.TYPE);
        voidType = primType9;
        byte_type = primType;
        short_type = primType2;
        int_type = primType3;
        long_type = primType4;
        float_type = primType5;
        double_type = primType6;
        boolean_type = primType7;
        char_type = primType8;
        void_type = primType9;
        HashMap<String, Type> map = new HashMap<>();
        mapNameToType = map;
        map.put("byte", primType);
        mapNameToType.put("short", primType2);
        mapNameToType.put("int", primType3);
        mapNameToType.put("long", primType4);
        mapNameToType.put(PropertyTypeConstants.PROPERTY_TYPE_FLOAT, primType5);
        mapNameToType.put("double", primType6);
        mapNameToType.put(PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN, primType7);
        mapNameToType.put("char", primType8);
        mapNameToType.put("void", primType9);
        PrimType primType10 = new PrimType(primType9);
        neverReturnsType = primType10;
        primType10.this_name = "(never-returns)";
        nullType = new ObjectType("(type of null)");
        errorType = new ClassType("(error type)");
        javalangStringType = ClassType.make("java.lang.String");
        ClassType classType = new ClassType("java.lang.String");
        toStringType = classType;
        ClassType classTypeMake = ClassType.make("java.lang.Object");
        javalangObjectType = classTypeMake;
        objectType = classTypeMake;
        ClassType classTypeMake2 = ClassType.make("java.lang.Boolean");
        javalangBooleanType = classTypeMake2;
        ClassType classTypeMake3 = ClassType.make("java.lang.Throwable");
        javalangThrowableType = classTypeMake3;
        Type[] typeArr = new Type[0];
        typeArray0 = typeArr;
        toString_method = classTypeMake.getDeclaredMethod("toString", 0);
        ClassType classTypeMake4 = ClassType.make("java.lang.Number");
        javalangNumberType = classTypeMake4;
        clone_method = Method.makeCloneMethod(classTypeMake);
        intValue_method = classTypeMake4.addMethod("intValue", typeArr, primType3, 1);
        longValue_method = classTypeMake4.addMethod("longValue", typeArr, primType4, 1);
        floatValue_method = classTypeMake4.addMethod("floatValue", typeArr, primType5, 1);
        doubleValue_method = classTypeMake4.addMethod("doubleValue", typeArr, primType6, 1);
        booleanValue_method = classTypeMake2.addMethod("booleanValue", typeArr, primType7, 1);
        ClassType classTypeMake5 = ClassType.make("java.lang.Class");
        javalangClassType = classTypeMake5;
        pointer_type = classTypeMake;
        string_type = javalangStringType;
        tostring_type = classType;
        java_lang_Class_type = classTypeMake5;
        boolean_ctype = classTypeMake2;
        throwable_type = classTypeMake3;
        number_type = classTypeMake4;
    }

    public Class getReflectClass() {
        return this.reflectClass;
    }

    public void setReflectClass(Class cls) {
        this.reflectClass = cls;
    }

    public String toString() {
        return "Type " + getName();
    }

    public int hashCode() {
        String string = toString();
        if (string == null) {
            return 0;
        }
        return string.hashCode();
    }

    public static class ClassToTypeMap extends AbstractWeakHashTable<Class, Type> {
        public boolean matches(Class cls, Class cls2) {
            return cls == cls2;
        }

        @Override // gnu.kawa.util.AbstractWeakHashTable
        public Class getKeyFromValue(Type type) {
            return type.reflectClass;
        }
    }
}
