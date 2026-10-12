package gnu.kawa.functions;

import gnu.lists.Pair;
import gnu.lists.Sequence;
import gnu.text.CompoundFormat;
import gnu.text.ReportFormat;
import java.text.ParseException;
import java.util.Vector;

/* loaded from: classes2.dex */
public class LispFormat extends CompoundFormat {
    public static final String paramFromCount = "<from count>";
    public static final String paramFromList = "<from list>";
    public static final String paramUnspecified = "<unspecified>";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x022d, code lost:
    
        throw new java.text.ParseException("saw ~] without matching ~[", r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x03cd, code lost:
    
        throw new java.text.ParseException("saw ~> without matching ~<", r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x0444, code lost:
    
        throw new java.text.ParseException("saw ~; without matching ~[ or ~<", r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0172, code lost:
    
        throw new java.text.ParseException("saw ~} without matching ~{", r8);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0543 A[LOOP:2: B:24:0x006a->B:261:0x0543, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:288:0x00fc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0182  */
    /* JADX WARN: Type inference failed for: r27v0, types: [int] */
    /* JADX WARN: Type inference failed for: r3v33, types: [gnu.kawa.functions.LispIterationFormat] */
    /* JADX WARN: Type inference failed for: r3v42 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LispFormat(char[] r30, int r31, int r32) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 1510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.functions.LispFormat.<init>(char[], int, int):void");
    }

    public static java.text.Format[] getFormats(Vector vector, int i, int i2) {
        java.text.Format[] formatArr = new java.text.Format[i2 - i];
        for (int i3 = i; i3 < i2; i3++) {
            formatArr[i3 - i] = (java.text.Format) vector.elementAt(i3);
        }
        return formatArr;
    }

    public static java.text.Format popFormats(Vector vector, int i, int i2) {
        java.text.Format compoundFormat;
        if (i2 == i + 1) {
            compoundFormat = (java.text.Format) vector.elementAt(i);
        } else {
            compoundFormat = new CompoundFormat(getFormats(vector, i, i2));
        }
        vector.setSize(i);
        return compoundFormat;
    }

    public LispFormat(String str) throws ParseException {
        this(str.toCharArray());
    }

    public LispFormat(char[] cArr) throws ParseException {
        this(cArr, 0, cArr.length);
    }

    public static int getParam(Vector vector, int i) {
        if (i >= vector.size()) {
            return -1073741824;
        }
        Object objElementAt = vector.elementAt(i);
        if (objElementAt == paramFromList) {
            return -1610612736;
        }
        if (objElementAt == paramFromCount) {
            return ReportFormat.PARAM_FROM_COUNT;
        }
        if (objElementAt == paramUnspecified) {
            return -1073741824;
        }
        return ReportFormat.getParam(objElementAt, -1073741824);
    }

    public static Object[] asArray(Object obj) {
        if (obj instanceof Object[]) {
            return (Object[]) obj;
        }
        if (!(obj instanceof Sequence)) {
            return null;
        }
        int size = ((Sequence) obj).size();
        Object[] objArr = new Object[size];
        int i = 0;
        while (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            objArr[i] = pair.getCar();
            obj = pair.getCdr();
            i++;
        }
        if (i < size) {
            if (!(obj instanceof Sequence)) {
                return null;
            }
            Sequence sequence = (Sequence) obj;
            for (int i2 = i; i2 < size; i2++) {
                objArr[i2] = sequence.get(i + i2);
            }
        }
        return objArr;
    }
}
