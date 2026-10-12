package com.google.appinventor.components.runtime.repackaged.org.json;

import java.util.Arrays;
import kotlinx.coroutines.scheduling.WorkQueueKt;
import okio.Utf8;

/* loaded from: classes.dex */
public class Kim {
    private byte[] bytes;
    private int hashcode;
    public int length;
    private String string;

    public Kim(byte[] bArr, int i, int i2) {
        this.bytes = null;
        this.string = null;
        this.hashcode = 0;
        int i3 = i2 - i;
        this.length = i3;
        if (i3 > 0) {
            this.bytes = new byte[i3];
            int i4 = 1;
            for (int i5 = 0; i5 < this.length; i5++) {
                int i6 = bArr[i5 + i] & 255;
                i4 += i6;
                this.hashcode += i4;
                this.bytes[i5] = (byte) i6;
            }
            this.hashcode += i4 << 16;
        }
    }

    public Kim(byte[] bArr, int i) {
        this(bArr, 0, i);
    }

    public Kim(Kim kim, int i, int i2) {
        this(kim.bytes, i, i2);
    }

    public Kim(String str) throws JSONException {
        this.bytes = null;
        int i = 0;
        this.hashcode = 0;
        this.length = 0;
        this.string = null;
        int length = str.length();
        this.hashcode = 0;
        this.length = 0;
        if (length > 0) {
            int i2 = 0;
            while (true) {
                int i3 = 56319;
                if (i2 < length) {
                    char cCharAt = str.charAt(i2);
                    if (cCharAt <= 127) {
                        this.length++;
                    } else if (cCharAt <= 16383) {
                        this.length += 2;
                    } else {
                        if (cCharAt >= 55296 && cCharAt <= 57343) {
                            i2++;
                            char cCharAt2 = str.charAt(i2);
                            if (cCharAt > 56319 || cCharAt2 < 56320 || cCharAt2 > 57343) {
                                break;
                            }
                        }
                        this.length += 3;
                    }
                    i2++;
                } else {
                    this.bytes = new byte[this.length];
                    int i4 = 0;
                    int i5 = 1;
                    while (i < length) {
                        int iCharAt = str.charAt(i);
                        if (iCharAt <= 127) {
                            this.bytes[i4] = (byte) iCharAt;
                            i5 += iCharAt;
                            this.hashcode += i5;
                            i4++;
                        } else if (iCharAt <= 16383) {
                            int i6 = (iCharAt >>> 7) | 128;
                            byte[] bArr = this.bytes;
                            bArr[i4] = (byte) i6;
                            int i7 = i5 + i6;
                            int i8 = this.hashcode + i7;
                            this.hashcode = i8;
                            int i9 = iCharAt & WorkQueueKt.MASK;
                            bArr[i4 + 1] = (byte) i9;
                            i5 = i7 + i9;
                            this.hashcode = i8 + i5;
                            i4 += 2;
                        } else {
                            if (iCharAt >= 55296 && iCharAt <= i3) {
                                i++;
                                iCharAt = (((iCharAt & 1023) << 10) | (str.charAt(i) & 1023)) + 65536;
                            }
                            int i10 = (iCharAt >>> 14) | 128;
                            byte[] bArr2 = this.bytes;
                            bArr2[i4] = (byte) i10;
                            int i11 = i5 + i10;
                            int i12 = this.hashcode + i11;
                            this.hashcode = i12;
                            int i13 = ((iCharAt >>> 7) & 255) | 128;
                            bArr2[i4 + 1] = (byte) i13;
                            int i14 = i11 + i13;
                            int i15 = i12 + i14;
                            this.hashcode = i15;
                            int i16 = iCharAt & WorkQueueKt.MASK;
                            bArr2[i4 + 2] = (byte) i16;
                            i5 = i14 + i16;
                            this.hashcode = i15 + i5;
                            i4 += 3;
                        }
                        i++;
                        i3 = 56319;
                    }
                    this.hashcode += i5 << 16;
                    return;
                }
            }
            throw new JSONException("Bad UTF16");
        }
    }

    public int characterAt(int i) throws JSONException {
        int i2 = get(i);
        if ((i2 & 128) == 0) {
            return i2;
        }
        int i3 = get(i + 1);
        if ((i3 & 128) == 0) {
            int i4 = ((i2 & WorkQueueKt.MASK) << 7) | i3;
            if (i4 > 127) {
                return i4;
            }
        } else {
            int i5 = get(i + 2);
            int i6 = ((i2 & WorkQueueKt.MASK) << 14) | ((i3 & WorkQueueKt.MASK) << 7) | i5;
            if ((i5 & 128) == 0 && i6 > 16383 && i6 <= 1114111 && (i6 < 55296 || i6 > 57343)) {
                return i6;
            }
        }
        StringBuffer stringBuffer = new StringBuffer("Bad character at ");
        stringBuffer.append(i);
        throw new JSONException(stringBuffer.toString());
    }

    public static int characterSize(int i) throws JSONException {
        if (i < 0 || i > 1114111) {
            StringBuffer stringBuffer = new StringBuffer("Bad character ");
            stringBuffer.append(i);
            throw new JSONException(stringBuffer.toString());
        }
        if (i <= 127) {
            return 1;
        }
        return i <= 16383 ? 2 : 3;
    }

    public int copy(byte[] bArr, int i) {
        System.arraycopy(this.bytes, 0, bArr, i, this.length);
        return i + this.length;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Kim)) {
            return false;
        }
        Kim kim = (Kim) obj;
        if (this == kim) {
            return true;
        }
        if (this.hashcode != kim.hashcode) {
            return false;
        }
        return Arrays.equals(this.bytes, kim.bytes);
    }

    public int get(int i) throws JSONException {
        if (i < 0 || i > this.length) {
            StringBuffer stringBuffer = new StringBuffer("Bad character at ");
            stringBuffer.append(i);
            throw new JSONException(stringBuffer.toString());
        }
        return this.bytes[i] & 255;
    }

    public int hashCode() {
        return this.hashcode;
    }

    public String toString() throws JSONException {
        if (this.string == null) {
            char[] cArr = new char[this.length];
            int iCharacterSize = 0;
            int i = 0;
            while (iCharacterSize < this.length) {
                int iCharacterAt = characterAt(iCharacterSize);
                if (iCharacterAt < 65536) {
                    cArr[i] = (char) iCharacterAt;
                    i++;
                } else {
                    cArr[i] = (char) (((iCharacterAt - 65536) >>> 10) | 55296);
                    cArr[i + 1] = (char) ((iCharacterAt & 1023) | Utf8.LOG_SURROGATE_HEADER);
                    i += 2;
                }
                iCharacterSize += characterSize(iCharacterAt);
            }
            this.string = new String(cArr, 0, i);
        }
        return this.string;
    }
}
