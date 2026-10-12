package gnu.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class CpoolEntry {
    int hash;
    public int index;
    CpoolEntry next;

    public abstract int getTag();

    public abstract void print(ClassTypeWriter classTypeWriter, int i);

    public abstract void write(DataOutputStream dataOutputStream) throws IOException;

    public int getIndex() {
        return this.index;
    }

    public int hashCode() {
        return this.hash;
    }

    public void add_hashed(ConstantPool constantPool) {
        CpoolEntry[] cpoolEntryArr = constantPool.hashTab;
        int length = (this.hash & Integer.MAX_VALUE) % cpoolEntryArr.length;
        this.next = cpoolEntryArr[length];
        cpoolEntryArr[length] = this;
    }

    public CpoolEntry() {
    }

    public CpoolEntry(ConstantPool constantPool, int i) {
        this.hash = i;
        if (constantPool.locked) {
            throw new Error("adding new entry to locked contant pool");
        }
        int i2 = constantPool.count + 1;
        constantPool.count = i2;
        this.index = i2;
        CpoolEntry[] cpoolEntryArr = constantPool.pool;
        if (cpoolEntryArr == null) {
            constantPool.pool = new CpoolEntry[60];
        } else if (i2 >= cpoolEntryArr.length) {
            int length = cpoolEntryArr.length;
            CpoolEntry[] cpoolEntryArr2 = new CpoolEntry[cpoolEntryArr.length * 2];
            for (int i3 = 0; i3 < length; i3++) {
                cpoolEntryArr2[i3] = constantPool.pool[i3];
            }
            constantPool.pool = cpoolEntryArr2;
        }
        if (constantPool.hashTab == null || this.index >= r8.length * 0.6d) {
            constantPool.rehash();
        }
        constantPool.pool[this.index] = this;
        add_hashed(constantPool);
    }
}
