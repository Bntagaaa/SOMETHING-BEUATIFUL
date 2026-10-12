package kawa.lang;

import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.text.Printable;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public class ListRepeatPat extends Pattern implements Printable, Externalizable {
    Pattern element_pattern;

    public ListRepeatPat() {
    }

    public ListRepeatPat(Pattern pattern) {
        this.element_pattern = pattern;
    }

    public static ListRepeatPat make(Pattern pattern) {
        return new ListRepeatPat(pattern);
    }

    @Override // gnu.text.Printable
    public void print(Consumer consumer) {
        consumer.write("#<list-repeat-pattern ");
        this.element_pattern.print(consumer);
        consumer.write(62);
    }

    @Override // kawa.lang.Pattern
    public boolean match(Object obj, Object[] objArr, int i) {
        int iListLength = LList.listLength(obj, false);
        if (iListLength < 0) {
            return false;
        }
        int iVarCount = this.element_pattern.varCount();
        int i2 = iVarCount;
        while (true) {
            i2--;
            if (i2 < 0) {
                break;
            }
            objArr[i + i2] = new Object[iListLength];
        }
        Object[] objArr2 = new Object[iVarCount];
        for (int i3 = 0; i3 < iListLength; i3++) {
            Pair pair = (Pair) obj;
            if (!this.element_pattern.match(pair.getCar(), objArr2, 0)) {
                return false;
            }
            for (int i4 = 0; i4 < iVarCount; i4++) {
                ((Object[]) objArr[i + i4])[i3] = objArr2[i4];
            }
            obj = pair.getCdr();
        }
        return true;
    }

    @Override // kawa.lang.Pattern
    public int varCount() {
        return this.element_pattern.varCount();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.element_pattern);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.element_pattern = (Pattern) objectInput.readObject();
    }
}
