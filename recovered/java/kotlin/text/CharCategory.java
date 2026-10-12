package kotlin.text;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b%\b\u0086\u0081\u0002\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0013J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1¨\u00062"}, d2 = {"Lkotlin/text/CharCategory;", "", "", "char", "", "contains", "(C)Z", "", "a", "I", "getValue", "()I", "value", "", "b", "Ljava/lang/String;", "getCode", "()Ljava/lang/String;", "code", "Companion", "UNASSIGNED", "UPPERCASE_LETTER", "LOWERCASE_LETTER", "TITLECASE_LETTER", "MODIFIER_LETTER", "OTHER_LETTER", "NON_SPACING_MARK", "ENCLOSING_MARK", "COMBINING_SPACING_MARK", "DECIMAL_DIGIT_NUMBER", "LETTER_NUMBER", "OTHER_NUMBER", "SPACE_SEPARATOR", "LINE_SEPARATOR", "PARAGRAPH_SEPARATOR", "CONTROL", "FORMAT", "PRIVATE_USE", "SURROGATE", "DASH_PUNCTUATION", "START_PUNCTUATION", "END_PUNCTUATION", "CONNECTOR_PUNCTUATION", "OTHER_PUNCTUATION", "MATH_SYMBOL", "CURRENCY_SYMBOL", "MODIFIER_SYMBOL", "OTHER_SYMBOL", "INITIAL_QUOTE_PUNCTUATION", "FINAL_QUOTE_PUNCTUATION", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class CharCategory {
    public static final CharCategory COMBINING_SPACING_MARK;
    public static final CharCategory CONNECTOR_PUNCTUATION;
    public static final CharCategory CONTROL;
    public static final CharCategory CURRENCY_SYMBOL;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final CharCategory DASH_PUNCTUATION;
    public static final CharCategory DECIMAL_DIGIT_NUMBER;
    public static final CharCategory ENCLOSING_MARK;
    public static final CharCategory END_PUNCTUATION;
    public static final CharCategory FINAL_QUOTE_PUNCTUATION;
    public static final CharCategory FORMAT;
    public static final CharCategory INITIAL_QUOTE_PUNCTUATION;
    public static final CharCategory LETTER_NUMBER;
    public static final CharCategory LINE_SEPARATOR;
    public static final CharCategory LOWERCASE_LETTER;
    public static final CharCategory MATH_SYMBOL;
    public static final CharCategory MODIFIER_LETTER;
    public static final CharCategory MODIFIER_SYMBOL;
    public static final CharCategory NON_SPACING_MARK;
    public static final CharCategory OTHER_LETTER;
    public static final CharCategory OTHER_NUMBER;
    public static final CharCategory OTHER_PUNCTUATION;
    public static final CharCategory OTHER_SYMBOL;
    public static final CharCategory PARAGRAPH_SEPARATOR;
    public static final CharCategory PRIVATE_USE;
    public static final CharCategory SPACE_SEPARATOR;
    public static final CharCategory START_PUNCTUATION;
    public static final CharCategory SURROGATE;
    public static final CharCategory TITLECASE_LETTER;
    public static final CharCategory UNASSIGNED;
    public static final CharCategory UPPERCASE_LETTER;
    public static final /* synthetic */ CharCategory[] c;
    public static final /* synthetic */ EnumEntries d;

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final int value;

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final String code;

    @NotNull
    public static EnumEntries<CharCategory> getEntries() {
        return d;
    }

    public CharCategory(int i, int i2, String str, String str2) {
        this.value = i2;
        this.code = str2;
    }

    @NotNull
    public final String getCode() {
        return this.code;
    }

    public final int getValue() {
        return this.value;
    }

    static {
        CharCategory charCategory = new CharCategory(0, 0, "UNASSIGNED", "Cn");
        UNASSIGNED = charCategory;
        CharCategory charCategory2 = new CharCategory(1, 1, "UPPERCASE_LETTER", "Lu");
        UPPERCASE_LETTER = charCategory2;
        CharCategory charCategory3 = new CharCategory(2, 2, "LOWERCASE_LETTER", "Ll");
        LOWERCASE_LETTER = charCategory3;
        CharCategory charCategory4 = new CharCategory(3, 3, "TITLECASE_LETTER", "Lt");
        TITLECASE_LETTER = charCategory4;
        CharCategory charCategory5 = new CharCategory(4, 4, "MODIFIER_LETTER", "Lm");
        MODIFIER_LETTER = charCategory5;
        CharCategory charCategory6 = new CharCategory(5, 5, "OTHER_LETTER", "Lo");
        OTHER_LETTER = charCategory6;
        CharCategory charCategory7 = new CharCategory(6, 6, "NON_SPACING_MARK", "Mn");
        NON_SPACING_MARK = charCategory7;
        CharCategory charCategory8 = new CharCategory(7, 7, "ENCLOSING_MARK", "Me");
        ENCLOSING_MARK = charCategory8;
        CharCategory charCategory9 = new CharCategory(8, 8, "COMBINING_SPACING_MARK", "Mc");
        COMBINING_SPACING_MARK = charCategory9;
        CharCategory charCategory10 = new CharCategory(9, 9, "DECIMAL_DIGIT_NUMBER", "Nd");
        DECIMAL_DIGIT_NUMBER = charCategory10;
        CharCategory charCategory11 = new CharCategory(10, 10, "LETTER_NUMBER", "Nl");
        LETTER_NUMBER = charCategory11;
        CharCategory charCategory12 = new CharCategory(11, 11, "OTHER_NUMBER", "No");
        OTHER_NUMBER = charCategory12;
        CharCategory charCategory13 = new CharCategory(12, 12, "SPACE_SEPARATOR", "Zs");
        SPACE_SEPARATOR = charCategory13;
        CharCategory charCategory14 = new CharCategory(13, 13, "LINE_SEPARATOR", "Zl");
        LINE_SEPARATOR = charCategory14;
        CharCategory charCategory15 = new CharCategory(14, 14, "PARAGRAPH_SEPARATOR", "Zp");
        PARAGRAPH_SEPARATOR = charCategory15;
        CharCategory charCategory16 = new CharCategory(15, 15, "CONTROL", "Cc");
        CONTROL = charCategory16;
        CharCategory charCategory17 = new CharCategory(16, 16, "FORMAT", "Cf");
        FORMAT = charCategory17;
        CharCategory charCategory18 = new CharCategory(17, 18, "PRIVATE_USE", "Co");
        PRIVATE_USE = charCategory18;
        CharCategory charCategory19 = new CharCategory(18, 19, "SURROGATE", "Cs");
        SURROGATE = charCategory19;
        CharCategory charCategory20 = new CharCategory(19, 20, "DASH_PUNCTUATION", "Pd");
        DASH_PUNCTUATION = charCategory20;
        CharCategory charCategory21 = new CharCategory(20, 21, "START_PUNCTUATION", "Ps");
        START_PUNCTUATION = charCategory21;
        CharCategory charCategory22 = new CharCategory(21, 22, "END_PUNCTUATION", "Pe");
        END_PUNCTUATION = charCategory22;
        CharCategory charCategory23 = new CharCategory(22, 23, "CONNECTOR_PUNCTUATION", "Pc");
        CONNECTOR_PUNCTUATION = charCategory23;
        CharCategory charCategory24 = new CharCategory(23, 24, "OTHER_PUNCTUATION", "Po");
        OTHER_PUNCTUATION = charCategory24;
        CharCategory charCategory25 = new CharCategory(24, 25, "MATH_SYMBOL", "Sm");
        MATH_SYMBOL = charCategory25;
        CharCategory charCategory26 = new CharCategory(25, 26, "CURRENCY_SYMBOL", "Sc");
        CURRENCY_SYMBOL = charCategory26;
        CharCategory charCategory27 = new CharCategory(26, 27, "MODIFIER_SYMBOL", "Sk");
        MODIFIER_SYMBOL = charCategory27;
        CharCategory charCategory28 = new CharCategory(27, 28, "OTHER_SYMBOL", "So");
        OTHER_SYMBOL = charCategory28;
        CharCategory charCategory29 = new CharCategory(28, 29, "INITIAL_QUOTE_PUNCTUATION", "Pi");
        INITIAL_QUOTE_PUNCTUATION = charCategory29;
        CharCategory charCategory30 = new CharCategory(29, 30, "FINAL_QUOTE_PUNCTUATION", "Pf");
        FINAL_QUOTE_PUNCTUATION = charCategory30;
        CharCategory[] charCategoryArr = {charCategory, charCategory2, charCategory3, charCategory4, charCategory5, charCategory6, charCategory7, charCategory8, charCategory9, charCategory10, charCategory11, charCategory12, charCategory13, charCategory14, charCategory15, charCategory16, charCategory17, charCategory18, charCategory19, charCategory20, charCategory21, charCategory22, charCategory23, charCategory24, charCategory25, charCategory26, charCategory27, charCategory28, charCategory29, charCategory30};
        c = charCategoryArr;
        d = EnumEntriesKt.enumEntries(charCategoryArr);
        INSTANCE = new Companion(null);
    }

    public final boolean contains(char c2) {
        return Character.getType(c2) == this.value;
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lkotlin/text/CharCategory$Companion;", "", "<init>", "()V", "valueOf", "Lkotlin/text/CharCategory;", "category", "", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final CharCategory valueOf(int category) {
            if (category >= 0 && category < 17) {
                return CharCategory.getEntries().get(category);
            }
            if (18 > category || category >= 31) {
                throw new IllegalArgumentException(_COROUTINE.a.e(category, "Category #", " is not defined."));
            }
            return CharCategory.getEntries().get(category - 1);
        }
    }

    public static CharCategory valueOf(String str) {
        return (CharCategory) Enum.valueOf(CharCategory.class, str);
    }

    public static CharCategory[] values() {
        return (CharCategory[]) c.clone();
    }
}
