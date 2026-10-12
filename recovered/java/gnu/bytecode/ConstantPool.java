package gnu.bytecode;

import _COROUTINE.a;
import androidx.core.internal.view.SupportMenu;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public class ConstantPool {
    public static final byte CLASS = 7;
    public static final byte DOUBLE = 6;
    public static final byte FIELDREF = 9;
    public static final byte FLOAT = 4;
    public static final byte INTEGER = 3;
    public static final byte INTERFACE_METHODREF = 11;
    public static final byte LONG = 5;
    public static final byte METHODREF = 10;
    public static final byte NAME_AND_TYPE = 12;
    public static final byte STRING = 8;
    public static final byte UTF8 = 1;
    int count;
    CpoolEntry[] hashTab;
    boolean locked;
    CpoolEntry[] pool;

    public final int getCount() {
        return this.count;
    }

    public final CpoolEntry getPoolEntry(int i) {
        return this.pool[i];
    }

    public void rehash() {
        if (this.hashTab == null && this.count > 0) {
            int length = this.pool.length;
            while (true) {
                length--;
                if (length < 0) {
                    break;
                }
                CpoolEntry cpoolEntry = this.pool[length];
                if (cpoolEntry != null) {
                    cpoolEntry.hashCode();
                }
            }
        }
        int i = this.count;
        this.hashTab = new CpoolEntry[i < 5 ? 101 : i * 2];
        CpoolEntry[] cpoolEntryArr = this.pool;
        if (cpoolEntryArr == null) {
            return;
        }
        int length2 = cpoolEntryArr.length;
        while (true) {
            length2--;
            if (length2 < 0) {
                return;
            }
            CpoolEntry cpoolEntry2 = this.pool[length2];
            if (cpoolEntry2 != null) {
                cpoolEntry2.add_hashed(this);
            }
        }
    }

    public CpoolUtf8 addUtf8(String str) {
        String strIntern = str.intern();
        int iHashCode = strIntern.hashCode();
        if (this.hashTab == null) {
            rehash();
        }
        CpoolEntry[] cpoolEntryArr = this.hashTab;
        for (CpoolEntry cpoolEntry = cpoolEntryArr[(Integer.MAX_VALUE & iHashCode) % cpoolEntryArr.length]; cpoolEntry != null; cpoolEntry = cpoolEntry.next) {
            if (iHashCode == cpoolEntry.hash && (cpoolEntry instanceof CpoolUtf8)) {
                CpoolUtf8 cpoolUtf8 = (CpoolUtf8) cpoolEntry;
                if (cpoolUtf8.string == strIntern) {
                    return cpoolUtf8;
                }
            }
        }
        if (this.locked) {
            throw new Error("adding new Utf8 entry to locked contant pool: ".concat(strIntern));
        }
        return new CpoolUtf8(this, iHashCode, strIntern);
    }

    public CpoolClass addClass(ObjectType objectType) {
        CpoolClass cpoolClassAddClass = addClass(addUtf8(objectType.getInternalName()));
        cpoolClassAddClass.clas = objectType;
        return cpoolClassAddClass;
    }

    public CpoolClass addClass(CpoolUtf8 cpoolUtf8) {
        int iHashCode = CpoolClass.hashCode(cpoolUtf8);
        if (this.hashTab == null) {
            rehash();
        }
        CpoolEntry[] cpoolEntryArr = this.hashTab;
        for (CpoolEntry cpoolEntry = cpoolEntryArr[(Integer.MAX_VALUE & iHashCode) % cpoolEntryArr.length]; cpoolEntry != null; cpoolEntry = cpoolEntry.next) {
            if (iHashCode == cpoolEntry.hash && (cpoolEntry instanceof CpoolClass)) {
                CpoolClass cpoolClass = (CpoolClass) cpoolEntry;
                if (cpoolClass.name == cpoolUtf8) {
                    return cpoolClass;
                }
            }
        }
        return new CpoolClass(this, iHashCode, cpoolUtf8);
    }

    public CpoolValue1 addValue1(int i, int i2) {
        int iHashCode = CpoolValue1.hashCode(i2);
        if (this.hashTab == null) {
            rehash();
        }
        CpoolEntry[] cpoolEntryArr = this.hashTab;
        for (CpoolEntry cpoolEntry = cpoolEntryArr[(Integer.MAX_VALUE & iHashCode) % cpoolEntryArr.length]; cpoolEntry != null; cpoolEntry = cpoolEntry.next) {
            if (iHashCode == cpoolEntry.hash && (cpoolEntry instanceof CpoolValue1)) {
                CpoolValue1 cpoolValue1 = (CpoolValue1) cpoolEntry;
                if (cpoolValue1.tag == i && cpoolValue1.value == i2) {
                    return cpoolValue1;
                }
            }
        }
        return new CpoolValue1(this, i, iHashCode, i2);
    }

    public CpoolValue2 addValue2(int i, long j) {
        int iHashCode = CpoolValue2.hashCode(j);
        if (this.hashTab == null) {
            rehash();
        }
        CpoolEntry[] cpoolEntryArr = this.hashTab;
        for (CpoolEntry cpoolEntry = cpoolEntryArr[(Integer.MAX_VALUE & iHashCode) % cpoolEntryArr.length]; cpoolEntry != null; cpoolEntry = cpoolEntry.next) {
            if (iHashCode == cpoolEntry.hash && (cpoolEntry instanceof CpoolValue2)) {
                CpoolValue2 cpoolValue2 = (CpoolValue2) cpoolEntry;
                if (cpoolValue2.tag == i && cpoolValue2.value == j) {
                    return cpoolValue2;
                }
            }
        }
        return new CpoolValue2(this, i, iHashCode, j);
    }

    public CpoolValue1 addInt(int i) {
        return addValue1(3, i);
    }

    public CpoolValue2 addLong(long j) {
        return addValue2(5, j);
    }

    public CpoolValue1 addFloat(float f) {
        return addValue1(4, Float.floatToIntBits(f));
    }

    public CpoolValue2 addDouble(double d) {
        return addValue2(6, Double.doubleToLongBits(d));
    }

    public final CpoolString addString(String str) {
        return addString(addUtf8(str));
    }

    public CpoolString addString(CpoolUtf8 cpoolUtf8) {
        int iHashCode = CpoolString.hashCode(cpoolUtf8);
        if (this.hashTab == null) {
            rehash();
        }
        CpoolEntry[] cpoolEntryArr = this.hashTab;
        for (CpoolEntry cpoolEntry = cpoolEntryArr[(Integer.MAX_VALUE & iHashCode) % cpoolEntryArr.length]; cpoolEntry != null; cpoolEntry = cpoolEntry.next) {
            if (iHashCode == cpoolEntry.hash && (cpoolEntry instanceof CpoolString)) {
                CpoolString cpoolString = (CpoolString) cpoolEntry;
                if (cpoolString.str == cpoolUtf8) {
                    return cpoolString;
                }
            }
        }
        return new CpoolString(this, iHashCode, cpoolUtf8);
    }

    public CpoolNameAndType addNameAndType(Method method) {
        return addNameAndType(addUtf8(method.getName()), addUtf8(method.getSignature()));
    }

    public CpoolNameAndType addNameAndType(Field field) {
        return addNameAndType(addUtf8(field.getName()), addUtf8(field.getSignature()));
    }

    public CpoolNameAndType addNameAndType(CpoolUtf8 cpoolUtf8, CpoolUtf8 cpoolUtf82) {
        int iHashCode = CpoolNameAndType.hashCode(cpoolUtf8, cpoolUtf82);
        if (this.hashTab == null) {
            rehash();
        }
        CpoolEntry[] cpoolEntryArr = this.hashTab;
        for (CpoolEntry cpoolEntry = cpoolEntryArr[(Integer.MAX_VALUE & iHashCode) % cpoolEntryArr.length]; cpoolEntry != null; cpoolEntry = cpoolEntry.next) {
            if (iHashCode == cpoolEntry.hash && (cpoolEntry instanceof CpoolNameAndType)) {
                CpoolNameAndType cpoolNameAndType = (CpoolNameAndType) cpoolEntry;
                if (cpoolNameAndType.name == cpoolUtf8 && cpoolNameAndType.type == cpoolUtf82) {
                    return cpoolNameAndType;
                }
            }
        }
        return new CpoolNameAndType(this, iHashCode, cpoolUtf8, cpoolUtf82);
    }

    public CpoolRef addRef(int i, CpoolClass cpoolClass, CpoolNameAndType cpoolNameAndType) {
        int iHashCode = CpoolRef.hashCode(cpoolClass, cpoolNameAndType);
        if (this.hashTab == null) {
            rehash();
        }
        CpoolEntry[] cpoolEntryArr = this.hashTab;
        for (CpoolEntry cpoolEntry = cpoolEntryArr[(Integer.MAX_VALUE & iHashCode) % cpoolEntryArr.length]; cpoolEntry != null; cpoolEntry = cpoolEntry.next) {
            if (iHashCode == cpoolEntry.hash && (cpoolEntry instanceof CpoolRef)) {
                CpoolRef cpoolRef = (CpoolRef) cpoolEntry;
                if (cpoolRef.tag == i && cpoolRef.clas == cpoolClass && cpoolRef.nameAndType == cpoolNameAndType) {
                    return cpoolRef;
                }
            }
        }
        return new CpoolRef(this, iHashCode, i, cpoolClass, cpoolNameAndType);
    }

    public CpoolRef addMethodRef(Method method) {
        return addRef((method.getDeclaringClass().getModifiers() & 512) == 0 ? 10 : 11, addClass(method.classfile), addNameAndType(method));
    }

    public CpoolRef addFieldRef(Field field) {
        return addRef(9, addClass(field.owner), addNameAndType(field));
    }

    public void write(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.count + 1);
        for (int i = 1; i <= this.count; i++) {
            CpoolEntry cpoolEntry = this.pool[i];
            if (cpoolEntry != null) {
                cpoolEntry.write(dataOutputStream);
            }
        }
        this.locked = true;
    }

    public CpoolEntry getForced(int i, int i2) {
        int i3 = i & SupportMenu.USER_MASK;
        CpoolEntry cpoolUtf8 = this.pool[i3];
        if (cpoolUtf8 != null) {
            if (cpoolUtf8.getTag() == i2) {
                return cpoolUtf8;
            }
            throw new ClassFormatError(a.d(i3, "conflicting constant pool tags at "));
        }
        if (this.locked) {
            throw new Error("adding new entry to locked contant pool");
        }
        switch (i2) {
            case 1:
                cpoolUtf8 = new CpoolUtf8();
                break;
            case 3:
            case 4:
                cpoolUtf8 = new CpoolValue1(i2);
                break;
            case 5:
            case 6:
                cpoolUtf8 = new CpoolValue2(i2);
                break;
            case 7:
                cpoolUtf8 = new CpoolClass();
                break;
            case 8:
                cpoolUtf8 = new CpoolString();
                break;
            case 9:
            case 10:
            case 11:
                cpoolUtf8 = new CpoolRef(i2);
                break;
            case 12:
                cpoolUtf8 = new CpoolNameAndType();
                break;
        }
        this.pool[i3] = cpoolUtf8;
        cpoolUtf8.index = i3;
        return cpoolUtf8;
    }

    public CpoolClass getForcedClass(int i) {
        return (CpoolClass) getForced(i, 7);
    }

    public ConstantPool() {
    }

    public ConstantPool(DataInputStream dataInputStream) throws IOException {
        int unsignedShort = dataInputStream.readUnsignedShort();
        this.count = unsignedShort - 1;
        this.pool = new CpoolEntry[unsignedShort];
        int i = 1;
        while (i <= this.count) {
            byte b2 = dataInputStream.readByte();
            CpoolEntry forced = getForced(i, b2);
            switch (b2) {
                case 1:
                    ((CpoolUtf8) forced).string = dataInputStream.readUTF();
                    break;
                case 3:
                case 4:
                    ((CpoolValue1) forced).value = dataInputStream.readInt();
                    break;
                case 5:
                case 6:
                    ((CpoolValue2) forced).value = dataInputStream.readLong();
                    i++;
                    break;
                case 7:
                    ((CpoolClass) forced).name = (CpoolUtf8) getForced(dataInputStream.readUnsignedShort(), 1);
                    break;
                case 8:
                    ((CpoolString) forced).str = (CpoolUtf8) getForced(dataInputStream.readUnsignedShort(), 1);
                    break;
                case 9:
                case 10:
                case 11:
                    CpoolRef cpoolRef = (CpoolRef) forced;
                    cpoolRef.clas = getForcedClass(dataInputStream.readUnsignedShort());
                    cpoolRef.nameAndType = (CpoolNameAndType) getForced(dataInputStream.readUnsignedShort(), 12);
                    break;
                case 12:
                    CpoolNameAndType cpoolNameAndType = (CpoolNameAndType) forced;
                    cpoolNameAndType.name = (CpoolUtf8) getForced(dataInputStream.readUnsignedShort(), 1);
                    cpoolNameAndType.type = (CpoolUtf8) getForced(dataInputStream.readUnsignedShort(), 1);
                    break;
            }
            i++;
        }
    }
}
