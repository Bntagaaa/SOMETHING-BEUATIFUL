package kawa.lang;

import _COROUTINE.a;
import gnu.bytecode.ArrayClassLoader;
import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Method;
import gnu.bytecode.PrimType;
import gnu.bytecode.Type;
import gnu.expr.Compilation;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.Symbol;
import gnu.mapping.WrappedException;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.Vector;

/* loaded from: classes2.dex */
public class Record {
    public String getTypeName() {
        return getClass().getName();
    }

    public static boolean isRecord(Object obj) {
        return obj instanceof Record;
    }

    public int hashCode() throws IllegalAccessException, SecurityException, IllegalArgumentException {
        int iHashCode = 12345;
        for (Field field : getClass().getFields()) {
            try {
                Object obj = field.get(this);
                if (obj != null) {
                    iHashCode ^= obj.hashCode();
                }
            } catch (IllegalAccessException unused) {
            }
        }
        return iHashCode;
    }

    public static Field getField(Class cls, String str) throws NoSuchFieldException {
        for (gnu.bytecode.Field fields = ((ClassType) Type.make(cls)).getFields(); fields != null; fields = fields.getNext()) {
            if ((fields.getModifiers() & 9) == 1 && fields.getSourceName().equals(str)) {
                return fields.getReflectField();
            }
        }
        throw new NoSuchFieldException();
    }

    public Object get(String str, Object obj) {
        Class<?> cls = getClass();
        try {
            return getField(cls, str).get(this);
        } catch (IllegalAccessException unused) {
            throw new GenericError(a.i("illegal access for field ", str));
        } catch (NoSuchFieldException unused2) {
            StringBuilder sbR = a.r("no such field ", str, " in ");
            sbR.append(cls.getName());
            throw new GenericError(sbR.toString());
        }
    }

    public Object put(String str, Object obj) {
        return set1(this, str, obj);
    }

    public static Object set1(Object obj, String str, Object obj2) throws IllegalAccessException, IllegalArgumentException {
        Class<?> cls = obj.getClass();
        try {
            Field field = getField(cls, str);
            Object obj3 = field.get(obj);
            field.set(obj, obj2);
            return obj3;
        } catch (IllegalAccessException unused) {
            throw new GenericError(a.i("illegal access for field ", str));
        } catch (NoSuchFieldException unused2) {
            StringBuilder sbR = a.r("no such field ", str, " in ");
            sbR.append(cls.getName());
            throw new GenericError(sbR.toString());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        Class<?> cls = getClass();
        if (obj == null || obj.getClass() != cls) {
            return false;
        }
        for (gnu.bytecode.Field fields = ((ClassType) Type.make(cls)).getFields(); fields != null; fields = fields.getNext()) {
            if ((fields.getModifiers() & 9) == 1) {
                try {
                    Field reflectField = fields.getReflectField();
                    if (!reflectField.get(this).equals(reflectField.get(obj))) {
                        return false;
                    }
                } catch (Exception e) {
                    throw new WrappedException(e);
                }
            }
        }
        return true;
    }

    public String toString() throws IllegalAccessException, IllegalArgumentException {
        Object obj;
        StringBuffer stringBuffer = new StringBuffer(200);
        stringBuffer.append("#<");
        stringBuffer.append(getTypeName());
        for (gnu.bytecode.Field fields = ((ClassType) Type.make(getClass())).getFields(); fields != null; fields = fields.getNext()) {
            if ((fields.getModifiers() & 9) == 1) {
                try {
                    obj = fields.getReflectField().get(this);
                } catch (Exception unused) {
                    obj = "#<illegal-access>";
                }
                stringBuffer.append(' ');
                stringBuffer.append(fields.getSourceName());
                stringBuffer.append(": ");
                stringBuffer.append(obj);
            }
        }
        stringBuffer.append(">");
        return stringBuffer.toString();
    }

    public void print(PrintWriter printWriter) {
        printWriter.print(toString());
    }

    public static ClassType makeRecordType(String str, LList lList) {
        ClassType classTypeMake = ClassType.make("kawa.lang.Record");
        String strMangleNameIfNeeded = Compilation.mangleNameIfNeeded(str);
        ClassType classType = new ClassType(strMangleNameIfNeeded);
        classType.setSuper(classTypeMake);
        classType.setModifiers(33);
        Type[] typeArr = Type.typeArray0;
        PrimType primType = Type.voidType;
        Method methodAddMethod = classType.addMethod("<init>", typeArr, primType, 1);
        Method methodAddMethod2 = classTypeMake.addMethod("<init>", typeArr, primType, 1);
        CodeAttr codeAttrStartCode = methodAddMethod.startCode();
        codeAttrStartCode.emitPushThis();
        codeAttrStartCode.emitInvokeSpecial(methodAddMethod2);
        codeAttrStartCode.emitReturn();
        if (!str.equals(strMangleNameIfNeeded)) {
            CodeAttr codeAttrStartCode2 = classType.addMethod("getTypeName", typeArr, Compilation.typeString, 1).startCode();
            codeAttrStartCode2.emitPushString(str);
            codeAttrStartCode2.emitReturn();
        }
        while (lList != LList.Empty) {
            Pair pair = (Pair) lList;
            String string = pair.getCar().toString();
            classType.addField(Compilation.mangleNameIfNeeded(string), Type.pointer_type, 1).setSourceName(string.intern());
            lList = (LList) pair.getCdr();
        }
        try {
            Type.registerTypeForClass(new ArrayClassLoader(new String[]{strMangleNameIfNeeded}, new byte[][]{classType.writeToArray()}).loadClass(strMangleNameIfNeeded), classType);
            return classType;
        } catch (ClassNotFoundException e) {
            throw new InternalError(e.toString());
        }
    }

    public static LList typeFieldNames(Class cls) {
        LList pair = LList.Empty;
        Vector vector = new Vector(100);
        for (gnu.bytecode.Field fields = ((ClassType) Type.make(cls)).getFields(); fields != null; fields = fields.getNext()) {
            if ((fields.getModifiers() & 9) == 1) {
                vector.addElement(Symbol.valueOf(fields.getSourceName()));
            }
        }
        int size = vector.size();
        while (true) {
            size--;
            if (size < 0) {
                return pair;
            }
            pair = new Pair(vector.elementAt(size), pair);
        }
    }

    public static LList typeFieldNames(ClassType classType) {
        return typeFieldNames(classType.getReflectClass());
    }
}
