package androidx.core.text;

import android.text.SpannableStringBuilder;
import java.util.Locale;

/* loaded from: classes.dex */
public final class BidiFormatter {
    public static final TextDirectionHeuristicCompat d;
    public static final String e;
    public static final String f;

    /* renamed from: g, reason: collision with root package name */
    public static final BidiFormatter f1194g;
    public static final BidiFormatter h;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f1195a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1196b;
    public final TextDirectionHeuristicCompat c;

    static {
        TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
        d = textDirectionHeuristicCompat;
        e = Character.toString((char) 8206);
        f = Character.toString((char) 8207);
        f1194g = new BidiFormatter(false, 2, textDirectionHeuristicCompat);
        h = new BidiFormatter(true, 2, textDirectionHeuristicCompat);
    }

    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final boolean f1197a;

        /* renamed from: b, reason: collision with root package name */
        public int f1198b;
        public TextDirectionHeuristicCompat c;

        public Builder() {
            Locale locale = Locale.getDefault();
            TextDirectionHeuristicCompat textDirectionHeuristicCompat = BidiFormatter.d;
            this.f1197a = TextUtilsCompat.getLayoutDirectionFromLocale(locale) == 1;
            this.c = BidiFormatter.d;
            this.f1198b = 2;
        }

        public Builder(boolean z) {
            this.f1197a = z;
            this.c = BidiFormatter.d;
            this.f1198b = 2;
        }

        public Builder(Locale locale) {
            TextDirectionHeuristicCompat textDirectionHeuristicCompat = BidiFormatter.d;
            this.f1197a = TextUtilsCompat.getLayoutDirectionFromLocale(locale) == 1;
            this.c = BidiFormatter.d;
            this.f1198b = 2;
        }

        public Builder stereoReset(boolean z) {
            if (z) {
                this.f1198b |= 2;
                return this;
            }
            this.f1198b &= -3;
            return this;
        }

        public Builder setTextDirectionHeuristic(TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
            this.c = textDirectionHeuristicCompat;
            return this;
        }

        public BidiFormatter build() {
            if (this.f1198b == 2 && this.c == BidiFormatter.d) {
                return this.f1197a ? BidiFormatter.h : BidiFormatter.f1194g;
            }
            return new BidiFormatter(this.f1197a, this.f1198b, this.c);
        }
    }

    public static BidiFormatter getInstance() {
        return new Builder().build();
    }

    public static BidiFormatter getInstance(boolean z) {
        return new Builder(z).build();
    }

    public static BidiFormatter getInstance(Locale locale) {
        return new Builder(locale).build();
    }

    public BidiFormatter(boolean z, int i, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        this.f1195a = z;
        this.f1196b = i;
        this.c = textDirectionHeuristicCompat;
    }

    public boolean isRtlContext() {
        return this.f1195a;
    }

    public boolean getStereoReset() {
        return (this.f1196b & 2) != 0;
    }

    public boolean isRtl(String str) {
        return isRtl((CharSequence) str);
    }

    public boolean isRtl(CharSequence charSequence) {
        return this.c.isRtl(charSequence, 0, charSequence.length());
    }

    public String unicodeWrap(String str, TextDirectionHeuristicCompat textDirectionHeuristicCompat, boolean z) {
        if (str == null) {
            return null;
        }
        return unicodeWrap((CharSequence) str, textDirectionHeuristicCompat, z).toString();
    }

    public CharSequence unicodeWrap(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat, boolean z) {
        String str;
        if (charSequence == null) {
            return null;
        }
        boolean zIsRtl = textDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        boolean stereoReset = getStereoReset();
        String str2 = "";
        String str3 = f;
        String str4 = e;
        boolean z2 = this.f1195a;
        if (stereoReset && z) {
            boolean zIsRtl2 = (zIsRtl ? TextDirectionHeuristicsCompat.RTL : TextDirectionHeuristicsCompat.LTR).isRtl(charSequence, 0, charSequence.length());
            if (z2 || !(zIsRtl2 || a(charSequence) == 1)) {
                str = (!z2 || (zIsRtl2 && a(charSequence) != -1)) ? "" : str3;
            } else {
                str = str4;
            }
            spannableStringBuilder.append((CharSequence) str);
        }
        if (zIsRtl != z2) {
            spannableStringBuilder.append(zIsRtl ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z) {
            boolean zIsRtl3 = (zIsRtl ? TextDirectionHeuristicsCompat.RTL : TextDirectionHeuristicsCompat.LTR).isRtl(charSequence, 0, charSequence.length());
            if (!z2 && (zIsRtl3 || b(charSequence) == 1)) {
                str2 = str4;
            } else if (z2 && (!zIsRtl3 || b(charSequence) == -1)) {
                str2 = str3;
            }
            spannableStringBuilder.append((CharSequence) str2);
        }
        return spannableStringBuilder;
    }

    public String unicodeWrap(String str, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        return unicodeWrap(str, textDirectionHeuristicCompat, true);
    }

    public CharSequence unicodeWrap(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        return unicodeWrap(charSequence, textDirectionHeuristicCompat, true);
    }

    public String unicodeWrap(String str, boolean z) {
        return unicodeWrap(str, this.c, z);
    }

    public CharSequence unicodeWrap(CharSequence charSequence, boolean z) {
        return unicodeWrap(charSequence, this.c, z);
    }

    public String unicodeWrap(String str) {
        return unicodeWrap(str, this.c, true);
    }

    public CharSequence unicodeWrap(CharSequence charSequence) {
        return unicodeWrap(charSequence, this.c, true);
    }

    public static int b(CharSequence charSequence) {
        a aVar = new a(charSequence);
        aVar.c = aVar.f1200b;
        int i = 0;
        int i2 = 0;
        while (aVar.c > 0) {
            byte bA = aVar.a();
            if (bA != 0) {
                if (bA == 1 || bA == 2) {
                    if (i == 0) {
                        return 1;
                    }
                    if (i2 == 0) {
                        i2 = i;
                    }
                } else if (bA != 9) {
                    switch (bA) {
                        case 14:
                        case 15:
                            if (i2 == i) {
                                return -1;
                            }
                            i--;
                            break;
                        case 16:
                        case 17:
                            if (i2 == i) {
                                return 1;
                            }
                            i--;
                            break;
                        case 18:
                            i++;
                            break;
                        default:
                            if (i2 != 0) {
                                break;
                            } else {
                                i2 = i;
                                break;
                            }
                    }
                } else {
                    continue;
                }
            } else {
                if (i == 0) {
                    return -1;
                }
                if (i2 == 0) {
                    i2 = i;
                }
            }
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x006e, code lost:
    
        if (r1 != 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0071, code lost:
    
        if (r2 == 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0073, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0076, code lost:
    
        if (r0.c <= 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007c, code lost:
    
        switch(r0.a()) {
            case 14: goto L66;
            case 15: goto L66;
            case 16: goto L65;
            case 17: goto L65;
            case 18: goto L64;
            default: goto L70;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0080, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0083, code lost:
    
        if (r1 != r3) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0085, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0086, code lost:
    
        r3 = r3 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0089, code lost:
    
        if (r1 != r3) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008c, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(java.lang.CharSequence r9) {
        /*
            androidx.core.text.BidiFormatter$a r0 = new androidx.core.text.BidiFormatter$a
            r0.<init>(r9)
            r9 = 0
            r0.c = r9
            r1 = 0
            r2 = 0
            r3 = 0
        Lb:
            int r4 = r0.c
            int r5 = r0.f1200b
            r6 = 1
            r7 = -1
            if (r4 >= r5) goto L6e
            if (r1 != 0) goto L6e
            java.lang.CharSequence r5 = r0.f1199a
            char r4 = r5.charAt(r4)
            r0.d = r4
            boolean r4 = java.lang.Character.isHighSurrogate(r4)
            if (r4 == 0) goto L37
            int r4 = r0.c
            int r4 = java.lang.Character.codePointAt(r5, r4)
            int r5 = r0.c
            int r8 = java.lang.Character.charCount(r4)
            int r8 = r8 + r5
            r0.c = r8
            byte r4 = java.lang.Character.getDirectionality(r4)
            goto L4b
        L37:
            int r4 = r0.c
            int r4 = r4 + r6
            r0.c = r4
            char r4 = r0.d
            r5 = 1792(0x700, float:2.511E-42)
            if (r4 >= r5) goto L47
            byte[] r5 = androidx.core.text.BidiFormatter.a.e
            r4 = r5[r4]
            goto L4b
        L47:
            byte r4 = java.lang.Character.getDirectionality(r4)
        L4b:
            if (r4 == 0) goto L69
            if (r4 == r6) goto L66
            r5 = 2
            if (r4 == r5) goto L66
            r5 = 9
            if (r4 == r5) goto Lb
            switch(r4) {
                case 14: goto L62;
                case 15: goto L62;
                case 16: goto L5e;
                case 17: goto L5e;
                case 18: goto L5a;
                default: goto L59;
            }
        L59:
            goto L6c
        L5a:
            int r3 = r3 + (-1)
            r2 = 0
            goto Lb
        L5e:
            int r3 = r3 + 1
            r2 = 1
            goto Lb
        L62:
            int r3 = r3 + 1
            r2 = -1
            goto Lb
        L66:
            if (r3 != 0) goto L6c
            goto L85
        L69:
            if (r3 != 0) goto L6c
            goto L8b
        L6c:
            r1 = r3
            goto Lb
        L6e:
            if (r1 != 0) goto L71
            goto L8c
        L71:
            if (r2 == 0) goto L74
            return r2
        L74:
            int r2 = r0.c
            if (r2 <= 0) goto L8c
            byte r2 = r0.a()
            switch(r2) {
                case 14: goto L89;
                case 15: goto L89;
                case 16: goto L83;
                case 17: goto L83;
                case 18: goto L80;
                default: goto L7f;
            }
        L7f:
            goto L74
        L80:
            int r3 = r3 + 1
            goto L74
        L83:
            if (r1 != r3) goto L86
        L85:
            return r6
        L86:
            int r3 = r3 + (-1)
            goto L74
        L89:
            if (r1 != r3) goto L86
        L8b:
            return r7
        L8c:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.text.BidiFormatter.a(java.lang.CharSequence):int");
    }

    public static class a {
        public static final byte[] e = new byte[1792];

        /* renamed from: a, reason: collision with root package name */
        public final CharSequence f1199a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1200b;
        public int c;
        public char d;

        static {
            for (int i = 0; i < 1792; i++) {
                e[i] = Character.getDirectionality(i);
            }
        }

        public a(CharSequence charSequence) {
            this.f1199a = charSequence;
            this.f1200b = charSequence.length();
        }

        public final byte a() {
            int i = this.c - 1;
            CharSequence charSequence = this.f1199a;
            char cCharAt = charSequence.charAt(i);
            this.d = cCharAt;
            if (Character.isLowSurrogate(cCharAt)) {
                int iCodePointBefore = Character.codePointBefore(charSequence, this.c);
                this.c -= Character.charCount(iCodePointBefore);
                return Character.getDirectionality(iCodePointBefore);
            }
            this.c--;
            char c = this.d;
            return c < 1792 ? e[c] : Character.getDirectionality(c);
        }
    }
}
