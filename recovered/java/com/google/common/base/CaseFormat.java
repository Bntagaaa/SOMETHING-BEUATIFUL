package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@GwtCompatible
/* loaded from: classes.dex */
public abstract class CaseFormat {
    public static final CaseFormat LOWER_CAMEL;
    public static final CaseFormat LOWER_HYPHEN;
    public static final CaseFormat LOWER_UNDERSCORE;
    public static final CaseFormat UPPER_CAMEL;
    public static final CaseFormat UPPER_UNDERSCORE;
    public static final /* synthetic */ CaseFormat[] c;

    /* renamed from: a, reason: collision with root package name */
    public final CharMatcher f3618a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3619b;

    public abstract String d(String str);

    public static CaseFormat valueOf(String str) {
        return (CaseFormat) Enum.valueOf(CaseFormat.class, str);
    }

    public static CaseFormat[] values() {
        return (CaseFormat[]) c.clone();
    }

    static {
        a aVar = new a("LOWER_HYPHEN", 0, CharMatcher.is('-'), "-");
        LOWER_HYPHEN = aVar;
        b bVar = new b("LOWER_UNDERSCORE", 1, CharMatcher.is('_'), "_");
        LOWER_UNDERSCORE = bVar;
        c cVar = new c("LOWER_CAMEL", 2, CharMatcher.inRange('A', 'Z'), "");
        LOWER_CAMEL = cVar;
        d dVar = new d("UPPER_CAMEL", 3, CharMatcher.inRange('A', 'Z'), "");
        UPPER_CAMEL = dVar;
        e eVar = new e("UPPER_UNDERSCORE", 4, CharMatcher.is('_'), "_");
        UPPER_UNDERSCORE = eVar;
        c = new CaseFormat[]{aVar, bVar, cVar, dVar, eVar};
    }

    public enum a extends CaseFormat {
        @Override // com.google.common.base.CaseFormat
        public final String d(String str) {
            return Ascii.toLowerCase(str);
        }

        @Override // com.google.common.base.CaseFormat
        public final String b(CaseFormat caseFormat, String str) {
            if (caseFormat == CaseFormat.LOWER_UNDERSCORE) {
                return str.replace('-', '_');
            }
            if (caseFormat == CaseFormat.UPPER_UNDERSCORE) {
                return Ascii.toUpperCase(str.replace('-', '_'));
            }
            return super.b(caseFormat, str);
        }
    }

    public enum b extends CaseFormat {
        @Override // com.google.common.base.CaseFormat
        public final String d(String str) {
            return Ascii.toLowerCase(str);
        }

        @Override // com.google.common.base.CaseFormat
        public final String b(CaseFormat caseFormat, String str) {
            if (caseFormat == CaseFormat.LOWER_HYPHEN) {
                return str.replace('_', '-');
            }
            if (caseFormat == CaseFormat.UPPER_UNDERSCORE) {
                return Ascii.toUpperCase(str);
            }
            return super.b(caseFormat, str);
        }
    }

    public enum c extends CaseFormat {
        @Override // com.google.common.base.CaseFormat
        public final String d(String str) {
            return CaseFormat.a(str);
        }

        @Override // com.google.common.base.CaseFormat
        public final String c(String str) {
            return Ascii.toLowerCase(str);
        }
    }

    public enum d extends CaseFormat {
        @Override // com.google.common.base.CaseFormat
        public final String d(String str) {
            return CaseFormat.a(str);
        }
    }

    public enum e extends CaseFormat {
        @Override // com.google.common.base.CaseFormat
        public final String d(String str) {
            return Ascii.toUpperCase(str);
        }

        @Override // com.google.common.base.CaseFormat
        public final String b(CaseFormat caseFormat, String str) {
            if (caseFormat == CaseFormat.LOWER_HYPHEN) {
                return Ascii.toLowerCase(str.replace('_', '-'));
            }
            if (caseFormat == CaseFormat.LOWER_UNDERSCORE) {
                return Ascii.toLowerCase(str);
            }
            return super.b(caseFormat, str);
        }
    }

    public CaseFormat(String str, int i, CharMatcher charMatcher, String str2) {
        this.f3618a = charMatcher;
        this.f3619b = str2;
    }

    public final String to(CaseFormat caseFormat, String str) {
        Preconditions.checkNotNull(caseFormat);
        Preconditions.checkNotNull(str);
        return caseFormat == this ? str : b(caseFormat, str);
    }

    public String b(CaseFormat caseFormat, String str) {
        StringBuilder sb = null;
        int length = 0;
        int iIndexIn = -1;
        while (true) {
            iIndexIn = this.f3618a.indexIn(str, iIndexIn + 1);
            if (iIndexIn == -1) {
                break;
            }
            if (length == 0) {
                sb = new StringBuilder((caseFormat.f3619b.length() * 4) + str.length());
                sb.append(caseFormat.c(str.substring(length, iIndexIn)));
            } else {
                sb.append(caseFormat.d(str.substring(length, iIndexIn)));
            }
            sb.append(caseFormat.f3619b);
            length = this.f3619b.length() + iIndexIn;
        }
        if (length == 0) {
            return caseFormat.c(str);
        }
        sb.append(caseFormat.d(str.substring(length)));
        return sb.toString();
    }

    public Converter<String, String> converterTo(CaseFormat caseFormat) {
        return new f(this, caseFormat);
    }

    public static final class f extends Converter<String, String> implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        public final CaseFormat f3620b;
        public final CaseFormat c;

        public f(CaseFormat caseFormat, CaseFormat caseFormat2) {
            this.f3620b = (CaseFormat) Preconditions.checkNotNull(caseFormat);
            this.c = (CaseFormat) Preconditions.checkNotNull(caseFormat2);
        }

        @Override // com.google.common.base.Converter
        public String doForward(String str) {
            return this.f3620b.to(this.c, str);
        }

        @Override // com.google.common.base.Converter
        public String doBackward(String str) {
            return this.c.to(this.f3620b, str);
        }

        @Override // com.google.common.base.Converter, com.google.common.base.Function
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof f) {
                f fVar = (f) obj;
                if (this.f3620b.equals(fVar.f3620b) && this.c.equals(fVar.c)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return this.f3620b.hashCode() ^ this.c.hashCode();
        }

        public String toString() {
            return this.f3620b + ".converterTo(" + this.c + ")";
        }
    }

    public String c(String str) {
        return d(str);
    }

    public static String a(String str) {
        if (str.isEmpty()) {
            return str;
        }
        return Ascii.toUpperCase(str.charAt(0)) + Ascii.toLowerCase(str.substring(1));
    }
}
