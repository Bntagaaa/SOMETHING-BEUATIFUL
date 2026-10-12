package kotlin.text;

import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u001b\b\u0086\u0081\u0002\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001c¨\u0006\u001d"}, d2 = {"Lkotlin/text/CharDirectionality;", "", "", "a", "I", "getValue", "()I", "value", "Companion", "UNDEFINED", "LEFT_TO_RIGHT", "RIGHT_TO_LEFT", "RIGHT_TO_LEFT_ARABIC", "EUROPEAN_NUMBER", "EUROPEAN_NUMBER_SEPARATOR", "EUROPEAN_NUMBER_TERMINATOR", "ARABIC_NUMBER", "COMMON_NUMBER_SEPARATOR", "NONSPACING_MARK", "BOUNDARY_NEUTRAL", "PARAGRAPH_SEPARATOR", "SEGMENT_SEPARATOR", "WHITESPACE", "OTHER_NEUTRALS", "LEFT_TO_RIGHT_EMBEDDING", "LEFT_TO_RIGHT_OVERRIDE", "RIGHT_TO_LEFT_EMBEDDING", "RIGHT_TO_LEFT_OVERRIDE", "POP_DIRECTIONAL_FORMAT", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCharDirectionality.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharDirectionality.kt\nkotlin/text/CharDirectionality\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1202#2,2:125\n1230#2,4:127\n*S KotlinDebug\n*F\n+ 1 CharDirectionality.kt\nkotlin/text/CharDirectionality\n*L\n118#1:125,2\n118#1:127,4\n*E\n"})
/* loaded from: classes2.dex */
public final class CharDirectionality {
    public static final CharDirectionality ARABIC_NUMBER;
    public static final CharDirectionality BOUNDARY_NEUTRAL;
    public static final CharDirectionality COMMON_NUMBER_SEPARATOR;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final CharDirectionality EUROPEAN_NUMBER;
    public static final CharDirectionality EUROPEAN_NUMBER_SEPARATOR;
    public static final CharDirectionality EUROPEAN_NUMBER_TERMINATOR;
    public static final CharDirectionality LEFT_TO_RIGHT;
    public static final CharDirectionality LEFT_TO_RIGHT_EMBEDDING;
    public static final CharDirectionality LEFT_TO_RIGHT_OVERRIDE;
    public static final CharDirectionality NONSPACING_MARK;
    public static final CharDirectionality OTHER_NEUTRALS;
    public static final CharDirectionality PARAGRAPH_SEPARATOR;
    public static final CharDirectionality POP_DIRECTIONAL_FORMAT;
    public static final CharDirectionality RIGHT_TO_LEFT;
    public static final CharDirectionality RIGHT_TO_LEFT_ARABIC;
    public static final CharDirectionality RIGHT_TO_LEFT_EMBEDDING;
    public static final CharDirectionality RIGHT_TO_LEFT_OVERRIDE;
    public static final CharDirectionality SEGMENT_SEPARATOR;
    public static final CharDirectionality UNDEFINED;
    public static final CharDirectionality WHITESPACE;

    /* renamed from: b, reason: collision with root package name */
    public static final Lazy f6020b;
    public static final /* synthetic */ CharDirectionality[] c;
    public static final /* synthetic */ EnumEntries d;

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final int value;

    @NotNull
    public static EnumEntries<CharDirectionality> getEntries() {
        return d;
    }

    public CharDirectionality(String str, int i, int i2) {
        this.value = i2;
    }

    public final int getValue() {
        return this.value;
    }

    static {
        CharDirectionality charDirectionality = new CharDirectionality("UNDEFINED", 0, -1);
        UNDEFINED = charDirectionality;
        CharDirectionality charDirectionality2 = new CharDirectionality("LEFT_TO_RIGHT", 1, 0);
        LEFT_TO_RIGHT = charDirectionality2;
        CharDirectionality charDirectionality3 = new CharDirectionality("RIGHT_TO_LEFT", 2, 1);
        RIGHT_TO_LEFT = charDirectionality3;
        CharDirectionality charDirectionality4 = new CharDirectionality("RIGHT_TO_LEFT_ARABIC", 3, 2);
        RIGHT_TO_LEFT_ARABIC = charDirectionality4;
        CharDirectionality charDirectionality5 = new CharDirectionality("EUROPEAN_NUMBER", 4, 3);
        EUROPEAN_NUMBER = charDirectionality5;
        CharDirectionality charDirectionality6 = new CharDirectionality("EUROPEAN_NUMBER_SEPARATOR", 5, 4);
        EUROPEAN_NUMBER_SEPARATOR = charDirectionality6;
        CharDirectionality charDirectionality7 = new CharDirectionality("EUROPEAN_NUMBER_TERMINATOR", 6, 5);
        EUROPEAN_NUMBER_TERMINATOR = charDirectionality7;
        CharDirectionality charDirectionality8 = new CharDirectionality("ARABIC_NUMBER", 7, 6);
        ARABIC_NUMBER = charDirectionality8;
        CharDirectionality charDirectionality9 = new CharDirectionality("COMMON_NUMBER_SEPARATOR", 8, 7);
        COMMON_NUMBER_SEPARATOR = charDirectionality9;
        CharDirectionality charDirectionality10 = new CharDirectionality("NONSPACING_MARK", 9, 8);
        NONSPACING_MARK = charDirectionality10;
        CharDirectionality charDirectionality11 = new CharDirectionality("BOUNDARY_NEUTRAL", 10, 9);
        BOUNDARY_NEUTRAL = charDirectionality11;
        CharDirectionality charDirectionality12 = new CharDirectionality("PARAGRAPH_SEPARATOR", 11, 10);
        PARAGRAPH_SEPARATOR = charDirectionality12;
        CharDirectionality charDirectionality13 = new CharDirectionality("SEGMENT_SEPARATOR", 12, 11);
        SEGMENT_SEPARATOR = charDirectionality13;
        CharDirectionality charDirectionality14 = new CharDirectionality("WHITESPACE", 13, 12);
        WHITESPACE = charDirectionality14;
        CharDirectionality charDirectionality15 = new CharDirectionality("OTHER_NEUTRALS", 14, 13);
        OTHER_NEUTRALS = charDirectionality15;
        CharDirectionality charDirectionality16 = new CharDirectionality("LEFT_TO_RIGHT_EMBEDDING", 15, 14);
        LEFT_TO_RIGHT_EMBEDDING = charDirectionality16;
        CharDirectionality charDirectionality17 = new CharDirectionality("LEFT_TO_RIGHT_OVERRIDE", 16, 15);
        LEFT_TO_RIGHT_OVERRIDE = charDirectionality17;
        CharDirectionality charDirectionality18 = new CharDirectionality("RIGHT_TO_LEFT_EMBEDDING", 17, 16);
        RIGHT_TO_LEFT_EMBEDDING = charDirectionality18;
        CharDirectionality charDirectionality19 = new CharDirectionality("RIGHT_TO_LEFT_OVERRIDE", 18, 17);
        RIGHT_TO_LEFT_OVERRIDE = charDirectionality19;
        CharDirectionality charDirectionality20 = new CharDirectionality("POP_DIRECTIONAL_FORMAT", 19, 18);
        POP_DIRECTIONAL_FORMAT = charDirectionality20;
        CharDirectionality[] charDirectionalityArr = {charDirectionality, charDirectionality2, charDirectionality3, charDirectionality4, charDirectionality5, charDirectionality6, charDirectionality7, charDirectionality8, charDirectionality9, charDirectionality10, charDirectionality11, charDirectionality12, charDirectionality13, charDirectionality14, charDirectionality15, charDirectionality16, charDirectionality17, charDirectionality18, charDirectionality19, charDirectionality20};
        c = charDirectionalityArr;
        d = EnumEntriesKt.enumEntries(charDirectionalityArr);
        INSTANCE = new Companion(null);
        f6020b = LazyKt.lazy(new a(0));
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlin/text/CharDirectionality$Companion;", "", "<init>", "()V", "", "directionality", "Lkotlin/text/CharDirectionality;", "valueOf", "(I)Lkotlin/text/CharDirectionality;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final CharDirectionality valueOf(int directionality) {
            CharDirectionality charDirectionality = (CharDirectionality) ((Map) CharDirectionality.f6020b.getValue()).get(Integer.valueOf(directionality));
            if (charDirectionality != null) {
                return charDirectionality;
            }
            throw new IllegalArgumentException(_COROUTINE.a.e(directionality, "Directionality #", " is not defined."));
        }
    }

    public static CharDirectionality valueOf(String str) {
        return (CharDirectionality) Enum.valueOf(CharDirectionality.class, str);
    }

    public static CharDirectionality[] values() {
        return (CharDirectionality[]) c.clone();
    }
}
