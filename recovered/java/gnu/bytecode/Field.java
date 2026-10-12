package gnu.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public class Field extends Location implements AttrContainer, Member {
    Attribute attributes;
    int flags;
    Field next;
    ClassType owner;
    java.lang.reflect.Field rfield;
    String sourceName;

    @Override // gnu.bytecode.AttrContainer
    public final Attribute getAttributes() {
        return this.attributes;
    }

    @Override // gnu.bytecode.AttrContainer
    public final void setAttributes(Attribute attribute) {
        this.attributes = attribute;
    }

    public Field(ClassType classType) {
        Field field = classType.last_field;
        if (field == null) {
            classType.fields = this;
        } else {
            field.next = this;
        }
        classType.last_field = this;
        classType.fields_count++;
        this.owner = classType;
    }

    @Override // gnu.bytecode.Member
    public final ClassType getDeclaringClass() {
        return this.owner;
    }

    public final void setStaticFlag(boolean z) {
        if (z) {
            this.flags |= 8;
        } else {
            this.flags ^= -9;
        }
    }

    @Override // gnu.bytecode.Member
    public final boolean getStaticFlag() {
        return (this.flags & 8) != 0;
    }

    public final int getFlags() {
        return this.flags;
    }

    @Override // gnu.bytecode.Member
    public final int getModifiers() {
        return this.flags;
    }

    public void write(DataOutputStream dataOutputStream, ClassType classType) throws IOException {
        dataOutputStream.writeShort(this.flags);
        dataOutputStream.writeShort(this.name_index);
        dataOutputStream.writeShort(this.signature_index);
        Attribute.writeAll(this, dataOutputStream);
    }

    public void assign_constants(ClassType classType) {
        Type type;
        String str;
        ConstantPool constantPool = classType.constants;
        if (this.name_index == 0 && (str = this.name) != null) {
            this.name_index = constantPool.addUtf8(str).index;
        }
        if (this.signature_index == 0 && (type = this.type) != null) {
            this.signature_index = constantPool.addUtf8(type.getSignature()).index;
        }
        Attribute.assignConstants(this, classType);
    }

    public synchronized java.lang.reflect.Field getReflectField() throws NoSuchFieldException {
        try {
            if (this.rfield == null) {
                this.rfield = this.owner.getReflectClass().getDeclaredField(getName());
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.rfield;
    }

    public void setSourceName(String str) {
        this.sourceName = str;
    }

    public String getSourceName() {
        if (this.sourceName == null) {
            this.sourceName = getName().intern();
        }
        return this.sourceName;
    }

    public static Field searchField(Field field, String str) {
        while (field != null) {
            if (field.getSourceName() == str) {
                return field;
            }
            field = field.next;
        }
        return null;
    }

    public final Field getNext() {
        return this.next;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0066 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setConstantValue(java.lang.Object r3, gnu.bytecode.ClassType r4) {
        /*
            r2 = this;
            gnu.bytecode.ConstantPool r0 = r4.constants
            if (r0 != 0) goto Lb
            gnu.bytecode.ConstantPool r0 = new gnu.bytecode.ConstantPool
            r0.<init>()
            r4.constants = r0
        Lb:
            gnu.bytecode.Type r4 = r2.getType()
            java.lang.String r4 = r4.getSignature()
            r1 = 0
            char r4 = r4.charAt(r1)
            r1 = 70
            if (r4 == r1) goto L71
            r1 = 83
            if (r4 == r1) goto L66
            r1 = 90
            if (r4 == r1) goto L5d
            r1 = 73
            if (r4 == r1) goto L66
            r1 = 74
            if (r4 == r1) goto L52
            switch(r4) {
                case 66: goto L66;
                case 67: goto L43;
                case 68: goto L38;
                default: goto L2f;
            }
        L2f:
            java.lang.String r3 = r3.toString()
            gnu.bytecode.CpoolString r3 = r0.addString(r3)
            goto L7b
        L38:
            java.lang.Number r3 = (java.lang.Number) r3
            double r3 = r3.doubleValue()
            gnu.bytecode.CpoolValue2 r3 = r0.addDouble(r3)
            goto L7b
        L43:
            boolean r4 = r3 instanceof java.lang.Character
            if (r4 == 0) goto L66
            java.lang.Character r3 = (java.lang.Character) r3
            char r3 = r3.charValue()
            gnu.bytecode.CpoolValue1 r3 = r0.addInt(r3)
            goto L7b
        L52:
            java.lang.Number r3 = (java.lang.Number) r3
            long r3 = r3.longValue()
            gnu.bytecode.CpoolValue2 r3 = r0.addLong(r3)
            goto L7b
        L5d:
            boolean r3 = gnu.bytecode.PrimType.booleanValue(r3)
            gnu.bytecode.CpoolValue1 r3 = r0.addInt(r3)
            goto L7b
        L66:
            java.lang.Number r3 = (java.lang.Number) r3
            int r3 = r3.intValue()
            gnu.bytecode.CpoolValue1 r3 = r0.addInt(r3)
            goto L7b
        L71:
            java.lang.Number r3 = (java.lang.Number) r3
            float r3 = r3.floatValue()
            gnu.bytecode.CpoolValue1 r3 = r0.addFloat(r3)
        L7b:
            gnu.bytecode.ConstantValueAttr r4 = new gnu.bytecode.ConstantValueAttr
            int r3 = r3.getIndex()
            r4.<init>(r3)
            r4.addToFrontOf(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.bytecode.Field.setConstantValue(java.lang.Object, gnu.bytecode.ClassType):void");
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(100);
        stringBuffer.append("Field:");
        stringBuffer.append(getDeclaringClass().getName());
        stringBuffer.append('.');
        stringBuffer.append(this.name);
        return stringBuffer.toString();
    }
}
