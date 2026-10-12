package gnu.lists;

import java.io.IOException;
import java.io.Serializable;
import java.io.Writer;
import okio.Utf8;

/* loaded from: classes2.dex */
public class CharBuffer extends StableVector implements CharSeq, Serializable {
    private FString string;

    public CharBuffer(FString fString) {
        super(fString);
        this.string = fString;
    }

    public CharBuffer(int i) {
        this(new FString(i));
    }

    public CharBuffer() {
    }

    @Override // gnu.lists.CharSeq, java.lang.CharSequence
    public int length() {
        return size();
    }

    @Override // gnu.lists.CharSeq, java.lang.CharSequence
    public char charAt(int i) {
        int i2 = this.gapStart;
        if (i >= i2) {
            i += this.gapEnd - i2;
        }
        return this.string.charAt(i);
    }

    public int indexOf(int i, int i2) {
        char c;
        char c2;
        if (i >= 65536) {
            c = (char) (((i - 65536) >> 10) + 55296);
            c2 = (char) ((i & 1023) + Utf8.LOG_SURROGATE_HEADER);
        } else {
            c = (char) i;
            c2 = 0;
        }
        char[] array = getArray();
        int length = this.gapStart;
        if (i2 >= length) {
            i2 += this.gapEnd - length;
            length = array.length;
        }
        while (true) {
            if (i2 == length) {
                length = array.length;
                if (i2 >= length) {
                    return -1;
                }
                i2 = this.gapEnd;
            }
            if (array[i2] == c) {
                if (c2 != 0) {
                    int i3 = i2 + 1;
                    if (i3 >= length) {
                        int i4 = this.gapEnd;
                        if (i4 < array.length && array[i4] == c2) {
                            break;
                        }
                    } else if (array[i3] == c2) {
                        break;
                    }
                } else {
                    break;
                }
            }
            i2++;
        }
        int i5 = this.gapStart;
        return i2 > i5 ? i2 - (this.gapEnd - i5) : i2;
    }

    public int lastIndexOf(int i, int i2) {
        char c;
        char c2;
        if (i >= 65536) {
            c2 = (char) (((i - 65536) >> 10) + 55296);
            c = (char) ((i & 1023) + Utf8.LOG_SURROGATE_HEADER);
        } else {
            c = (char) i;
            c2 = 0;
        }
        while (true) {
            int i3 = i2 - 1;
            if (i3 < 0) {
                return -1;
            }
            if (charAt(i3) == c) {
                if (c2 == 0) {
                    return i3;
                }
                if (i3 > 0) {
                    int i4 = i2 - 2;
                    if (charAt(i4) == c2) {
                        return i4;
                    }
                } else {
                    continue;
                }
            }
            i2 = i3;
        }
    }

    @Override // gnu.lists.CharSeq
    public void getChars(int i, int i2, char[] cArr, int i3) {
        char[] cArr2 = this.string.data;
        int i4 = this.gapStart;
        if (i < i4) {
            if (i2 < i4) {
                i4 = i2;
            }
            int i5 = i4 - i;
            if (i5 > 0) {
                System.arraycopy(cArr2, i, cArr, i3, i5);
                i += i5;
                i3 += i5;
            }
        }
        int i6 = this.gapEnd - this.gapStart;
        int i7 = i + i6;
        int i8 = (i2 + i6) - i7;
        if (i8 > 0) {
            System.arraycopy(cArr2, i7, cArr, i3, i8);
        }
    }

    @Override // gnu.lists.CharSeq
    public void setCharAt(int i, char c) {
        int i2 = this.gapStart;
        if (i >= i2) {
            i += this.gapEnd - i2;
        }
        this.string.setCharAt(i, c);
    }

    public String substring(int i, int i2) {
        int size = size();
        if (i < 0 || i2 < i || i2 > size) {
            throw new IndexOutOfBoundsException();
        }
        int i3 = i2 - i;
        return new String(getArray(), getSegment(i, i3), i3);
    }

    @Override // gnu.lists.CharSeq, java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        int size = size();
        if (i < 0 || i2 < i || i2 > size) {
            throw new IndexOutOfBoundsException();
        }
        return new SubCharSeq(this, this.base.createPos(i, false), this.base.createPos(i2, true));
    }

    @Override // gnu.lists.CharSeq
    public void fill(int i, int i2, char c) {
        char[] cArr = this.string.data;
        int i3 = this.gapStart;
        if (i3 >= i2) {
            i3 = i2;
        }
        while (i < i3) {
            cArr[i] = c;
            i++;
        }
        int i4 = i3 + i2;
        for (int i5 = (this.gapEnd - this.gapStart) + i3; i5 < i4; i5++) {
            cArr[i5] = c;
        }
    }

    @Override // gnu.lists.CharSeq
    public final void fill(char c) {
        char[] cArr = this.string.data;
        int length = cArr.length;
        while (true) {
            length--;
            if (length < this.gapEnd) {
                break;
            } else {
                cArr[length] = c;
            }
        }
        int i = this.gapStart;
        while (true) {
            i--;
            if (i < 0) {
                return;
            } else {
                cArr[i] = c;
            }
        }
    }

    public char[] getArray() {
        return (char[]) this.base.getBuffer();
    }

    public void delete(int i, int i2) {
        int iCreatePos = createPos(i, false);
        removePos(iCreatePos, i2);
        releasePos(iCreatePos);
    }

    public void insert(int i, String str, boolean z) {
        int length = str.length();
        gapReserve(i, length);
        str.getChars(0, length, this.string.data, i);
        this.gapStart += length;
    }

    @Override // gnu.lists.CharSeq
    public void consume(int i, int i2, Consumer consumer) {
        char[] cArr = this.string.data;
        int i3 = this.gapStart;
        if (i < i3) {
            int i4 = i3 - i;
            if (i4 > i2) {
                i4 = i2;
            }
            consumer.write(cArr, i, i4);
            i2 -= i4;
            i += i2;
        }
        if (i2 > 0) {
            consumer.write(cArr, (this.gapEnd - this.gapStart) + i, i2);
        }
    }

    @Override // gnu.lists.AbstractSequence
    public String toString() {
        int size = size();
        return new String(getArray(), getSegment(0, size), size);
    }

    @Override // gnu.lists.CharSeq
    public void writeTo(int i, int i2, Appendable appendable) throws IOException {
        if (appendable instanceof Writer) {
            writeTo(i, i2, (Writer) appendable);
        } else {
            appendable.append(this, i, i2 + i);
        }
    }

    @Override // gnu.lists.CharSeq
    public void writeTo(Appendable appendable) throws IOException {
        writeTo(0, size(), appendable);
    }

    public void writeTo(int i, int i2, Writer writer) throws IOException {
        char[] cArr = this.string.data;
        int i3 = this.gapStart;
        if (i < i3) {
            int i4 = i3 - i;
            if (i4 > i2) {
                i4 = i2;
            }
            writer.write(cArr, i, i4);
            i2 -= i4;
            i += i2;
        }
        if (i2 > 0) {
            writer.write(cArr, (this.gapEnd - this.gapStart) + i, i2);
        }
    }

    public void writeTo(Writer writer) throws IOException {
        char[] cArr = this.string.data;
        writer.write(cArr, 0, this.gapStart);
        int i = this.gapEnd;
        writer.write(cArr, i, cArr.length - i);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void dump() {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.lists.CharBuffer.dump():void");
    }
}
