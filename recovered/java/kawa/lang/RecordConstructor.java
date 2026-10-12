package kawa.lang;

import gnu.bytecode.ClassType;
import gnu.bytecode.Field;
import gnu.bytecode.Type;
import gnu.mapping.ProcedureN;
import gnu.mapping.WrappedException;
import gnu.mapping.WrongArguments;

/* loaded from: classes2.dex */
public class RecordConstructor extends ProcedureN {
    Field[] fields;
    ClassType type;

    public RecordConstructor(ClassType classType, Field[] fieldArr) {
        this.type = classType;
        this.fields = fieldArr;
    }

    public RecordConstructor(Class cls, Field[] fieldArr) {
        this((ClassType) Type.make(cls), fieldArr);
    }

    public RecordConstructor(Class cls) {
        init((ClassType) Type.make(cls));
    }

    public RecordConstructor(ClassType classType) {
        init(classType);
    }

    private void init(ClassType classType) {
        this.type = classType;
        Field fields = classType.getFields();
        int i = 0;
        int i2 = 0;
        for (Field next = fields; next != null; next = next.getNext()) {
            if ((next.getModifiers() & 9) == 1) {
                i2++;
            }
        }
        this.fields = new Field[i2];
        while (fields != null) {
            if ((fields.getModifiers() & 9) == 1) {
                this.fields[i] = fields;
                i++;
            }
            fields = fields.getNext();
        }
    }

    public RecordConstructor(Class cls, Object obj) {
        this((ClassType) Type.make(cls), obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002d, code lost:
    
        r6.fields[r0] = r4;
        r8 = r8.getCdr();
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public RecordConstructor(gnu.bytecode.ClassType r7, java.lang.Object r8) {
        /*
            r6 = this;
            r6.<init>()
            r6.type = r7
            if (r8 != 0) goto Lb
            r6.init(r7)
            return
        Lb:
            r0 = 0
            int r1 = gnu.lists.LList.listLength(r8, r0)
            gnu.bytecode.Field[] r2 = new gnu.bytecode.Field[r1]
            r6.fields = r2
            gnu.bytecode.Field r2 = r7.getFields()
        L18:
            if (r0 >= r1) goto L56
            gnu.lists.Pair r8 = (gnu.lists.Pair) r8
            java.lang.Object r3 = r8.getCar()
            java.lang.String r3 = r3.toString()
            r4 = r2
        L25:
            if (r4 == 0) goto L3d
            java.lang.String r5 = r4.getSourceName()
            if (r5 != r3) goto L38
            gnu.bytecode.Field[] r3 = r6.fields
            r3[r0] = r4
            java.lang.Object r8 = r8.getCdr()
            int r0 = r0 + 1
            goto L18
        L38:
            gnu.bytecode.Field r4 = r4.getNext()
            goto L25
        L3d:
            java.lang.RuntimeException r8 = new java.lang.RuntimeException
            java.lang.String r0 = "no such field "
            java.lang.String r1 = " in "
            java.lang.StringBuilder r0 = _COROUTINE.a.r(r0, r3, r1)
            java.lang.String r7 = r7.getName()
            r0.append(r7)
            java.lang.String r7 = r0.toString()
            r8.<init>(r7)
            throw r8
        L56:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.lang.RecordConstructor.<init>(gnu.bytecode.ClassType, java.lang.Object):void");
    }

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        int length = this.fields.length;
        return length | (length << 12);
    }

    @Override // gnu.mapping.PropertySet, gnu.mapping.Named
    public String getName() {
        return this.type.getName() + " constructor";
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws IllegalAccessException, InstantiationException, IllegalArgumentException {
        try {
            Object objNewInstance = this.type.getReflectClass().newInstance();
            if (objArr.length != this.fields.length) {
                throw new WrongArguments(this, objArr.length);
            }
            for (int i = 0; i < objArr.length; i++) {
                Field field = this.fields[i];
                try {
                    field.getReflectField().set(objNewInstance, objArr[i]);
                } catch (Exception e) {
                    throw new WrappedException("illegal access for field " + field.getName(), e);
                }
            }
            return objNewInstance;
        } catch (IllegalAccessException e2) {
            throw new GenericError(e2.toString());
        } catch (InstantiationException e3) {
            throw new GenericError(e3.toString());
        }
    }
}
