package gnu.lists;

import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
public class SubCharSeq extends SubSequence implements CharSeq {
    public SubCharSeq(AbstractSequence abstractSequence, int i, int i2) {
        super(abstractSequence, i, i2);
    }

    @Override // gnu.lists.CharSeq, java.lang.CharSequence
    public int length() {
        return size();
    }

    @Override // gnu.lists.CharSeq, java.lang.CharSequence
    public char charAt(int i) {
        if (i < 0 || i >= size()) {
            throw new IndexOutOfBoundsException();
        }
        return ((CharSeq) this.base).charAt(this.base.nextIndex(this.ipos0) + i);
    }

    @Override // gnu.lists.CharSeq
    public void getChars(int i, int i2, char[] cArr, int i3) {
        while (i < i2) {
            cArr[i3] = charAt(i);
            i++;
            i3++;
        }
    }

    @Override // gnu.lists.CharSeq
    public void setCharAt(int i, char c) {
        if (i < 0 || i >= size()) {
            throw new IndexOutOfBoundsException();
        }
        ((CharSeq) this.base).setCharAt(this.base.nextIndex(this.ipos0) + i, c);
    }

    @Override // gnu.lists.CharSeq
    public void fill(char c) {
        ((CharSeq) this.base).fill(this.base.nextIndex(this.ipos0), this.base.nextIndex(this.ipos0), c);
    }

    @Override // gnu.lists.CharSeq
    public void fill(int i, int i2, char c) {
        int i3;
        int iNextIndex = this.base.nextIndex(this.ipos0);
        int iNextIndex2 = this.base.nextIndex(this.ipos0);
        if (i < 0 || i2 < i || (i3 = i2 + iNextIndex) > iNextIndex2) {
            throw new IndexOutOfBoundsException();
        }
        ((CharSeq) this.base).fill(iNextIndex + i, i3, c);
    }

    @Override // gnu.lists.CharSeq
    public void writeTo(int i, int i2, Appendable appendable) throws IOException {
        int iNextIndex = this.base.nextIndex(this.ipos0);
        int iNextIndex2 = this.base.nextIndex(this.ipos0);
        if (i >= 0 && i2 >= 0) {
            int i3 = iNextIndex + i;
            if (i3 + i2 <= iNextIndex2) {
                ((CharSeq) this.base).writeTo(i3, i2, appendable);
                return;
            }
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // gnu.lists.CharSeq
    public void writeTo(Appendable appendable) throws IOException {
        ((CharSeq) this.base).writeTo(this.base.nextIndex(this.ipos0), size(), appendable);
    }

    @Override // gnu.lists.CharSeq
    public void consume(int i, int i2, Consumer consumer) {
        int iNextIndex = this.base.nextIndex(this.ipos0);
        int iNextIndex2 = this.base.nextIndex(this.ipos0);
        if (i >= 0 && i2 >= 0) {
            int i3 = iNextIndex + i;
            if (i3 + i2 <= iNextIndex2) {
                ((CharSeq) this.base).consume(i3, i2, consumer);
                return;
            }
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // gnu.lists.AbstractSequence
    public String toString() {
        int size = size();
        StringBuffer stringBuffer = new StringBuffer(size);
        for (int i = 0; i < size; i++) {
            stringBuffer.append(charAt(i));
        }
        return stringBuffer.toString();
    }

    private SubCharSeq subCharSeq(int i, int i2) {
        int size = size();
        if (i < 0 || i2 < i || i2 > size) {
            throw new IndexOutOfBoundsException();
        }
        AbstractSequence abstractSequence = this.base;
        return new SubCharSeq(abstractSequence, abstractSequence.createRelativePos(this.ipos0, i, false), this.base.createRelativePos(this.ipos0, i2, true));
    }

    @Override // gnu.lists.AbstractSequence, java.util.List
    public List subList(int i, int i2) {
        return subCharSeq(i, i2);
    }

    @Override // gnu.lists.CharSeq, java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return subCharSeq(i, i2);
    }
}
