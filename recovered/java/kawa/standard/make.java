package kawa.standard;

import gnu.bytecode.ClassType;
import gnu.expr.Keyword;
import gnu.mapping.ProcedureN;
import gnu.mapping.WrappedException;
import gnu.mapping.WrongArguments;
import gnu.mapping.WrongType;
import kawa.lang.Record;

/* loaded from: classes2.dex */
public class make extends ProcedureN {
    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return -4095;
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws IllegalAccessException, InstantiationException, IllegalArgumentException {
        Class reflectClass;
        int length = objArr.length;
        if (length == 0) {
            throw new WrongArguments(this, length);
        }
        Object obj = objArr[0];
        if (obj instanceof Class) {
            reflectClass = (Class) obj;
        } else {
            reflectClass = obj instanceof ClassType ? ((ClassType) obj).getReflectClass() : null;
        }
        int i = 1;
        if (reflectClass == null) {
            throw new WrongType(this, 1, obj, "class");
        }
        try {
            Object objNewInstance = reflectClass.newInstance();
            while (i < length) {
                int i2 = i + 1;
                Keyword keyword = (Keyword) objArr[i];
                i += 2;
                Record.set1(objArr[i2], keyword.getName(), objNewInstance);
            }
            return objNewInstance;
        } catch (Exception e) {
            throw new WrappedException(e);
        }
    }
}
