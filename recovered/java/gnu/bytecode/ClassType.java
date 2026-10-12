package gnu.bytecode;

import androidx.core.internal.view.SupportMenu;
import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.Externalizable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;
import java.io.OutputStream;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Vector;

/* loaded from: classes2.dex */
public class ClassType extends ObjectType implements AttrContainer, Externalizable, Member {
    public static final int JDK_1_1_VERSION = 2949123;
    public static final int JDK_1_2_VERSION = 3014656;
    public static final int JDK_1_3_VERSION = 3080192;
    public static final int JDK_1_4_VERSION = 3145728;
    public static final int JDK_1_5_VERSION = 3211264;
    public static final int JDK_1_6_VERSION = 3276800;
    public static final int JDK_1_7_VERSION = 3342336;
    public static final ClassType[] noClasses = new ClassType[0];
    int Code_name_index;
    int ConstantValue_name_index;
    int LineNumberTable_name_index;
    int LocalVariableTable_name_index;
    int access_flags;
    Attribute attributes;
    ConstantPool constants;
    public Method constructor;
    Member enclosingMember;
    Field fields;
    int fields_count;
    ClassType firstInnerClass;
    int[] interfaceIndexes;
    ClassType[] interfaces;
    Field last_field;
    Method last_method;
    Method methods;
    int methods_count;
    ClassType nextInnerClass;
    SourceDebugExtAttr sourceDbgExt;
    ClassType superClass;
    int thisClassIndex;
    int classfileFormatVersion = JDK_1_1_VERSION;
    int superClassIndex = -1;
    boolean emitDebugInfo = true;

    public short getClassfileMajorVersion() {
        return (short) (this.classfileFormatVersion >> 16);
    }

    public short getClassfileMinorVersion() {
        return (short) (this.classfileFormatVersion & SupportMenu.USER_MASK);
    }

    public void setClassfileVersion(int i, int i2) {
        this.classfileFormatVersion = (i2 * SupportMenu.USER_MASK) + ((i & SupportMenu.USER_MASK) * 65536);
    }

    public void setClassfileVersion(int i) {
        this.classfileFormatVersion = i;
    }

    public int getClassfileVersion() {
        return this.classfileFormatVersion;
    }

    public void setClassfileVersionJava5() {
        setClassfileVersion(JDK_1_5_VERSION);
    }

    public static ClassType make(String str) {
        return (ClassType) Type.getType(str);
    }

    public static ClassType make(String str, ClassType classType) {
        ClassType classTypeMake = make(str);
        if (classTypeMake.superClass == null) {
            classTypeMake.setSuper(classType);
        }
        return classTypeMake;
    }

    @Override // gnu.bytecode.AttrContainer
    public final Attribute getAttributes() {
        return this.attributes;
    }

    @Override // gnu.bytecode.AttrContainer
    public final void setAttributes(Attribute attribute) {
        this.attributes = attribute;
    }

    public final ConstantPool getConstants() {
        return this.constants;
    }

    public final CpoolEntry getConstant(int i) {
        CpoolEntry[] cpoolEntryArr;
        ConstantPool constantPool = this.constants;
        if (constantPool == null || (cpoolEntryArr = constantPool.pool) == null || i > constantPool.count) {
            return null;
        }
        return cpoolEntryArr[i];
    }

    @Override // gnu.bytecode.Member
    public final synchronized int getModifiers() {
        try {
            if (this.access_flags == 0 && (this.flags & 16) != 0 && getReflectClass() != null) {
                this.access_flags = this.reflectClass.getModifiers();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.access_flags;
    }

    @Override // gnu.bytecode.Member
    public final boolean getStaticFlag() {
        return (getModifiers() & 8) != 0;
    }

    public final void setModifiers(int i) {
        this.access_flags = i;
    }

    public final void addModifiers(int i) {
        this.access_flags = i | this.access_flags;
    }

    public synchronized String getSimpleName() {
        char cCharAt;
        if ((this.flags & 16) != 0 && getReflectClass() != null) {
            try {
                return this.reflectClass.getSimpleName();
            } catch (Throwable unused) {
            }
        }
        String name = getName();
        int iLastIndexOf = name.lastIndexOf(46);
        if (iLastIndexOf > 0) {
            name = name.substring(iLastIndexOf + 1);
        }
        int iLastIndexOf2 = name.lastIndexOf(36);
        if (iLastIndexOf2 >= 0) {
            int length = name.length();
            do {
                iLastIndexOf2++;
                if (iLastIndexOf2 >= length || (cCharAt = name.charAt(iLastIndexOf2)) < '0') {
                    break;
                }
            } while (cCharAt <= '9');
            name = name.substring(iLastIndexOf2);
        }
        return name;
    }

    public void addMemberClass(ClassType classType) {
        ClassType classType2 = null;
        for (ClassType classType3 = this.firstInnerClass; classType3 != null; classType3 = classType3.nextInnerClass) {
            if (classType3 == classType) {
                return;
            }
            classType2 = classType3;
        }
        if (classType2 == null) {
            this.firstInnerClass = classType;
        } else {
            classType2.nextInnerClass = classType;
        }
    }

    public ClassType getDeclaredClass(String str) {
        addMemberClasses();
        for (ClassType classType = this.firstInnerClass; classType != null; classType = classType.nextInnerClass) {
            if (str.equals(classType.getSimpleName())) {
                return classType;
            }
        }
        return null;
    }

    @Override // gnu.bytecode.Member
    public ClassType getDeclaringClass() {
        addEnclosingMember();
        Member member = this.enclosingMember;
        if (member instanceof ClassType) {
            return (ClassType) member;
        }
        return null;
    }

    public Member getEnclosingMember() {
        addEnclosingMember();
        return this.enclosingMember;
    }

    public void setEnclosingMember(Member member) {
        this.enclosingMember = member;
    }

    public synchronized void addEnclosingMember() {
        if ((this.flags & 24) != 16) {
            return;
        }
        Class reflectClass = getReflectClass();
        this.flags |= 8;
        Class<?> enclosingClass = reflectClass.getEnclosingClass();
        if (enclosingClass == null) {
            return;
        }
        if (!reflectClass.isMemberClass()) {
            java.lang.reflect.Method enclosingMethod = reflectClass.getEnclosingMethod();
            if (enclosingMethod != null) {
                this.enclosingMember = addMethod(enclosingMethod);
                return;
            }
            Constructor<?> enclosingConstructor = reflectClass.getEnclosingConstructor();
            if (enclosingConstructor != null) {
                this.enclosingMember = addMethod(enclosingConstructor);
                return;
            }
        }
        this.enclosingMember = (ClassType) Type.make(enclosingClass);
    }

    public synchronized void addMemberClasses() {
        if ((this.flags & 20) != 16) {
            return;
        }
        Class reflectClass = getReflectClass();
        this.flags |= 4;
        Class<?>[] classes = reflectClass.getClasses();
        if (classes.length > 0) {
            for (Class<?> cls : classes) {
                addMemberClass((ClassType) Type.make(cls));
            }
        }
    }

    public final boolean hasOuterLink() {
        getFields();
        return (this.flags & 32) != 0;
    }

    public ClassType getOuterLinkType() {
        if (hasOuterLink()) {
            return (ClassType) getDeclaredField("this$0").getType();
        }
        return null;
    }

    public final Field setOuterLink(ClassType classType) {
        if ((this.flags & 16) != 0) {
            throw new Error("setOuterLink called for existing class " + getName());
        }
        Field declaredField = getDeclaredField("this$0");
        if (declaredField == null) {
            Field fieldAddField = addField("this$0", classType);
            this.flags |= 32;
            for (Method next = this.methods; next != null; next = next.getNext()) {
                if ("<init>".equals(next.getName())) {
                    if (next.code != null) {
                        throw new Error("setOuterLink called when " + next + " has code");
                    }
                    Type[] typeArr = next.arg_types;
                    Type[] typeArr2 = new Type[typeArr.length + 1];
                    System.arraycopy(typeArr, 0, typeArr2, 1, typeArr.length);
                    typeArr2[0] = classType;
                    next.arg_types = typeArr2;
                    next.signature = null;
                }
            }
            return fieldAddField;
        }
        if (classType.equals(declaredField.getType())) {
            return declaredField;
        }
        throw new Error("inconsistent setOuterLink call for " + getName());
    }

    public boolean isAccessible(Member member, ObjectType objectType) {
        if (member.getStaticFlag()) {
            objectType = null;
        }
        return isAccessible(member.getDeclaringClass(), objectType, member.getModifiers());
    }

    public boolean isAccessible(ClassType classType, ObjectType objectType, int i) {
        int modifiers = classType.getModifiers();
        if ((i & 1) != 0 && (modifiers & 1) != 0) {
            return true;
        }
        String name = getName();
        String name2 = classType.getName();
        if (name.equals(name2)) {
            return true;
        }
        if ((i & 2) != 0) {
            return false;
        }
        int iLastIndexOf = name.lastIndexOf(46);
        String strSubstring = "";
        String strSubstring2 = iLastIndexOf >= 0 ? name.substring(0, iLastIndexOf) : "";
        int iLastIndexOf2 = name2.lastIndexOf(46);
        if (iLastIndexOf2 >= 0) {
            strSubstring = name2.substring(0, iLastIndexOf2);
        }
        if (strSubstring2.equals(strSubstring)) {
            return true;
        }
        return (modifiers & 1) != 0 && (i & 4) != 0 && isSubclass(classType) && (!(objectType instanceof ClassType) || ((ClassType) objectType).isSubclass(this));
    }

    @Override // gnu.bytecode.Type, gnu.bytecode.Member
    public void setName(String str) {
        this.this_name = str;
        setSignature("L" + str.replace('.', '/') + ";");
    }

    public void setStratum(String str) {
        if (this.sourceDbgExt == null) {
            this.sourceDbgExt = new SourceDebugExtAttr(this);
        }
        this.sourceDbgExt.addStratum(str);
    }

    public void setSourceFile(String str) {
        SourceDebugExtAttr sourceDebugExtAttr = this.sourceDbgExt;
        if (sourceDebugExtAttr != null) {
            sourceDebugExtAttr.addFile(str);
            if (this.sourceDbgExt.fileCount > 1) {
                return;
            }
        }
        String strFixSourceFile = SourceFileAttr.fixSourceFile(str);
        int iLastIndexOf = strFixSourceFile.lastIndexOf(47);
        if (iLastIndexOf >= 0) {
            strFixSourceFile = strFixSourceFile.substring(iLastIndexOf + 1);
        }
        SourceFileAttr.setSourceFile(this, strFixSourceFile);
    }

    public void setSuper(String str) {
        setSuper(str == null ? Type.pointer_type : make(str));
    }

    public void setSuper(ClassType classType) {
        this.superClass = classType;
    }

    public synchronized ClassType getSuperclass() {
        try {
            if (this.superClass == null && !isInterface() && !"java.lang.Object".equals(getName()) && (this.flags & 16) != 0 && getReflectClass() != null) {
                this.superClass = (ClassType) Type.make(this.reflectClass.getSuperclass());
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.superClass;
    }

    public String getPackageName() {
        String name = getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf < 0 ? "" : name.substring(0, iLastIndexOf);
    }

    public synchronized ClassType[] getInterfaces() {
        try {
            if (this.interfaces == null && (this.flags & 16) != 0 && getReflectClass() != null) {
                Class<?>[] interfaces = this.reflectClass.getInterfaces();
                int length = interfaces.length;
                this.interfaces = length == 0 ? noClasses : new ClassType[length];
                for (int i = 0; i < length; i++) {
                    this.interfaces[i] = (ClassType) Type.make(interfaces[i]);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.interfaces;
    }

    public void setInterfaces(ClassType[] classTypeArr) {
        this.interfaces = classTypeArr;
    }

    public void addInterface(ClassType classType) {
        ClassType[] classTypeArr = this.interfaces;
        int i = 0;
        if (classTypeArr == null || classTypeArr.length == 0) {
            this.interfaces = new ClassType[1];
        } else {
            int length = classTypeArr.length;
            int i2 = length;
            do {
                i2--;
                if (i2 < 0) {
                    ClassType[] classTypeArr2 = new ClassType[length + 1];
                    System.arraycopy(this.interfaces, 0, classTypeArr2, 0, length);
                    this.interfaces = classTypeArr2;
                    i = length;
                }
            } while (this.interfaces[i2] != classType);
            return;
        }
        this.interfaces[i] = classType;
    }

    public final boolean isInterface() {
        return (getModifiers() & 512) != 0;
    }

    public final void setInterface(boolean z) {
        if (z) {
            this.access_flags |= 1536;
        } else {
            this.access_flags &= -513;
        }
    }

    public ClassType() {
    }

    public ClassType(String str) {
        setName(str);
    }

    public final synchronized Field getFields() {
        try {
            if ((this.flags & 17) == 16) {
                addFields();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.fields;
    }

    public final int getFieldCount() {
        return this.fields_count;
    }

    public Field getDeclaredField(String str) {
        for (Field fields = getFields(); fields != null; fields = fields.next) {
            if (str.equals(fields.name)) {
                return fields;
            }
        }
        return null;
    }

    @Override // gnu.bytecode.ObjectType
    public synchronized Field getField(String str, int i) {
        ClassType superclass = this;
        do {
            Field declaredField = superclass.getDeclaredField(str);
            if (declaredField != null && (i == -1 || (declaredField.getModifiers() & i) != 0)) {
                return declaredField;
            }
            ClassType[] interfaces = superclass.getInterfaces();
            if (interfaces != null) {
                for (ClassType classType : interfaces) {
                    Field field = classType.getField(str, i);
                    if (field != null) {
                        return field;
                    }
                }
            }
            superclass = superclass.getSuperclass();
        } while (superclass != null);
        return null;
    }

    public Field getField(String str) {
        return getField(str, 1);
    }

    public Field addField() {
        return new Field(this);
    }

    public Field addField(String str) {
        Field field = new Field(this);
        field.setName(str);
        return field;
    }

    public final Field addField(String str, Type type) {
        Field field = new Field(this);
        field.setName(str);
        field.setType(type);
        return field;
    }

    public final Field addField(String str, Type type, int i) {
        Field fieldAddField = addField(str, type);
        fieldAddField.flags = i;
        return fieldAddField;
    }

    public synchronized void addFields() {
        java.lang.reflect.Field[] fields;
        Class reflectClass = getReflectClass();
        try {
            fields = reflectClass.getDeclaredFields();
        } catch (SecurityException unused) {
            fields = reflectClass.getFields();
        }
        for (java.lang.reflect.Field field : fields) {
            if ("this$0".equals(field.getName())) {
                this.flags |= 32;
            }
            addField(field.getName(), Type.make(field.getType()), field.getModifiers());
        }
        this.flags |= 1;
    }

    public final Method getMethods() {
        return this.methods;
    }

    public final int getMethodCount() {
        return this.methods_count;
    }

    public Method addMethod() {
        return new Method(this, 0);
    }

    public Method addMethod(String str) {
        return addMethod(str, 0);
    }

    public Method addMethod(String str, int i) {
        Method method = new Method(this, i);
        method.setName(str);
        return method;
    }

    public Method addMethod(String str, Type[] typeArr, Type type, int i) {
        return addMethod(str, i, typeArr, type);
    }

    public synchronized Method addMethod(String str, int i, Type[] typeArr, Type type) {
        Method declaredMethod = getDeclaredMethod(str, typeArr);
        if (declaredMethod != null && type.equals(declaredMethod.getReturnType()) && (declaredMethod.access_flags & i) == i) {
            return declaredMethod;
        }
        Method methodAddMethod = addMethod(str, i);
        methodAddMethod.arg_types = typeArr;
        methodAddMethod.return_type = type;
        return methodAddMethod;
    }

    public Method addMethod(java.lang.reflect.Method method) {
        int modifiers = method.getModifiers();
        Class<?>[] parameterTypes = method.getParameterTypes();
        int length = parameterTypes.length;
        Type[] typeArr = new Type[length];
        while (true) {
            length--;
            if (length >= 0) {
                typeArr[length] = Type.make(parameterTypes[length]);
            } else {
                return addMethod(method.getName(), modifiers, typeArr, Type.make(method.getReturnType()));
            }
        }
    }

    public Method addMethod(Constructor constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        int modifiers = constructor.getModifiers();
        int length = parameterTypes.length;
        Type[] typeArr = new Type[length];
        while (true) {
            length--;
            if (length >= 0) {
                typeArr[length] = Type.make(parameterTypes[length]);
            } else {
                return addMethod("<init>", modifiers, typeArr, Type.voidType);
            }
        }
    }

    public Method addMethod(String str, String str2, int i) {
        Method methodAddMethod = addMethod(str, i);
        methodAddMethod.setSignature(str2);
        return methodAddMethod;
    }

    public Method getMethod(java.lang.reflect.Method method) {
        String name = method.getName();
        Class<?>[] parameterTypes = method.getParameterTypes();
        Type[] typeArr = new Type[parameterTypes.length];
        int length = parameterTypes.length;
        while (true) {
            length--;
            if (length >= 0) {
                typeArr[length] = Type.make(parameterTypes[length]);
            } else {
                return addMethod(name, method.getModifiers(), typeArr, Type.make(method.getReturnType()));
            }
        }
    }

    public final synchronized Method getDeclaredMethods() {
        try {
            if ((this.flags & 18) == 16) {
                addMethods(getReflectClass());
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.methods;
    }

    public final int countMethods(Filter filter, int i) {
        Vector vector = new Vector();
        getMethods(filter, i, vector);
        return vector.size();
    }

    public Method[] getMethods(Filter filter, boolean z) {
        return getMethods(filter, z ? 1 : 0);
    }

    public Method[] getMethods(Filter filter, int i) {
        Vector vector = new Vector();
        getMethods(filter, i, vector);
        int size = vector.size();
        Method[] methodArr = new Method[size];
        for (int i2 = 0; i2 < size; i2++) {
            methodArr[i2] = (Method) vector.elementAt(i2);
        }
        return methodArr;
    }

    public int getMethods(Filter filter, int i, Method[] methodArr, int i2) {
        Vector vector = new Vector();
        getMethods(filter, i, vector);
        int size = vector.size();
        for (int i3 = 0; i3 < size; i3++) {
            methodArr[i2 + i3] = (Method) vector.elementAt(i3);
        }
        return size;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
    @Override // gnu.bytecode.ObjectType
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getMethods(gnu.bytecode.Filter r9, int r10, java.util.List<gnu.bytecode.Method> r11) {
        /*
            r8 = this;
            r0 = 0
            r1 = 0
            r3 = 0
            r2 = r8
        L4:
            if (r2 == 0) goto L58
            java.lang.String r4 = r2.getPackageName()
            gnu.bytecode.Method r5 = r2.getDeclaredMethods()
        Le:
            if (r5 == 0) goto L38
            if (r2 == r8) goto L26
            int r6 = r5.getModifiers()
            r7 = r6 & 2
            if (r7 == 0) goto L1b
            goto L33
        L1b:
            r6 = r6 & 5
            if (r6 != 0) goto L26
            boolean r6 = r4.equals(r1)
            if (r6 != 0) goto L26
            goto L33
        L26:
            boolean r6 = r9.select(r5)
            if (r6 == 0) goto L33
            if (r11 == 0) goto L31
            r11.add(r5)
        L31:
            int r3 = r3 + 1
        L33:
            gnu.bytecode.Method r5 = r5.getNext()
            goto Le
        L38:
            if (r10 != 0) goto L3b
            return r3
        L3b:
            r1 = 1
            if (r10 <= r1) goto L52
            gnu.bytecode.ClassType[] r1 = r2.getInterfaces()
            if (r1 == 0) goto L52
            r5 = 0
        L45:
            int r6 = r1.length
            if (r5 >= r6) goto L52
            r6 = r1[r5]
            int r6 = r6.getMethods(r9, r10, r11)
            int r3 = r3 + r6
            int r5 = r5 + 1
            goto L45
        L52:
            gnu.bytecode.ClassType r2 = r2.getSuperclass()
            r1 = r4
            goto L4
        L58:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.bytecode.ClassType.getMethods(gnu.bytecode.Filter, int, java.util.List):int");
    }

    public static class AbstractMethodFilter implements Filter {
        public static final AbstractMethodFilter instance = new AbstractMethodFilter();

        @Override // gnu.bytecode.Filter
        public boolean select(Object obj) {
            return ((Method) obj).isAbstract();
        }
    }

    public Method[] getAbstractMethods() {
        return getMethods(AbstractMethodFilter.instance, 2);
    }

    public Method getDeclaredMethod(String str, Type[] typeArr) {
        Type type;
        Type type2;
        int i = ("<init>".equals(str) && hasOuterLink()) ? 1 : 0;
        for (Method declaredMethods = getDeclaredMethods(); declaredMethods != null; declaredMethods = declaredMethods.next) {
            if (str.equals(declaredMethods.getName())) {
                Type[] parameterTypes = declaredMethods.getParameterTypes();
                if (typeArr != null && (typeArr != parameterTypes || i != 0)) {
                    int length = typeArr.length;
                    if (length != parameterTypes.length - i) {
                        continue;
                    } else {
                        while (true) {
                            length--;
                            if (length < 0 || ((type = parameterTypes[length + i]) != (type2 = typeArr[length]) && type2 != null && !type.getSignature().equals(type2.getSignature()))) {
                                break;
                            }
                        }
                        if (length < 0) {
                        }
                    }
                }
                return declaredMethods;
            }
        }
        return null;
    }

    public synchronized Method getDeclaredMethod(String str, int i) {
        Method method;
        try {
            int i2 = ("<init>".equals(str) && hasOuterLink()) ? 1 : 0;
            method = null;
            for (Method declaredMethods = getDeclaredMethods(); declaredMethods != null; declaredMethods = declaredMethods.next) {
                if (str.equals(declaredMethods.getName()) && i + i2 == declaredMethods.getParameterTypes().length) {
                    if (method != null) {
                        throw new Error("ambiguous call to getDeclaredMethod(\"" + str + "\", " + i + ")\n - " + method + "\n - " + declaredMethods);
                    }
                    method = declaredMethods;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return method;
    }

    @Override // gnu.bytecode.ObjectType
    public synchronized Method getMethod(String str, Type[] typeArr) {
        ClassType superclass = this;
        do {
            Method declaredMethod = superclass.getDeclaredMethod(str, typeArr);
            if (declaredMethod != null) {
                return declaredMethod;
            }
            superclass = superclass.getSuperclass();
        } while (superclass != null);
        ClassType superclass2 = this;
        do {
            ClassType[] interfaces = superclass2.getInterfaces();
            if (interfaces != null) {
                for (ClassType classType : interfaces) {
                    Method declaredMethod2 = classType.getDeclaredMethod(str, typeArr);
                    if (declaredMethod2 != null) {
                        return declaredMethod2;
                    }
                }
            }
            superclass2 = superclass2.getSuperclass();
        } while (superclass2 != null);
        return null;
    }

    public synchronized void addMethods(Class cls) {
        java.lang.reflect.Method[] methods;
        Constructor<?>[] constructors;
        this.flags |= 2;
        try {
            methods = cls.getDeclaredMethods();
        } catch (SecurityException unused) {
            methods = cls.getMethods();
        }
        for (java.lang.reflect.Method method : methods) {
            if (method.getDeclaringClass().equals(cls)) {
                addMethod(method);
            }
        }
        try {
            constructors = cls.getDeclaredConstructors();
        } catch (SecurityException unused2) {
            constructors = cls.getConstructors();
        }
        for (Constructor<?> constructor : constructors) {
            if (constructor.getDeclaringClass().equals(cls)) {
                addMethod(constructor);
            }
        }
    }

    public Method[] getMatchingMethods(String str, Type[] typeArr, int i) {
        Vector vector = new Vector(10);
        int i2 = 0;
        for (Method next = this.methods; next != null; next = next.getNext()) {
            if (str.equals(next.getName())) {
                int i3 = i & 8;
                int i4 = next.access_flags;
                if (i3 == (i4 & 8) && (i & 1) <= (i4 & 1) && next.arg_types.length == typeArr.length) {
                    i2++;
                    vector.addElement(next);
                }
            }
        }
        Method[] methodArr = new Method[i2];
        vector.copyInto(methodArr);
        return methodArr;
    }

    public void doFixups() {
        if (this.constants == null) {
            this.constants = new ConstantPool();
        }
        if (this.thisClassIndex == 0) {
            this.thisClassIndex = this.constants.addClass(this).index;
        }
        if (this.superClass == this) {
            setSuper((ClassType) null);
        }
        if (this.superClassIndex < 0) {
            ClassType classType = this.superClass;
            this.superClassIndex = classType == null ? 0 : this.constants.addClass(classType).index;
        }
        ClassType[] classTypeArr = this.interfaces;
        if (classTypeArr != null && this.interfaceIndexes == null) {
            int length = classTypeArr.length;
            this.interfaceIndexes = new int[length];
            for (int i = 0; i < length; i++) {
                this.interfaceIndexes[i] = this.constants.addClass(this.interfaces[i]).index;
            }
        }
        for (Field field = this.fields; field != null; field = field.next) {
            field.assign_constants(this);
        }
        for (Method method = this.methods; method != null; method = method.next) {
            method.assignConstants();
        }
        Member member = this.enclosingMember;
        if (member instanceof Method) {
            EnclosingMethodAttr firstEnclosingMethod = EnclosingMethodAttr.getFirstEnclosingMethod(getAttributes());
            if (firstEnclosingMethod == null) {
                firstEnclosingMethod = new EnclosingMethodAttr(this);
            }
            firstEnclosingMethod.method = (Method) this.enclosingMember;
        } else if (member instanceof ClassType) {
            this.constants.addClass((ClassType) member);
        }
        for (ClassType classType2 = this.firstInnerClass; classType2 != null; classType2 = classType2.nextInnerClass) {
            this.constants.addClass(classType2);
        }
        InnerClassesAttr firstInnerClasses = InnerClassesAttr.getFirstInnerClasses(getAttributes());
        int i2 = 1;
        if (firstInnerClasses != null) {
            firstInnerClasses.setSkipped(true);
        }
        Attribute.assignConstants(this, this);
        while (true) {
            ConstantPool constantPool = this.constants;
            if (i2 > constantPool.count) {
                break;
            }
            CpoolEntry cpoolEntry = constantPool.pool[i2];
            if (cpoolEntry instanceof CpoolClass) {
                CpoolClass cpoolClass = (CpoolClass) cpoolEntry;
                ObjectType objectType = cpoolClass.clas;
                if ((objectType instanceof ClassType) && ((ClassType) objectType).getEnclosingMember() != null) {
                    if (firstInnerClasses == null) {
                        firstInnerClasses = new InnerClassesAttr(this);
                    }
                    firstInnerClasses.addClass(cpoolClass, this);
                }
            }
            i2++;
        }
        if (firstInnerClasses != null) {
            firstInnerClasses.setSkipped(false);
            firstInnerClasses.assignConstants(this);
        }
    }

    public void writeToStream(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        doFixups();
        dataOutputStream.writeInt(-889275714);
        dataOutputStream.writeShort(getClassfileMinorVersion());
        dataOutputStream.writeShort(getClassfileMajorVersion());
        ConstantPool constantPool = this.constants;
        if (constantPool == null) {
            dataOutputStream.writeShort(1);
        } else {
            constantPool.write(dataOutputStream);
        }
        dataOutputStream.writeShort(this.access_flags);
        dataOutputStream.writeShort(this.thisClassIndex);
        dataOutputStream.writeShort(this.superClassIndex);
        int[] iArr = this.interfaceIndexes;
        if (iArr == null) {
            dataOutputStream.writeShort(0);
        } else {
            int length = iArr.length;
            dataOutputStream.writeShort(length);
            for (int i = 0; i < length; i++) {
                dataOutputStream.writeShort(this.interfaceIndexes[i]);
            }
        }
        dataOutputStream.writeShort(this.fields_count);
        for (Field field = this.fields; field != null; field = field.next) {
            field.write(dataOutputStream, this);
        }
        dataOutputStream.writeShort(this.methods_count);
        for (Method method = this.methods; method != null; method = method.next) {
            method.write(dataOutputStream, this);
        }
        Attribute.writeAll(this, dataOutputStream);
        this.flags |= 3;
    }

    public void writeToFile(String str) throws IOException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str));
        writeToStream(bufferedOutputStream);
        bufferedOutputStream.close();
    }

    public void writeToFile() throws IOException {
        writeToFile(this.this_name.replace('.', File.separatorChar) + ".class");
    }

    public byte[] writeToArray() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(500);
        try {
            writeToStream(byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new InternalError(e.toString());
        }
    }

    public static byte[] to_utf8(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            i = (cCharAt <= 0 || cCharAt > 127) ? cCharAt <= 2047 ? i + 2 : i + 3 : i + 1;
        }
        byte[] bArr = new byte[i];
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            char cCharAt2 = str.charAt(i4);
            if (cCharAt2 > 0 && cCharAt2 <= 127) {
                bArr[i3] = (byte) cCharAt2;
                i3++;
            } else if (cCharAt2 <= 2047) {
                int i5 = i3 + 1;
                bArr[i3] = (byte) (((cCharAt2 >> 6) & 31) | FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE);
                i3 += 2;
                bArr[i5] = (byte) ((cCharAt2 & '?') | 128);
            } else {
                bArr[i3] = (byte) (((cCharAt2 >> '\f') & 15) | 224);
                int i6 = i3 + 2;
                bArr[i3 + 1] = (byte) (((cCharAt2 >> 6) & 63) | 128);
                i3 += 3;
                bArr[i6] = (byte) ((cCharAt2 & '?') | 128);
            }
        }
        return bArr;
    }

    public final boolean implementsInterface(ClassType classType) {
        if (this == classType) {
            return true;
        }
        ClassType superclass = getSuperclass();
        if (superclass != null && superclass.implementsInterface(classType)) {
            return true;
        }
        ClassType[] interfaces = getInterfaces();
        if (interfaces == null) {
            return false;
        }
        int length = interfaces.length;
        do {
            length--;
            if (length < 0) {
                return false;
            }
        } while (!interfaces[length].implementsInterface(classType));
        return true;
    }

    public final boolean isSubclass(String str) {
        ClassType superclass = this;
        while (!str.equals(superclass.getName())) {
            superclass = superclass.getSuperclass();
            if (superclass == null) {
                return false;
            }
        }
        return true;
    }

    public final boolean isSubclass(ClassType classType) {
        if (classType.isInterface()) {
            return implementsInterface(classType);
        }
        ClassType classType2 = Type.toStringType;
        if ((this == classType2 && classType == Type.javalangStringType) || (this == Type.javalangStringType && classType == classType2)) {
            return true;
        }
        for (ClassType superclass = this; superclass != null; superclass = superclass.getSuperclass()) {
            if (superclass == classType) {
                return true;
            }
        }
        return false;
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public int compare(Type type) {
        if (type == Type.nullType) {
            return 1;
        }
        if (!(type instanceof ClassType)) {
            return Type.swappedCompareResult(type.compare(this));
        }
        String name = getName();
        if (name != null && name.equals(type.getName())) {
            return 0;
        }
        ClassType classType = (ClassType) type;
        if (isSubclass(classType)) {
            return -1;
        }
        if (classType.isSubclass(this)) {
            return 1;
        }
        ClassType classType2 = Type.toStringType;
        if (this == classType2) {
            return classType == Type.javalangObjectType ? -1 : 1;
        }
        if (classType == classType2) {
            return this == Type.javalangObjectType ? 1 : -1;
        }
        if (isInterface()) {
            return classType == Type.javalangObjectType ? -1 : -2;
        }
        if (classType.isInterface()) {
            return this == Type.javalangObjectType ? 1 : -2;
        }
        return -3;
    }

    @Override // gnu.bytecode.Type
    public String toString() {
        return "ClassType " + getName();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeUTF(getName());
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        setName(objectInput.readUTF());
        this.flags |= 16;
    }

    public Object readResolve() throws ObjectStreamException {
        String name = getName();
        HashMap<String, Type> map = Type.mapNameToType;
        synchronized (map) {
            try {
                Type type = map.get(name);
                if (type != null) {
                    return type;
                }
                map.put(name, this);
                return this;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void cleanupAfterCompilation() {
        for (Method next = this.methods; next != null; next = next.getNext()) {
            next.cleanupAfterCompilation();
        }
        this.constants = null;
        this.attributes = null;
        this.sourceDbgExt = null;
    }

    public Method checkSingleAbstractMethod() {
        Method method = null;
        for (Method method2 : getAbstractMethods()) {
            Method method3 = getMethod(method2.getName(), method2.getParameterTypes());
            if (method3 == null || method3.isAbstract()) {
                if (method != null) {
                    return null;
                }
                method = method2;
            }
        }
        return method;
    }
}
