package kawa.lib.rnrs;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.UnicodeUtils;
import gnu.lists.Consumer;
import gnu.lists.FString;
import gnu.mapping.CallContext;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.WrongType;
import gnu.text.Char;
import java.util.Locale;
import kawa.lib.misc;

/* loaded from: classes2.dex */
public class unicode extends ModuleBody {
    public static final unicode $instance;
    static final SimpleSymbol Lit0;
    static final SimpleSymbol Lit1;
    static final SimpleSymbol Lit10;
    static final SimpleSymbol Lit11;
    static final SimpleSymbol Lit12;
    static final SimpleSymbol Lit13;
    static final SimpleSymbol Lit14;
    static final SimpleSymbol Lit15;
    static final SimpleSymbol Lit16;
    static final SimpleSymbol Lit17;
    static final SimpleSymbol Lit18;
    static final SimpleSymbol Lit19;
    static final SimpleSymbol Lit2;
    static final SimpleSymbol Lit20;
    static final SimpleSymbol Lit21;
    static final SimpleSymbol Lit22;
    static final SimpleSymbol Lit23;
    static final SimpleSymbol Lit24;
    static final SimpleSymbol Lit25;
    static final SimpleSymbol Lit26;
    static final SimpleSymbol Lit27;
    static final SimpleSymbol Lit28;
    static final SimpleSymbol Lit3;
    static final SimpleSymbol Lit4;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit7;
    static final SimpleSymbol Lit8;
    static final SimpleSymbol Lit9;
    public static final ModuleMethod char$Mnalphabetic$Qu;
    public static final ModuleMethod char$Mnci$Eq$Qu;
    public static final ModuleMethod char$Mnci$Gr$Eq$Qu;
    public static final ModuleMethod char$Mnci$Gr$Qu;
    public static final ModuleMethod char$Mnci$Ls$Eq$Qu;
    public static final ModuleMethod char$Mnci$Ls$Qu;
    public static final ModuleMethod char$Mndowncase;
    public static final ModuleMethod char$Mnfoldcase;
    public static final ModuleMethod char$Mngeneral$Mncategory;
    public static final ModuleMethod char$Mnlower$Mncase$Qu;
    public static final ModuleMethod char$Mnnumeric$Qu;
    public static final ModuleMethod char$Mntitle$Mncase$Qu;
    public static final ModuleMethod char$Mntitlecase;
    public static final ModuleMethod char$Mnupcase;
    public static final ModuleMethod char$Mnupper$Mncase$Qu;
    public static final ModuleMethod char$Mnwhitespace$Qu;
    public static final ModuleMethod string$Mnci$Eq$Qu;
    public static final ModuleMethod string$Mnci$Gr$Eq$Qu;
    public static final ModuleMethod string$Mnci$Gr$Qu;
    public static final ModuleMethod string$Mnci$Ls$Eq$Qu;
    public static final ModuleMethod string$Mnci$Ls$Qu;
    public static final ModuleMethod string$Mndowncase;
    public static final ModuleMethod string$Mnfoldcase;
    public static final ModuleMethod string$Mnnormalize$Mnnfc;
    public static final ModuleMethod string$Mnnormalize$Mnnfd;
    public static final ModuleMethod string$Mnnormalize$Mnnfkc;
    public static final ModuleMethod string$Mnnormalize$Mnnfkd;
    public static final ModuleMethod string$Mntitlecase;
    public static final ModuleMethod string$Mnupcase;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("string-normalize-nfkc");
        Lit28 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("string-normalize-nfc");
        Lit27 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("string-normalize-nfkd");
        Lit26 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("string-normalize-nfd");
        Lit25 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("string-ci>=?");
        Lit24 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("string-ci<=?");
        Lit23 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("string-ci>?");
        Lit22 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("string-ci<?");
        Lit21 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("string-ci=?");
        Lit20 = simpleSymbol9;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("string-foldcase");
        Lit19 = simpleSymbol10;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("string-titlecase");
        Lit18 = simpleSymbol11;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("string-downcase");
        Lit17 = simpleSymbol12;
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("string-upcase");
        Lit16 = simpleSymbol13;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("char-general-category");
        Lit15 = simpleSymbol14;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("char-ci>=?");
        Lit14 = simpleSymbol15;
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f("char-ci<=?");
        Lit13 = simpleSymbol16;
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("char-ci>?");
        Lit12 = simpleSymbol17;
        SimpleSymbol simpleSymbol18 = (SimpleSymbol) a.f("char-ci<?");
        Lit11 = simpleSymbol18;
        SimpleSymbol simpleSymbol19 = (SimpleSymbol) a.f("char-ci=?");
        Lit10 = simpleSymbol19;
        SimpleSymbol simpleSymbol20 = (SimpleSymbol) a.f("char-foldcase");
        Lit9 = simpleSymbol20;
        SimpleSymbol simpleSymbol21 = (SimpleSymbol) a.f("char-title-case?");
        Lit8 = simpleSymbol21;
        SimpleSymbol simpleSymbol22 = (SimpleSymbol) a.f("char-lower-case?");
        Lit7 = simpleSymbol22;
        SimpleSymbol simpleSymbol23 = (SimpleSymbol) a.f("char-upper-case?");
        Lit6 = simpleSymbol23;
        SimpleSymbol simpleSymbol24 = (SimpleSymbol) a.f("char-whitespace?");
        Lit5 = simpleSymbol24;
        SimpleSymbol simpleSymbol25 = (SimpleSymbol) a.f("char-numeric?");
        Lit4 = simpleSymbol25;
        SimpleSymbol simpleSymbol26 = (SimpleSymbol) a.f("char-alphabetic?");
        Lit3 = simpleSymbol26;
        SimpleSymbol simpleSymbol27 = (SimpleSymbol) a.f("char-titlecase");
        Lit2 = simpleSymbol27;
        SimpleSymbol simpleSymbol28 = (SimpleSymbol) a.f("char-downcase");
        Lit1 = simpleSymbol28;
        SimpleSymbol simpleSymbol29 = (SimpleSymbol) a.f("char-upcase");
        Lit0 = simpleSymbol29;
        unicode unicodeVar = new unicode();
        $instance = unicodeVar;
        char$Mnupcase = new ModuleMethod(unicodeVar, 1, simpleSymbol29, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        char$Mndowncase = new ModuleMethod(unicodeVar, 2, simpleSymbol28, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        char$Mntitlecase = new ModuleMethod(unicodeVar, 3, simpleSymbol27, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        char$Mnalphabetic$Qu = new ModuleMethod(unicodeVar, 4, simpleSymbol26, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        char$Mnnumeric$Qu = new ModuleMethod(unicodeVar, 5, simpleSymbol25, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        char$Mnwhitespace$Qu = new ModuleMethod(unicodeVar, 6, simpleSymbol24, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        char$Mnupper$Mncase$Qu = new ModuleMethod(unicodeVar, 7, simpleSymbol23, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        char$Mnlower$Mncase$Qu = new ModuleMethod(unicodeVar, 8, simpleSymbol22, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        char$Mntitle$Mncase$Qu = new ModuleMethod(unicodeVar, 9, simpleSymbol21, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        char$Mnfoldcase = new ModuleMethod(unicodeVar, 10, simpleSymbol20, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        char$Mnci$Eq$Qu = new ModuleMethod(unicodeVar, 11, simpleSymbol19, 8194);
        char$Mnci$Ls$Qu = new ModuleMethod(unicodeVar, 12, simpleSymbol18, 8194);
        char$Mnci$Gr$Qu = new ModuleMethod(unicodeVar, 13, simpleSymbol17, 8194);
        char$Mnci$Ls$Eq$Qu = new ModuleMethod(unicodeVar, 14, simpleSymbol16, 8194);
        char$Mnci$Gr$Eq$Qu = new ModuleMethod(unicodeVar, 15, simpleSymbol15, 8194);
        char$Mngeneral$Mncategory = new ModuleMethod(unicodeVar, 16, simpleSymbol14, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnupcase = new ModuleMethod(unicodeVar, 17, simpleSymbol13, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mndowncase = new ModuleMethod(unicodeVar, 18, simpleSymbol12, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mntitlecase = new ModuleMethod(unicodeVar, 19, simpleSymbol11, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnfoldcase = new ModuleMethod(unicodeVar, 20, simpleSymbol10, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnci$Eq$Qu = new ModuleMethod(unicodeVar, 21, simpleSymbol9, 8194);
        string$Mnci$Ls$Qu = new ModuleMethod(unicodeVar, 22, simpleSymbol8, 8194);
        string$Mnci$Gr$Qu = new ModuleMethod(unicodeVar, 23, simpleSymbol7, 8194);
        string$Mnci$Ls$Eq$Qu = new ModuleMethod(unicodeVar, 24, simpleSymbol6, 8194);
        string$Mnci$Gr$Eq$Qu = new ModuleMethod(unicodeVar, 25, simpleSymbol5, 8194);
        string$Mnnormalize$Mnnfd = new ModuleMethod(unicodeVar, 26, simpleSymbol4, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnnormalize$Mnnfkd = new ModuleMethod(unicodeVar, 27, simpleSymbol3, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnnormalize$Mnnfc = new ModuleMethod(unicodeVar, 28, simpleSymbol2, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnnormalize$Mnnfkc = new ModuleMethod(unicodeVar, 29, simpleSymbol, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        unicodeVar.run();
    }

    public unicode() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        int i = moduleMethod.selector;
        switch (i) {
            case 1:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 2:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 3:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 4:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 5:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 6:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 7:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 8:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 9:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 10:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            default:
                switch (i) {
                    case 16:
                        if (!(obj instanceof Char)) {
                            return -786431;
                        }
                        callContext.value1 = obj;
                        callContext.proc = moduleMethod;
                        callContext.pc = 1;
                        return 0;
                    case 17:
                        if (!(obj instanceof CharSequence)) {
                            return -786431;
                        }
                        callContext.value1 = obj;
                        callContext.proc = moduleMethod;
                        callContext.pc = 1;
                        return 0;
                    case 18:
                        if (!(obj instanceof CharSequence)) {
                            return -786431;
                        }
                        callContext.value1 = obj;
                        callContext.proc = moduleMethod;
                        callContext.pc = 1;
                        return 0;
                    case 19:
                        if (!(obj instanceof CharSequence)) {
                            return -786431;
                        }
                        callContext.value1 = obj;
                        callContext.proc = moduleMethod;
                        callContext.pc = 1;
                        return 0;
                    case 20:
                        if (!(obj instanceof CharSequence)) {
                            return -786431;
                        }
                        callContext.value1 = obj;
                        callContext.proc = moduleMethod;
                        callContext.pc = 1;
                        return 0;
                    default:
                        switch (i) {
                            case 26:
                                if (!(obj instanceof CharSequence)) {
                                    return -786431;
                                }
                                callContext.value1 = obj;
                                callContext.proc = moduleMethod;
                                callContext.pc = 1;
                                return 0;
                            case 27:
                                if (!(obj instanceof CharSequence)) {
                                    return -786431;
                                }
                                callContext.value1 = obj;
                                callContext.proc = moduleMethod;
                                callContext.pc = 1;
                                return 0;
                            case 28:
                                if (!(obj instanceof CharSequence)) {
                                    return -786431;
                                }
                                callContext.value1 = obj;
                                callContext.proc = moduleMethod;
                                callContext.pc = 1;
                                return 0;
                            case 29:
                                if (!(obj instanceof CharSequence)) {
                                    return -786431;
                                }
                                callContext.value1 = obj;
                                callContext.proc = moduleMethod;
                                callContext.pc = 1;
                                return 0;
                            default:
                                return super.match1(moduleMethod, obj, callContext);
                        }
                }
        }
    }

    public static Char charUpcase(Char r0) {
        return Char.make(Character.toUpperCase(r0.intValue()));
    }

    public static Char charDowncase(Char r0) {
        return Char.make(Character.toLowerCase(r0.intValue()));
    }

    public static Char charTitlecase(Char r0) {
        return Char.make(Character.toTitleCase(r0.intValue()));
    }

    public static boolean isCharAlphabetic(Char r0) {
        return Character.isLetter(r0.intValue());
    }

    public static boolean isCharNumeric(Char r0) {
        return Character.isDigit(r0.intValue());
    }

    public static boolean isCharWhitespace(Char r0) {
        return UnicodeUtils.isWhitespace(r0.intValue());
    }

    public static boolean isCharUpperCase(Char r0) {
        return Character.isUpperCase(r0.intValue());
    }

    public static boolean isCharLowerCase(Char r0) {
        return Character.isLowerCase(r0.intValue());
    }

    public static boolean isCharTitleCase(Char r0) {
        return Character.isTitleCase(r0.intValue());
    }

    public static Char charFoldcase(Char r2) {
        int iIntValue = r2.intValue();
        boolean z = iIntValue == 304;
        return (!z ? iIntValue == 305 : z) ? Char.make(Character.toLowerCase(Character.toUpperCase(iIntValue))) : r2;
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        switch (i) {
            case 11:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                if (!(obj2 instanceof Char)) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 12:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                if (!(obj2 instanceof Char)) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 13:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                if (!(obj2 instanceof Char)) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 14:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                if (!(obj2 instanceof Char)) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 15:
                if (!(obj instanceof Char)) {
                    return -786431;
                }
                callContext.value1 = obj;
                if (!(obj2 instanceof Char)) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            default:
                switch (i) {
                    case 21:
                        if (!(obj instanceof CharSequence)) {
                            return -786431;
                        }
                        callContext.value1 = obj;
                        if (!(obj2 instanceof CharSequence)) {
                            return -786430;
                        }
                        callContext.value2 = obj2;
                        callContext.proc = moduleMethod;
                        callContext.pc = 2;
                        return 0;
                    case 22:
                        if (!(obj instanceof CharSequence)) {
                            return -786431;
                        }
                        callContext.value1 = obj;
                        if (!(obj2 instanceof CharSequence)) {
                            return -786430;
                        }
                        callContext.value2 = obj2;
                        callContext.proc = moduleMethod;
                        callContext.pc = 2;
                        return 0;
                    case 23:
                        if (!(obj instanceof CharSequence)) {
                            return -786431;
                        }
                        callContext.value1 = obj;
                        if (!(obj2 instanceof CharSequence)) {
                            return -786430;
                        }
                        callContext.value2 = obj2;
                        callContext.proc = moduleMethod;
                        callContext.pc = 2;
                        return 0;
                    case 24:
                        if (!(obj instanceof CharSequence)) {
                            return -786431;
                        }
                        callContext.value1 = obj;
                        if (!(obj2 instanceof CharSequence)) {
                            return -786430;
                        }
                        callContext.value2 = obj2;
                        callContext.proc = moduleMethod;
                        callContext.pc = 2;
                        return 0;
                    case 25:
                        if (!(obj instanceof CharSequence)) {
                            return -786431;
                        }
                        callContext.value1 = obj;
                        if (!(obj2 instanceof CharSequence)) {
                            return -786430;
                        }
                        callContext.value2 = obj2;
                        callContext.proc = moduleMethod;
                        callContext.pc = 2;
                        return 0;
                    default:
                        return super.match2(moduleMethod, obj, obj2, callContext);
                }
        }
    }

    public static boolean isCharCi$Eq(Char r0, Char r1) {
        return Character.toUpperCase(r0.intValue()) == Character.toUpperCase(r1.intValue());
    }

    public static boolean isCharCi$Ls(Char r0, Char r1) {
        return Character.toUpperCase(r0.intValue()) < Character.toUpperCase(r1.intValue());
    }

    public static boolean isCharCi$Gr(Char r0, Char r1) {
        return Character.toUpperCase(r0.intValue()) > Character.toUpperCase(r1.intValue());
    }

    public static boolean isCharCi$Ls$Eq(Char r0, Char r1) {
        return Character.toUpperCase(r0.intValue()) <= Character.toUpperCase(r1.intValue());
    }

    public static boolean isCharCi$Gr$Eq(Char r0, Char r1) {
        return Character.toUpperCase(r0.intValue()) >= Character.toUpperCase(r1.intValue());
    }

    public static Symbol charGeneralCategory(Char r0) {
        return UnicodeUtils.generalCategory(r0.intValue());
    }

    public static CharSequence stringUpcase(CharSequence charSequence) {
        return new FString((CharSequence) charSequence.toString().toUpperCase(Locale.ENGLISH));
    }

    public static CharSequence stringDowncase(CharSequence charSequence) {
        return new FString((CharSequence) charSequence.toString().toLowerCase(Locale.ENGLISH));
    }

    public static CharSequence stringTitlecase(CharSequence charSequence) {
        return new FString((CharSequence) UnicodeUtils.capitalize(charSequence == null ? null : charSequence.toString()));
    }

    public static CharSequence stringFoldcase(CharSequence charSequence) {
        return new FString((CharSequence) UnicodeUtils.foldCase(charSequence));
    }

    public static boolean isStringCi$Eq(CharSequence charSequence, CharSequence charSequence2) {
        return UnicodeUtils.foldCase(charSequence).equals(UnicodeUtils.foldCase(charSequence2));
    }

    public static boolean isStringCi$Ls(CharSequence charSequence, CharSequence charSequence2) {
        return UnicodeUtils.foldCase(charSequence).compareTo(UnicodeUtils.foldCase(charSequence2)) < 0;
    }

    public static boolean isStringCi$Gr(CharSequence charSequence, CharSequence charSequence2) {
        return UnicodeUtils.foldCase(charSequence).compareTo(UnicodeUtils.foldCase(charSequence2)) > 0;
    }

    public static boolean isStringCi$Ls$Eq(CharSequence charSequence, CharSequence charSequence2) {
        return UnicodeUtils.foldCase(charSequence).compareTo(UnicodeUtils.foldCase(charSequence2)) <= 0;
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        int i = moduleMethod.selector;
        switch (i) {
            case 11:
                try {
                    try {
                        return isCharCi$Eq((Char) obj, (Char) obj2) ? Boolean.TRUE : Boolean.FALSE;
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "char-ci=?", 2, obj2);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "char-ci=?", 1, obj);
                }
            case 12:
                try {
                    try {
                        return isCharCi$Ls((Char) obj, (Char) obj2) ? Boolean.TRUE : Boolean.FALSE;
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "char-ci<?", 2, obj2);
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "char-ci<?", 1, obj);
                }
            case 13:
                try {
                    try {
                        return isCharCi$Gr((Char) obj, (Char) obj2) ? Boolean.TRUE : Boolean.FALSE;
                    } catch (ClassCastException e5) {
                        throw new WrongType(e5, "char-ci>?", 2, obj2);
                    }
                } catch (ClassCastException e6) {
                    throw new WrongType(e6, "char-ci>?", 1, obj);
                }
            case 14:
                try {
                    try {
                        return isCharCi$Ls$Eq((Char) obj, (Char) obj2) ? Boolean.TRUE : Boolean.FALSE;
                    } catch (ClassCastException e7) {
                        throw new WrongType(e7, "char-ci<=?", 2, obj2);
                    }
                } catch (ClassCastException e8) {
                    throw new WrongType(e8, "char-ci<=?", 1, obj);
                }
            case 15:
                try {
                    try {
                        return isCharCi$Gr$Eq((Char) obj, (Char) obj2) ? Boolean.TRUE : Boolean.FALSE;
                    } catch (ClassCastException e9) {
                        throw new WrongType(e9, "char-ci>=?", 2, obj2);
                    }
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "char-ci>=?", 1, obj);
                }
            default:
                switch (i) {
                    case 21:
                        try {
                            try {
                                return isStringCi$Eq((CharSequence) obj, (CharSequence) obj2) ? Boolean.TRUE : Boolean.FALSE;
                            } catch (ClassCastException e11) {
                                throw new WrongType(e11, "string-ci=?", 2, obj2);
                            }
                        } catch (ClassCastException e12) {
                            throw new WrongType(e12, "string-ci=?", 1, obj);
                        }
                    case 22:
                        try {
                            try {
                                return isStringCi$Ls((CharSequence) obj, (CharSequence) obj2) ? Boolean.TRUE : Boolean.FALSE;
                            } catch (ClassCastException e13) {
                                throw new WrongType(e13, "string-ci<?", 2, obj2);
                            }
                        } catch (ClassCastException e14) {
                            throw new WrongType(e14, "string-ci<?", 1, obj);
                        }
                    case 23:
                        try {
                            try {
                                return isStringCi$Gr((CharSequence) obj, (CharSequence) obj2) ? Boolean.TRUE : Boolean.FALSE;
                            } catch (ClassCastException e15) {
                                throw new WrongType(e15, "string-ci>?", 2, obj2);
                            }
                        } catch (ClassCastException e16) {
                            throw new WrongType(e16, "string-ci>?", 1, obj);
                        }
                    case 24:
                        try {
                            try {
                                return isStringCi$Ls$Eq((CharSequence) obj, (CharSequence) obj2) ? Boolean.TRUE : Boolean.FALSE;
                            } catch (ClassCastException e17) {
                                throw new WrongType(e17, "string-ci<=?", 2, obj2);
                            }
                        } catch (ClassCastException e18) {
                            throw new WrongType(e18, "string-ci<=?", 1, obj);
                        }
                    case 25:
                        try {
                            try {
                                return isStringCi$Gr$Eq((CharSequence) obj, (CharSequence) obj2) ? Boolean.TRUE : Boolean.FALSE;
                            } catch (ClassCastException e19) {
                                throw new WrongType(e19, "string-ci>=?", 2, obj2);
                            }
                        } catch (ClassCastException e20) {
                            throw new WrongType(e20, "string-ci>=?", 1, obj);
                        }
                    default:
                        return super.apply2(moduleMethod, obj, obj2);
                }
        }
    }

    public static boolean isStringCi$Gr$Eq(CharSequence charSequence, CharSequence charSequence2) {
        return UnicodeUtils.foldCase(charSequence).compareTo(UnicodeUtils.foldCase(charSequence2)) >= 0;
    }

    public static CharSequence stringNormalizeNfd(CharSequence charSequence) {
        return (CharSequence) misc.error$V("unicode string normalization not available", new Object[0]);
    }

    public static CharSequence stringNormalizeNfkd(CharSequence charSequence) {
        return (CharSequence) misc.error$V("unicode string normalization not available", new Object[0]);
    }

    public static CharSequence stringNormalizeNfc(CharSequence charSequence) {
        return (CharSequence) misc.error$V("unicode string normalization not available", new Object[0]);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        switch (i) {
            case 1:
                try {
                    return charUpcase((Char) obj);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "char-upcase", 1, obj);
                }
            case 2:
                try {
                    return charDowncase((Char) obj);
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "char-downcase", 1, obj);
                }
            case 3:
                try {
                    return charTitlecase((Char) obj);
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "char-titlecase", 1, obj);
                }
            case 4:
                try {
                    return isCharAlphabetic((Char) obj) ? Boolean.TRUE : Boolean.FALSE;
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "char-alphabetic?", 1, obj);
                }
            case 5:
                try {
                    return isCharNumeric((Char) obj) ? Boolean.TRUE : Boolean.FALSE;
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "char-numeric?", 1, obj);
                }
            case 6:
                try {
                    return isCharWhitespace((Char) obj) ? Boolean.TRUE : Boolean.FALSE;
                } catch (ClassCastException e6) {
                    throw new WrongType(e6, "char-whitespace?", 1, obj);
                }
            case 7:
                try {
                    return isCharUpperCase((Char) obj) ? Boolean.TRUE : Boolean.FALSE;
                } catch (ClassCastException e7) {
                    throw new WrongType(e7, "char-upper-case?", 1, obj);
                }
            case 8:
                try {
                    return isCharLowerCase((Char) obj) ? Boolean.TRUE : Boolean.FALSE;
                } catch (ClassCastException e8) {
                    throw new WrongType(e8, "char-lower-case?", 1, obj);
                }
            case 9:
                try {
                    return isCharTitleCase((Char) obj) ? Boolean.TRUE : Boolean.FALSE;
                } catch (ClassCastException e9) {
                    throw new WrongType(e9, "char-title-case?", 1, obj);
                }
            case 10:
                try {
                    return charFoldcase((Char) obj);
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "char-foldcase", 1, obj);
                }
            default:
                switch (i) {
                    case 16:
                        try {
                            return charGeneralCategory((Char) obj);
                        } catch (ClassCastException e11) {
                            throw new WrongType(e11, "char-general-category", 1, obj);
                        }
                    case 17:
                        try {
                            return stringUpcase((CharSequence) obj);
                        } catch (ClassCastException e12) {
                            throw new WrongType(e12, "string-upcase", 1, obj);
                        }
                    case 18:
                        try {
                            return stringDowncase((CharSequence) obj);
                        } catch (ClassCastException e13) {
                            throw new WrongType(e13, "string-downcase", 1, obj);
                        }
                    case 19:
                        try {
                            return stringTitlecase((CharSequence) obj);
                        } catch (ClassCastException e14) {
                            throw new WrongType(e14, "string-titlecase", 1, obj);
                        }
                    case 20:
                        try {
                            return stringFoldcase((CharSequence) obj);
                        } catch (ClassCastException e15) {
                            throw new WrongType(e15, "string-foldcase", 1, obj);
                        }
                    default:
                        switch (i) {
                            case 26:
                                try {
                                    return stringNormalizeNfd((CharSequence) obj);
                                } catch (ClassCastException e16) {
                                    throw new WrongType(e16, "string-normalize-nfd", 1, obj);
                                }
                            case 27:
                                try {
                                    return stringNormalizeNfkd((CharSequence) obj);
                                } catch (ClassCastException e17) {
                                    throw new WrongType(e17, "string-normalize-nfkd", 1, obj);
                                }
                            case 28:
                                try {
                                    return stringNormalizeNfc((CharSequence) obj);
                                } catch (ClassCastException e18) {
                                    throw new WrongType(e18, "string-normalize-nfc", 1, obj);
                                }
                            case 29:
                                try {
                                    return stringNormalizeNfkc((CharSequence) obj);
                                } catch (ClassCastException e19) {
                                    throw new WrongType(e19, "string-normalize-nfkc", 1, obj);
                                }
                            default:
                                return super.apply1(moduleMethod, obj);
                        }
                }
        }
    }

    public static CharSequence stringNormalizeNfkc(CharSequence charSequence) {
        return (CharSequence) misc.error$V("unicode string normalization not available", new Object[0]);
    }
}
