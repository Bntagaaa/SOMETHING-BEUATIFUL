package com.google.common.base;

import androidx.core.internal.view.SupportMenu;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.l;
import java.util.Arrays;
import java.util.BitSet;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public abstract class CharMatcher implements Predicate<Character> {

    public static class w extends v {
        @Override // com.google.common.base.CharMatcher
        public final CharMatcher precomputed() {
            return this;
        }
    }

    public abstract boolean matches(char c2);

    public static CharMatcher any() {
        return b.f3623b;
    }

    public static CharMatcher none() {
        return x.f3644b;
    }

    public static CharMatcher whitespace() {
        return b0.c;
    }

    public static CharMatcher breakingWhitespace() {
        return f.f3628a;
    }

    public static CharMatcher ascii() {
        return d.f3626b;
    }

    @Deprecated
    public static CharMatcher digit() {
        return g.d;
    }

    @Deprecated
    public static CharMatcher javaDigit() {
        return o.f3636a;
    }

    @Deprecated
    public static CharMatcher javaLetter() {
        return q.f3638a;
    }

    @Deprecated
    public static CharMatcher javaLetterOrDigit() {
        return r.f3639a;
    }

    @Deprecated
    public static CharMatcher javaUpperCase() {
        return t.f3641a;
    }

    @Deprecated
    public static CharMatcher javaLowerCase() {
        return s.f3640a;
    }

    public static CharMatcher javaIsoControl() {
        return p.f3637b;
    }

    @Deprecated
    public static CharMatcher invisible() {
        return k.d;
    }

    @Deprecated
    public static CharMatcher singleWidth() {
        return a0.d;
    }

    public static CharMatcher is(char c2) {
        return new l(c2);
    }

    public static CharMatcher isNot(char c2) {
        return new n(c2);
    }

    public static CharMatcher anyOf(CharSequence charSequence) {
        int length = charSequence.length();
        if (length == 0) {
            return none();
        }
        if (length == 1) {
            return is(charSequence.charAt(0));
        }
        if (length != 2) {
            return new c(charSequence);
        }
        return new m(charSequence.charAt(0), charSequence.charAt(1));
    }

    public static CharMatcher noneOf(CharSequence charSequence) {
        return anyOf(charSequence).negate();
    }

    public static CharMatcher inRange(char c2, char c3) {
        return new j(c2, c3);
    }

    public static CharMatcher forPredicate(Predicate<? super Character> predicate) {
        return predicate instanceof CharMatcher ? (CharMatcher) predicate : new i(predicate);
    }

    public CharMatcher negate() {
        return new v(this);
    }

    public CharMatcher and(CharMatcher charMatcher) {
        return new a(this, charMatcher);
    }

    public CharMatcher or(CharMatcher charMatcher) {
        return new y(this, charMatcher);
    }

    public CharMatcher precomputed() {
        String strConcat;
        l.b bVar = com.google.common.base.l.f3745a;
        BitSet bitSet = new BitSet();
        d(bitSet);
        int iCardinality = bitSet.cardinality();
        if (iCardinality * 2 <= 65536) {
            return c(iCardinality, bitSet, toString());
        }
        bitSet.flip(0, 65536);
        int i2 = 65536 - iCardinality;
        String string = toString();
        if (!string.endsWith(".negate()")) {
            strConcat = string.concat(".negate()");
        } else {
            strConcat = string.substring(0, string.length() - 9);
        }
        return new com.google.common.base.c(c(i2, bitSet, strConcat), string);
    }

    public static CharMatcher c(int i2, BitSet bitSet, String str) {
        int i3;
        if (i2 == 0) {
            return none();
        }
        if (i2 == 1) {
            return is((char) bitSet.nextSetBit(0));
        }
        int iHighestOneBit = 2;
        if (i2 == 2) {
            char cNextSetBit = (char) bitSet.nextSetBit(0);
            return new m(cNextSetBit, (char) bitSet.nextSetBit(cNextSetBit + 1));
        }
        int length = bitSet.length();
        if (i2 <= 1023 && length > i2 * 64) {
            int iCardinality = bitSet.cardinality();
            boolean z2 = bitSet.get(0);
            if (iCardinality != 1) {
                iHighestOneBit = Integer.highestOneBit(iCardinality - 1) << 1;
                while (iHighestOneBit * 0.5d < iCardinality) {
                    iHighestOneBit <<= 1;
                }
            }
            char[] cArr = new char[iHighestOneBit];
            int i4 = iHighestOneBit - 1;
            int iNextSetBit = bitSet.nextSetBit(0);
            long j2 = 0;
            while (true) {
                long j3 = j2;
                if (iNextSetBit != -1) {
                    j2 = (1 << iNextSetBit) | j3;
                    int iRotateLeft = Integer.rotateLeft((-862048943) * iNextSetBit, 15) * 461845907;
                    while (true) {
                        i3 = iRotateLeft & i4;
                        if (cArr[i3] == 0) {
                            break;
                        }
                        iRotateLeft = i3 + 1;
                    }
                    cArr[i3] = (char) iNextSetBit;
                    iNextSetBit = bitSet.nextSetBit(iNextSetBit + 1);
                } else {
                    return new com.google.common.base.n(cArr, j3, z2, str);
                }
            }
        } else {
            return new e(bitSet, str);
        }
    }

    public void d(BitSet bitSet) {
        for (int i2 = SupportMenu.USER_MASK; i2 >= 0; i2--) {
            if (matches((char) i2)) {
                bitSet.set(i2);
            }
        }
    }

    public boolean matchesAnyOf(CharSequence charSequence) {
        return !matchesNoneOf(charSequence);
    }

    public boolean matchesAllOf(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!matches(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    public boolean matchesNoneOf(CharSequence charSequence) {
        return indexIn(charSequence) == -1;
    }

    public int indexIn(CharSequence charSequence) {
        return indexIn(charSequence, 0);
    }

    public int indexIn(CharSequence charSequence, int i2) {
        int length = charSequence.length();
        Preconditions.checkPositionIndex(i2, length);
        while (i2 < length) {
            if (matches(charSequence.charAt(i2))) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public int lastIndexIn(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (matches(charSequence.charAt(length))) {
                return length;
            }
        }
        return -1;
    }

    public int countIn(CharSequence charSequence) {
        int i2 = 0;
        for (int i3 = 0; i3 < charSequence.length(); i3++) {
            if (matches(charSequence.charAt(i3))) {
                i2++;
            }
        }
        return i2;
    }

    public String removeFrom(CharSequence charSequence) {
        String string = charSequence.toString();
        int iIndexIn = indexIn(string);
        if (iIndexIn == -1) {
            return string;
        }
        char[] charArray = string.toCharArray();
        int i2 = 1;
        while (true) {
            iIndexIn++;
            while (iIndexIn != charArray.length) {
                if (matches(charArray[iIndexIn])) {
                    break;
                }
                charArray[iIndexIn - i2] = charArray[iIndexIn];
                iIndexIn++;
            }
            return new String(charArray, 0, iIndexIn - i2);
            i2++;
        }
    }

    public String retainFrom(CharSequence charSequence) {
        return negate().removeFrom(charSequence);
    }

    public String replaceFrom(CharSequence charSequence, char c2) {
        String string = charSequence.toString();
        int iIndexIn = indexIn(string);
        if (iIndexIn == -1) {
            return string;
        }
        char[] charArray = string.toCharArray();
        charArray[iIndexIn] = c2;
        while (true) {
            iIndexIn++;
            if (iIndexIn < charArray.length) {
                if (matches(charArray[iIndexIn])) {
                    charArray[iIndexIn] = c2;
                }
            } else {
                return new String(charArray);
            }
        }
    }

    public String replaceFrom(CharSequence charSequence, CharSequence charSequence2) {
        int length = charSequence2.length();
        if (length == 0) {
            return removeFrom(charSequence);
        }
        int i2 = 0;
        if (length == 1) {
            return replaceFrom(charSequence, charSequence2.charAt(0));
        }
        String string = charSequence.toString();
        int iIndexIn = indexIn(string);
        if (iIndexIn == -1) {
            return string;
        }
        int length2 = string.length();
        StringBuilder sb = new StringBuilder(((length2 * 3) / 2) + 16);
        do {
            sb.append((CharSequence) string, i2, iIndexIn);
            sb.append(charSequence2);
            i2 = iIndexIn + 1;
            iIndexIn = indexIn(string, i2);
        } while (iIndexIn != -1);
        sb.append((CharSequence) string, i2, length2);
        return sb.toString();
    }

    public String trimFrom(CharSequence charSequence) {
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length && matches(charSequence.charAt(i2))) {
            i2++;
        }
        int i3 = length - 1;
        while (i3 > i2 && matches(charSequence.charAt(i3))) {
            i3--;
        }
        return charSequence.subSequence(i2, i3 + 1).toString();
    }

    public String trimLeadingFrom(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!matches(charSequence.charAt(i2))) {
                return charSequence.subSequence(i2, length).toString();
            }
        }
        return "";
    }

    public String trimTrailingFrom(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!matches(charSequence.charAt(length))) {
                return charSequence.subSequence(0, length + 1).toString();
            }
        }
        return "";
    }

    public String collapseFrom(CharSequence charSequence, char c2) {
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            if (matches(cCharAt)) {
                if (cCharAt != c2 || (i2 != length - 1 && matches(charSequence.charAt(i2 + 1)))) {
                    StringBuilder sb = new StringBuilder(length);
                    sb.append(charSequence, 0, i2);
                    sb.append(c2);
                    return b(charSequence, i2 + 1, length, c2, sb, true);
                }
                i2++;
            }
            i2++;
            c2 = c2;
        }
        return charSequence.toString();
    }

    public String trimAndCollapseFrom(CharSequence charSequence, char c2) {
        int length = charSequence.length();
        int i2 = length - 1;
        int i3 = 0;
        while (i3 < length && matches(charSequence.charAt(i3))) {
            i3++;
        }
        int i4 = i2;
        while (i4 > i3 && matches(charSequence.charAt(i4))) {
            i4--;
        }
        if (i3 == 0 && i4 == i2) {
            return collapseFrom(charSequence, c2);
        }
        int i5 = i4 + 1;
        return b(charSequence, i3, i5, c2, new StringBuilder(i5 - i3), false);
    }

    public final String b(CharSequence charSequence, int i2, int i3, char c2, StringBuilder sb, boolean z2) {
        while (i2 < i3) {
            char cCharAt = charSequence.charAt(i2);
            if (!matches(cCharAt)) {
                sb.append(cCharAt);
                z2 = false;
            } else if (!z2) {
                sb.append(c2);
                z2 = true;
            }
            i2++;
        }
        return sb.toString();
    }

    @Override // com.google.common.base.Predicate
    @Deprecated
    public boolean apply(Character ch) {
        return matches(ch.charValue());
    }

    public String toString() {
        return super.toString();
    }

    public static String a(char c2) {
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[5 - i2] = "0123456789ABCDEF".charAt(c2 & 15);
            c2 = (char) (c2 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    public static abstract class h extends CharMatcher {
        @Override // com.google.common.base.CharMatcher
        public final CharMatcher precomputed() {
            return this;
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher negate() {
            return new w(this);
        }
    }

    public static abstract class u extends h {

        /* renamed from: a, reason: collision with root package name */
        public final String f3642a;

        public u(String str) {
            this.f3642a = (String) Preconditions.checkNotNull(str);
        }

        @Override // com.google.common.base.CharMatcher
        public final String toString() {
            return this.f3642a;
        }
    }

    @GwtIncompatible
    public static final class e extends u {

        /* renamed from: b, reason: collision with root package name */
        public final BitSet f3627b;

        public e(BitSet bitSet, String str) {
            super(str);
            this.f3627b = bitSet.length() + 64 < bitSet.size() ? (BitSet) bitSet.clone() : bitSet;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return this.f3627b.get(c);
        }

        @Override // com.google.common.base.CharMatcher
        public final void d(BitSet bitSet) {
            bitSet.or(this.f3627b);
        }
    }

    public static final class b extends u {

        /* renamed from: b, reason: collision with root package name */
        public static final b f3623b = new b();

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return true;
        }

        private b() {
            super("CharMatcher.any()");
        }

        @Override // com.google.common.base.CharMatcher
        public int indexIn(CharSequence charSequence) {
            return charSequence.length() == 0 ? -1 : 0;
        }

        @Override // com.google.common.base.CharMatcher
        public int indexIn(CharSequence charSequence, int i) {
            int length = charSequence.length();
            Preconditions.checkPositionIndex(i, length);
            if (i == length) {
                return -1;
            }
            return i;
        }

        @Override // com.google.common.base.CharMatcher
        public int lastIndexIn(CharSequence charSequence) {
            return charSequence.length() - 1;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesAllOf(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesNoneOf(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // com.google.common.base.CharMatcher
        public String removeFrom(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return "";
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, char c) {
            char[] cArr = new char[charSequence.length()];
            Arrays.fill(cArr, c);
            return new String(cArr);
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, CharSequence charSequence2) {
            StringBuilder sb = new StringBuilder(charSequence2.length() * charSequence.length());
            for (int i = 0; i < charSequence.length(); i++) {
                sb.append(charSequence2);
            }
            return sb.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String collapseFrom(CharSequence charSequence, char c) {
            return charSequence.length() == 0 ? "" : String.valueOf(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String trimFrom(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return "";
        }

        @Override // com.google.common.base.CharMatcher
        public int countIn(CharSequence charSequence) {
            return charSequence.length();
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            return (CharMatcher) Preconditions.checkNotNull(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher or(CharMatcher charMatcher) {
            Preconditions.checkNotNull(charMatcher);
            return this;
        }

        @Override // com.google.common.base.CharMatcher.h, com.google.common.base.CharMatcher
        public CharMatcher negate() {
            return CharMatcher.none();
        }
    }

    public static final class x extends u {

        /* renamed from: b, reason: collision with root package name */
        public static final x f3644b = new x();

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return false;
        }

        private x() {
            super("CharMatcher.none()");
        }

        @Override // com.google.common.base.CharMatcher
        public int indexIn(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return -1;
        }

        @Override // com.google.common.base.CharMatcher
        public int indexIn(CharSequence charSequence, int i) {
            Preconditions.checkPositionIndex(i, charSequence.length());
            return -1;
        }

        @Override // com.google.common.base.CharMatcher
        public int lastIndexIn(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return -1;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesAllOf(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesNoneOf(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        public String removeFrom(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, char c) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, CharSequence charSequence2) {
            Preconditions.checkNotNull(charSequence2);
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String collapseFrom(CharSequence charSequence, char c) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String trimFrom(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String trimLeadingFrom(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String trimTrailingFrom(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public int countIn(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return 0;
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            Preconditions.checkNotNull(charMatcher);
            return this;
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher or(CharMatcher charMatcher) {
            return (CharMatcher) Preconditions.checkNotNull(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher.h, com.google.common.base.CharMatcher
        public CharMatcher negate() {
            return CharMatcher.any();
        }
    }

    @VisibleForTesting
    public static final class b0 extends u {

        /* renamed from: b, reason: collision with root package name */
        public static final int f3624b = Integer.numberOfLeadingZeros(31);
        public static final b0 c = new b0();

        public b0() {
            super("CharMatcher.whitespace()");
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c2) {
            return "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".charAt((48906 * c2) >>> f3624b) == c2;
        }

        @Override // com.google.common.base.CharMatcher
        public final void d(BitSet bitSet) {
            for (int i = 0; i < 32; i++) {
                bitSet.set("\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".charAt(i));
            }
        }
    }

    public static final class f extends CharMatcher {

        /* renamed from: a, reason: collision with root package name */
        public static final CharMatcher f3628a = new f();

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            if (c != ' ' && c != 133 && c != 5760) {
                if (c != 8199) {
                    if (c != 8287 && c != 12288 && c != 8232 && c != 8233) {
                        switch (c) {
                            case '\t':
                            case '\n':
                            case 11:
                            case '\f':
                            case '\r':
                                break;
                            default:
                                if (c >= 8192 && c <= 8202) {
                                    return true;
                                }
                                break;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        private f() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.breakingWhitespace()";
        }
    }

    public static final class d extends u {

        /* renamed from: b, reason: collision with root package name */
        public static final d f3626b = new d();

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return c <= 127;
        }

        public d() {
            super("CharMatcher.ascii()");
        }
    }

    public static class z extends CharMatcher {

        /* renamed from: a, reason: collision with root package name */
        public final String f3647a;

        /* renamed from: b, reason: collision with root package name */
        public final char[] f3648b;
        public final char[] c;

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        public z(String str, char[] cArr, char[] cArr2) {
            this.f3647a = str;
            this.f3648b = cArr;
            this.c = cArr2;
            Preconditions.checkArgument(cArr.length == cArr2.length);
            int i = 0;
            while (i < cArr.length) {
                Preconditions.checkArgument(cArr[i] <= cArr2[i]);
                int i2 = i + 1;
                if (i2 < cArr.length) {
                    Preconditions.checkArgument(cArr2[i] < cArr[i2]);
                }
                i = i2;
            }
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            int iBinarySearch = Arrays.binarySearch(this.f3648b, c);
            if (iBinarySearch >= 0) {
                return true;
            }
            int i = (~iBinarySearch) - 1;
            return i >= 0 && c <= this.c[i];
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return this.f3647a;
        }
    }

    public static final class g extends z {
        public static final g d = new g();

        /* JADX WARN: Illegal instructions before constructor call */
        private g() {
            char[] charArray = "0٠۰߀०০੦૦୦௦౦೦൦෦๐໐༠၀႐០᠐᥆᧐᪀᪐᭐᮰᱀᱐꘠꣐꤀꧐꧰꩐꯰０".toCharArray();
            char[] cArr = new char[37];
            for (int i = 0; i < 37; i++) {
                cArr[i] = (char) ("0٠۰߀०০੦૦୦௦౦೦൦෦๐໐༠၀႐០᠐᥆᧐᪀᪐᭐᮰᱀᱐꘠꣐꤀꧐꧰꩐꯰０".charAt(i) + '\t');
            }
            super("CharMatcher.digit()", charArray, cArr);
        }
    }

    public static final class o extends CharMatcher {

        /* renamed from: a, reason: collision with root package name */
        public static final o f3636a = new o();

        private o() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isDigit(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaDigit()";
        }
    }

    public static final class q extends CharMatcher {

        /* renamed from: a, reason: collision with root package name */
        public static final q f3638a = new q();

        private q() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isLetter(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaLetter()";
        }
    }

    public static final class r extends CharMatcher {

        /* renamed from: a, reason: collision with root package name */
        public static final r f3639a = new r();

        private r() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isLetterOrDigit(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaLetterOrDigit()";
        }
    }

    public static final class t extends CharMatcher {

        /* renamed from: a, reason: collision with root package name */
        public static final t f3641a = new t();

        private t() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isUpperCase(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaUpperCase()";
        }
    }

    public static final class s extends CharMatcher {

        /* renamed from: a, reason: collision with root package name */
        public static final s f3640a = new s();

        private s() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isLowerCase(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaLowerCase()";
        }
    }

    public static final class p extends u {

        /* renamed from: b, reason: collision with root package name */
        public static final p f3637b = new p();

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            if (c > 31) {
                return c >= 127 && c <= 159;
            }
            return true;
        }

        private p() {
            super("CharMatcher.javaIsoControl()");
        }
    }

    public static final class k extends z {
        public static final k d = new k();

        private k() {
            super("CharMatcher.invisible()", "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u08e2\u1680\u180e\u2000\u2028\u205f\u2066\u3000\ud800\ufeff\ufff9".toCharArray(), "  \u00ad\u0605\u061c\u06dd\u070f\u08e2\u1680\u180e\u200f \u2064\u206f\u3000\uf8ff\ufeff\ufffb".toCharArray());
        }
    }

    public static final class a0 extends z {
        public static final a0 d = new a0();

        private a0() {
            super("CharMatcher.singleWidth()", "\u0000־א׳\u0600ݐ\u0e00Ḁ℀ﭐﹰ｡".toCharArray(), "ӹ־ת״ۿݿ\u0e7f₯℺﷿\ufeffￜ".toCharArray());
        }
    }

    public static class v extends CharMatcher {

        /* renamed from: a, reason: collision with root package name */
        public final CharMatcher f3643a;

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        public v(CharMatcher charMatcher) {
            this.f3643a = (CharMatcher) Preconditions.checkNotNull(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return !this.f3643a.matches(c);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesAllOf(CharSequence charSequence) {
            return this.f3643a.matchesNoneOf(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesNoneOf(CharSequence charSequence) {
            return this.f3643a.matchesAllOf(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        public int countIn(CharSequence charSequence) {
            return charSequence.length() - this.f3643a.countIn(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        public final void d(BitSet bitSet) {
            BitSet bitSet2 = new BitSet();
            this.f3643a.d(bitSet2);
            bitSet2.flip(0, 65536);
            bitSet.or(bitSet2);
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher negate() {
            return this.f3643a;
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return this.f3643a + ".negate()";
        }
    }

    public static final class a extends CharMatcher {

        /* renamed from: a, reason: collision with root package name */
        public final CharMatcher f3621a;

        /* renamed from: b, reason: collision with root package name */
        public final CharMatcher f3622b;

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        public a(CharMatcher charMatcher, CharMatcher charMatcher2) {
            this.f3621a = (CharMatcher) Preconditions.checkNotNull(charMatcher);
            this.f3622b = (CharMatcher) Preconditions.checkNotNull(charMatcher2);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return this.f3621a.matches(c) && this.f3622b.matches(c);
        }

        @Override // com.google.common.base.CharMatcher
        public final void d(BitSet bitSet) {
            BitSet bitSet2 = new BitSet();
            this.f3621a.d(bitSet2);
            BitSet bitSet3 = new BitSet();
            this.f3622b.d(bitSet3);
            bitSet2.and(bitSet3);
            bitSet.or(bitSet2);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.and(" + this.f3621a + ", " + this.f3622b + ")";
        }
    }

    public static final class y extends CharMatcher {

        /* renamed from: a, reason: collision with root package name */
        public final CharMatcher f3645a;

        /* renamed from: b, reason: collision with root package name */
        public final CharMatcher f3646b;

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        public y(CharMatcher charMatcher, CharMatcher charMatcher2) {
            this.f3645a = (CharMatcher) Preconditions.checkNotNull(charMatcher);
            this.f3646b = (CharMatcher) Preconditions.checkNotNull(charMatcher2);
        }

        @Override // com.google.common.base.CharMatcher
        public final void d(BitSet bitSet) {
            this.f3645a.d(bitSet);
            this.f3646b.d(bitSet);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return this.f3645a.matches(c) || this.f3646b.matches(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.or(" + this.f3645a + ", " + this.f3646b + ")";
        }
    }

    public static final class l extends h {

        /* renamed from: a, reason: collision with root package name */
        public final char f3632a;

        public l(char c) {
            this.f3632a = c;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return c == this.f3632a;
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, char c) {
            return charSequence.toString().replace(this.f3632a, c);
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            return charMatcher.matches(this.f3632a) ? this : CharMatcher.none();
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher or(CharMatcher charMatcher) {
            return charMatcher.matches(this.f3632a) ? charMatcher : super.or(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher.h, com.google.common.base.CharMatcher
        public CharMatcher negate() {
            return CharMatcher.isNot(this.f3632a);
        }

        @Override // com.google.common.base.CharMatcher
        public final void d(BitSet bitSet) {
            bitSet.set(this.f3632a);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.is('" + CharMatcher.a(this.f3632a) + "')";
        }
    }

    public static final class n extends h {

        /* renamed from: a, reason: collision with root package name */
        public final char f3635a;

        public n(char c) {
            this.f3635a = c;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return c != this.f3635a;
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            return charMatcher.matches(this.f3635a) ? super.and(charMatcher) : charMatcher;
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher or(CharMatcher charMatcher) {
            return charMatcher.matches(this.f3635a) ? CharMatcher.any() : this;
        }

        @Override // com.google.common.base.CharMatcher
        public final void d(BitSet bitSet) {
            char c = this.f3635a;
            bitSet.set(0, c);
            bitSet.set(c + 1, 65536);
        }

        @Override // com.google.common.base.CharMatcher.h, com.google.common.base.CharMatcher
        public CharMatcher negate() {
            return CharMatcher.is(this.f3635a);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.isNot('" + CharMatcher.a(this.f3635a) + "')";
        }
    }

    public static final class m extends h {

        /* renamed from: a, reason: collision with root package name */
        public final char f3633a;

        /* renamed from: b, reason: collision with root package name */
        public final char f3634b;

        public m(char c, char c2) {
            this.f3633a = c;
            this.f3634b = c2;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return c == this.f3633a || c == this.f3634b;
        }

        @Override // com.google.common.base.CharMatcher
        public final void d(BitSet bitSet) {
            bitSet.set(this.f3633a);
            bitSet.set(this.f3634b);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.anyOf(\"" + CharMatcher.a(this.f3633a) + CharMatcher.a(this.f3634b) + "\")";
        }
    }

    public static final class c extends CharMatcher {

        /* renamed from: a, reason: collision with root package name */
        public final char[] f3625a;

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        public c(CharSequence charSequence) {
            char[] charArray = charSequence.toString().toCharArray();
            this.f3625a = charArray;
            Arrays.sort(charArray);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Arrays.binarySearch(this.f3625a, c) >= 0;
        }

        @Override // com.google.common.base.CharMatcher
        public final void d(BitSet bitSet) {
            for (char c : this.f3625a) {
                bitSet.set(c);
            }
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            StringBuilder sb = new StringBuilder("CharMatcher.anyOf(\"");
            for (char c : this.f3625a) {
                sb.append(CharMatcher.a(c));
            }
            sb.append("\")");
            return sb.toString();
        }
    }

    public static final class j extends h {

        /* renamed from: a, reason: collision with root package name */
        public final char f3630a;

        /* renamed from: b, reason: collision with root package name */
        public final char f3631b;

        public j(char c, char c2) {
            Preconditions.checkArgument(c2 >= c);
            this.f3630a = c;
            this.f3631b = c2;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return this.f3630a <= c && c <= this.f3631b;
        }

        @Override // com.google.common.base.CharMatcher
        public final void d(BitSet bitSet) {
            bitSet.set(this.f3630a, this.f3631b + 1);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.inRange('" + CharMatcher.a(this.f3630a) + "', '" + CharMatcher.a(this.f3631b) + "')";
        }
    }

    public static final class i extends CharMatcher {

        /* renamed from: a, reason: collision with root package name */
        public final Predicate f3629a;

        public i(Predicate predicate) {
            this.f3629a = (Predicate) Preconditions.checkNotNull(predicate);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return this.f3629a.apply(Character.valueOf(c));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        public boolean apply(Character ch) {
            return this.f3629a.apply(Preconditions.checkNotNull(ch));
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.forPredicate(" + this.f3629a + ")";
        }
    }
}
