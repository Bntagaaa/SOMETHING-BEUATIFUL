package gnu.kawa.reflect;

import gnu.bytecode.ClassType;
import gnu.bytecode.Filter;
import gnu.bytecode.Method;
import gnu.bytecode.ObjectType;

/* loaded from: classes2.dex */
class MethodFilter implements Filter {
    ClassType caller;
    int modifiers;
    int modmask;
    String name;
    int nlen;
    ObjectType receiver;

    public MethodFilter(String str, int i, int i2, ClassType classType, ObjectType objectType) {
        this.name = str;
        this.nlen = str.length();
        this.modifiers = i;
        this.modmask = i2;
        this.caller = classType;
        this.receiver = objectType;
    }

    @Override // gnu.bytecode.Filter
    public boolean select(Object obj) {
        char cCharAt;
        Method method = (Method) obj;
        String name = method.getName();
        int modifiers = method.getModifiers();
        if ((this.modmask & modifiers) != this.modifiers || (modifiers & 4096) != 0 || !name.startsWith(this.name)) {
            return false;
        }
        int length = name.length();
        int i = this.nlen;
        if (length != i && ((length != i + 2 || name.charAt(i) != '$' || ((cCharAt = name.charAt(this.nlen + 1)) != 'V' && cCharAt != 'X')) && (length != this.nlen + 4 || !name.endsWith("$V$X")))) {
            return false;
        }
        ObjectType objectType = this.receiver;
        ClassType declaringClass = objectType instanceof ClassType ? (ClassType) objectType : method.getDeclaringClass();
        ClassType classType = this.caller;
        return classType == null || classType.isAccessible(declaringClass, this.receiver, method.getModifiers());
    }
}
