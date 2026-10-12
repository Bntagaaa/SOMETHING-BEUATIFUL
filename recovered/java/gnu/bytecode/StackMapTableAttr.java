package gnu.bytecode;

import com.google.appinventor.components.common.PropertyTypeConstants;
import java.io.DataOutputStream;
import java.io.IOException;
import kawa.Telnet;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class StackMapTableAttr extends MiscAttr {
    public static boolean compressStackMapTable = true;
    int countLocals;
    int countStack;
    int[] encodedLocals;
    int[] encodedStack;
    int numEntries;
    int prevPosition;

    public StackMapTableAttr() {
        super("StackMapTable", null, 0, 0);
        this.prevPosition = -1;
        put2(0);
    }

    public StackMapTableAttr(byte[] bArr, CodeAttr codeAttr) {
        super("StackMapTable", bArr, 0, bArr.length);
        this.prevPosition = -1;
        addToFrontOf(codeAttr);
        this.numEntries = u2(0);
    }

    public Method getMethod() {
        return ((CodeAttr) this.container).getMethod();
    }

    @Override // gnu.bytecode.MiscAttr, gnu.bytecode.Attribute
    public void write(DataOutputStream dataOutputStream) throws IOException {
        put2(0, this.numEntries);
        super.write(dataOutputStream);
    }

    public void emitVerificationType(int i) {
        int i2 = i & 255;
        put1(i2);
        if (i2 >= 7) {
            put2(i >> 8);
        }
    }

    public int encodeVerificationType(Type type, CodeAttr codeAttr) {
        if (type == null) {
            return 0;
        }
        if (type instanceof UninitializedType) {
            Label label = ((UninitializedType) type).label;
            if (label == null) {
                return 6;
            }
            return (label.position << 8) | 8;
        }
        Type implementationType = type.getImplementationType();
        if (implementationType instanceof PrimType) {
            char cCharAt = implementationType.signature.charAt(0);
            if (cCharAt == 'F') {
                return 2;
            }
            if (cCharAt == 'S' || cCharAt == 'Z' || cCharAt == 'I') {
                return 1;
            }
            if (cCharAt == 'J') {
                return 4;
            }
            switch (cCharAt) {
                case 'B':
                case 'C':
                    return 1;
                case 'D':
                    return 3;
                default:
                    return 0;
            }
        }
        if (implementationType == Type.nullType) {
            return 5;
        }
        return (codeAttr.getConstants().addClass((ObjectType) implementationType).index << 8) | 7;
    }

    public void emitStackMapEntry(Label label, CodeAttr codeAttr) {
        int i = label.position - this.prevPosition;
        int i2 = i - 1;
        int length = label.localTypes.length;
        int[] iArr = this.encodedLocals;
        int i3 = 0;
        if (length > iArr.length) {
            int[] iArr2 = new int[iArr.length + length];
            System.arraycopy(iArr, 0, iArr2, 0, this.countLocals);
            this.encodedLocals = iArr2;
        }
        int length2 = label.stackTypes.length;
        int[] iArr3 = this.encodedStack;
        if (length2 > iArr3.length) {
            int[] iArr4 = new int[iArr3.length + length2];
            System.arraycopy(iArr3, 0, iArr4, 0, this.countStack);
            this.encodedStack = iArr4;
        }
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < length) {
            int i7 = this.encodedLocals[i5];
            int iEncodeVerificationType = encodeVerificationType(label.localTypes[i4], codeAttr);
            if (i7 == iEncodeVerificationType && i6 == i5) {
                i6 = i5 + 1;
            }
            int i8 = i5 + 1;
            this.encodedLocals[i5] = iEncodeVerificationType;
            if (iEncodeVerificationType == 3 || iEncodeVerificationType == 4) {
                i4++;
            }
            i4++;
            i5 = i8;
        }
        while (i5 > 0 && this.encodedLocals[i5 - 1] == 0) {
            i5--;
        }
        int i9 = 0;
        int i10 = 0;
        while (i9 < length2) {
            int i11 = this.encodedStack[i10];
            Type[] typeArr = label.stackTypes;
            Type type = typeArr[i9];
            if (type == Type.voidType) {
                i9++;
                type = typeArr[i9];
            }
            this.encodedStack[i10] = encodeVerificationType(type, codeAttr);
            i9++;
            i10++;
        }
        int i12 = this.countLocals;
        int i13 = i5 - i12;
        boolean z = compressStackMapTable;
        if (z && i13 == 0 && i5 == i6 && i10 <= 1) {
            if (i10 != 0) {
                if (i2 <= 63) {
                    put1(i + 63);
                } else {
                    put1(247);
                    put2(i2);
                }
                emitVerificationType(this.encodedStack[0]);
            } else if (i2 <= 63) {
                put1(i2);
            } else {
                put1(Telnet.WILL);
                put2(i2);
            }
        } else if (z && i10 == 0 && i5 < i12 && i6 == i5 && i13 >= -3) {
            put1(i13 + Telnet.WILL);
            put2(i2);
        } else if (z && i10 == 0 && i12 == i6 && i13 <= 3) {
            put1(i13 + Telnet.WILL);
            put2(i2);
            while (i3 < i13) {
                emitVerificationType(this.encodedLocals[i6 + i3]);
                i3++;
            }
        } else {
            put1(255);
            put2(i2);
            put2(i5);
            for (int i14 = 0; i14 < i5; i14++) {
                emitVerificationType(this.encodedLocals[i14]);
            }
            put2(i10);
            while (i3 < i10) {
                emitVerificationType(this.encodedStack[i3]);
                i3++;
            }
        }
        this.countLocals = i5;
        this.countStack = i10;
        this.prevPosition = label.position;
        this.numEntries++;
    }

    public void printVerificationType(int i, ClassTypeWriter classTypeWriter) {
        int i2 = i & 255;
        switch (i2) {
            case 0:
                classTypeWriter.print("top/unavailable");
                break;
            case 1:
                classTypeWriter.print(PropertyTypeConstants.PROPERTY_TYPE_INTEGER);
                break;
            case 2:
                classTypeWriter.print(PropertyTypeConstants.PROPERTY_TYPE_FLOAT);
                break;
            case 3:
                classTypeWriter.print("double");
                break;
            case 4:
                classTypeWriter.print("long");
                break;
            case 5:
                classTypeWriter.print("null");
                break;
            case 6:
                classTypeWriter.print("uninitialized this");
                break;
            case 7:
                int i3 = i >> 8;
                classTypeWriter.printOptionalIndex(i3);
                classTypeWriter.printConstantTersely(i3, 7);
                break;
            case 8:
                classTypeWriter.print("uninitialized object created at ");
                classTypeWriter.print(i >> 8);
                break;
            default:
                classTypeWriter.print("<bad verification type tag " + i2 + Typography.greater);
                break;
        }
    }

    public int extractVerificationType(int i, int i2) {
        return (i2 == 7 || i2 == 8) ? (u2(i + 1) << 8) | i2 : i2;
    }

    public static int[] reallocBuffer(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i + 10];
        }
        if (i <= iArr.length) {
            return iArr;
        }
        int[] iArr2 = new int[i + 10];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    public int extractVerificationTypes(int i, int i2, int i3, int[] iArr) {
        while (true) {
            int i4 = -1;
            i2--;
            if (i2 < 0) {
                return i;
            }
            if (i < this.dataLength) {
                byte b2 = this.data[i];
                int iExtractVerificationType = extractVerificationType(i, b2);
                i += (b2 == 7 || b2 == 8) ? 3 : 1;
                i4 = iExtractVerificationType;
            }
            iArr[i3] = i4;
            i3++;
        }
    }

    public void printVerificationTypes(int[] iArr, int i, int i2, ClassTypeWriter classTypeWriter) {
        int i3 = 0;
        for (int i4 = 0; i4 < i + i2; i4++) {
            int i5 = iArr[i4];
            int i6 = i5 & 255;
            if (i4 >= i) {
                classTypeWriter.print("  ");
                if (i3 < 100) {
                    if (i3 < 10) {
                        classTypeWriter.print(' ');
                    }
                    classTypeWriter.print(' ');
                }
                classTypeWriter.print(i3);
                classTypeWriter.print(": ");
                printVerificationType(i5, classTypeWriter);
                classTypeWriter.println();
            }
            i3 = (i6 == 3 || i6 == 4) ? i3 + 2 : i3 + 1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0140 A[LOOP:0: B:3:0x0036->B:55:0x0140, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x013a A[SYNTHETIC] */
    @Override // gnu.bytecode.MiscAttr, gnu.bytecode.Attribute
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void print(gnu.bytecode.ClassTypeWriter r15) {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.bytecode.StackMapTableAttr.print(gnu.bytecode.ClassTypeWriter):void");
    }
}
