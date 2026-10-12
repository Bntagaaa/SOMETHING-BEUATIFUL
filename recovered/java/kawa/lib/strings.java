package kawa.lib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.lists.CharSeq;
import gnu.lists.Consumer;
import gnu.lists.FString;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.Strings;
import gnu.mapping.CallContext;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.text.Char;

/* loaded from: classes2.dex */
public class strings extends ModuleBody {
    public static final strings $instance;
    public static final ModuleMethod $make$string$;
    static final Char Lit0;
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
    static final SimpleSymbol Lit3;
    static final SimpleSymbol Lit4;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit7;
    static final SimpleSymbol Lit8;
    static final SimpleSymbol Lit9;
    public static final ModuleMethod list$Mn$Grstring;
    public static final ModuleMethod make$Mnstring;
    public static final ModuleMethod string$Eq$Qu;
    public static final ModuleMethod string$Gr$Eq$Qu;
    public static final ModuleMethod string$Gr$Qu;
    public static final ModuleMethod string$Ls$Eq$Qu;
    public static final ModuleMethod string$Ls$Qu;
    public static final ModuleMethod string$Mn$Grlist;
    public static final ModuleMethod string$Mnappend;
    public static final ModuleMethod string$Mnappend$Slshared;
    public static final ModuleMethod string$Mncapitalize;
    public static final ModuleMethod string$Mncapitalize$Ex;
    public static final ModuleMethod string$Mncopy;
    public static final ModuleMethod string$Mndowncase$Ex;
    public static final ModuleMethod string$Mnfill$Ex;
    public static final ModuleMethod string$Mnlength;
    public static final ModuleMethod string$Mnref;
    public static final ModuleMethod string$Mnset$Ex;
    public static final ModuleMethod string$Mnupcase$Ex;
    public static final ModuleMethod string$Qu;
    public static final ModuleMethod substring;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("string-append/shared");
        Lit22 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("string-append");
        Lit21 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("string-capitalize");
        Lit20 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("string-capitalize!");
        Lit19 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("string-downcase!");
        Lit18 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("string-upcase!");
        Lit17 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("string-fill!");
        Lit16 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("string-copy");
        Lit15 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("list->string");
        Lit14 = simpleSymbol9;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("string->list");
        Lit13 = simpleSymbol10;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("substring");
        Lit12 = simpleSymbol11;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("string>=?");
        Lit11 = simpleSymbol12;
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("string<=?");
        Lit10 = simpleSymbol13;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("string>?");
        Lit9 = simpleSymbol14;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("string<?");
        Lit8 = simpleSymbol15;
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f("string=?");
        Lit7 = simpleSymbol16;
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("string-set!");
        Lit6 = simpleSymbol17;
        SimpleSymbol simpleSymbol18 = (SimpleSymbol) a.f("string-ref");
        Lit5 = simpleSymbol18;
        SimpleSymbol simpleSymbol19 = (SimpleSymbol) a.f("string-length");
        Lit4 = simpleSymbol19;
        SimpleSymbol simpleSymbol20 = (SimpleSymbol) a.f("$make$string$");
        Lit3 = simpleSymbol20;
        SimpleSymbol simpleSymbol21 = (SimpleSymbol) a.f("make-string");
        Lit2 = simpleSymbol21;
        SimpleSymbol simpleSymbol22 = (SimpleSymbol) a.f("string?");
        Lit1 = simpleSymbol22;
        Lit0 = Char.make(32);
        strings stringsVar = new strings();
        $instance = stringsVar;
        string$Qu = new ModuleMethod(stringsVar, 1, simpleSymbol22, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        make$Mnstring = new ModuleMethod(stringsVar, 2, simpleSymbol21, 8193);
        $make$string$ = new ModuleMethod(stringsVar, 4, simpleSymbol20, -4096);
        string$Mnlength = new ModuleMethod(stringsVar, 5, simpleSymbol19, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnref = new ModuleMethod(stringsVar, 6, simpleSymbol18, 8194);
        string$Mnset$Ex = new ModuleMethod(stringsVar, 7, simpleSymbol17, 12291);
        string$Eq$Qu = new ModuleMethod(stringsVar, 8, simpleSymbol16, 8194);
        string$Ls$Qu = new ModuleMethod(stringsVar, 9, simpleSymbol15, 8194);
        string$Gr$Qu = new ModuleMethod(stringsVar, 10, simpleSymbol14, 8194);
        string$Ls$Eq$Qu = new ModuleMethod(stringsVar, 11, simpleSymbol13, 8194);
        string$Gr$Eq$Qu = new ModuleMethod(stringsVar, 12, simpleSymbol12, 8194);
        substring = new ModuleMethod(stringsVar, 13, simpleSymbol11, 12291);
        string$Mn$Grlist = new ModuleMethod(stringsVar, 14, simpleSymbol10, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        list$Mn$Grstring = new ModuleMethod(stringsVar, 15, simpleSymbol9, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mncopy = new ModuleMethod(stringsVar, 16, simpleSymbol8, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnfill$Ex = new ModuleMethod(stringsVar, 17, simpleSymbol7, 8194);
        string$Mnupcase$Ex = new ModuleMethod(stringsVar, 18, simpleSymbol6, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mndowncase$Ex = new ModuleMethod(stringsVar, 19, simpleSymbol5, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mncapitalize$Ex = new ModuleMethod(stringsVar, 20, simpleSymbol4, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mncapitalize = new ModuleMethod(stringsVar, 21, simpleSymbol3, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnappend = new ModuleMethod(stringsVar, 22, simpleSymbol2, -4096);
        string$Mnappend$Slshared = new ModuleMethod(stringsVar, 23, simpleSymbol, -4096);
        stringsVar.run();
    }

    public strings() {
        ModuleInfo.register(this);
    }

    public static CharSequence makeString(int i) {
        return makeString(i, Lit0);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 1) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 2) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 5) {
            if (!(obj instanceof CharSequence)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        switch (i) {
            case 14:
                if (!(obj instanceof CharSequence)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 15:
                if (!(obj instanceof LList)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 16:
                if (!(obj instanceof CharSequence)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            default:
                switch (i) {
                    case 18:
                        if (!(obj instanceof CharSeq)) {
                            return -786431;
                        }
                        callContext.value1 = obj;
                        callContext.proc = moduleMethod;
                        callContext.pc = 1;
                        return 0;
                    case 19:
                        if (!(obj instanceof CharSeq)) {
                            return -786431;
                        }
                        callContext.value1 = obj;
                        callContext.proc = moduleMethod;
                        callContext.pc = 1;
                        return 0;
                    case 20:
                        if (!(obj instanceof CharSeq)) {
                            return -786431;
                        }
                        callContext.value1 = obj;
                        callContext.proc = moduleMethod;
                        callContext.pc = 1;
                        return 0;
                    case 21:
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

    public static boolean isString(Object obj) {
        return obj instanceof CharSequence;
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 2) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 6) {
            if (!(obj instanceof CharSequence)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i != 17) {
            switch (i) {
                case 8:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 9:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 10:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 11:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                case 12:
                    callContext.value1 = obj;
                    callContext.value2 = obj2;
                    callContext.proc = moduleMethod;
                    callContext.pc = 2;
                    return 0;
                default:
                    return super.match2(moduleMethod, obj, obj2, callContext);
            }
        }
        if (!(obj instanceof CharSeq)) {
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
    }

    public static CharSequence makeString(int i, Object obj) {
        try {
            return new FString(i, ((Char) obj).charValue());
        } catch (ClassCastException e) {
            throw new WrongType(e, "gnu.lists.FString.<init>(int,char)", 2, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 4) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i == 22) {
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }
        if (i != 23) {
            return super.matchN(moduleMethod, objArr, callContext);
        }
        callContext.values = objArr;
        callContext.proc = moduleMethod;
        callContext.pc = 5;
        return 0;
    }

    public static CharSequence $make$string$(Object... objArr) {
        int length = objArr.length;
        FString fString = new FString(length);
        for (int i = 0; i < length; i++) {
            fString.setCharAt(i, ((Char) objArr[i]).charValue());
        }
        return fString;
    }

    public static int stringLength(CharSequence charSequence) {
        return charSequence.length();
    }

    public static char stringRef(CharSequence charSequence, int i) {
        return charSequence.charAt(i);
    }

    @Override // gnu.expr.ModuleBody
    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i != 7) {
            if (i != 13) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            if (!(obj instanceof CharSequence)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (!(obj instanceof CharSeq)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        if (!(obj3 instanceof Char)) {
            return -786429;
        }
        callContext.value3 = obj3;
        callContext.proc = moduleMethod;
        callContext.pc = 3;
        return 0;
    }

    public static boolean isString$Eq(Object obj, Object obj2) {
        return obj.toString().equals(obj2.toString());
    }

    public static boolean isString$Ls(Object obj, Object obj2) {
        return obj.toString().compareTo(obj2.toString()) < 0;
    }

    public static boolean isString$Gr(Object obj, Object obj2) {
        return obj.toString().compareTo(obj2.toString()) > 0;
    }

    public static boolean isString$Ls$Eq(Object obj, Object obj2) {
        return obj.toString().compareTo(obj2.toString()) <= 0;
    }

    public static boolean isString$Gr$Eq(Object obj, Object obj2) {
        return obj.toString().compareTo(obj2.toString()) >= 0;
    }

    @Override // gnu.expr.ModuleBody
    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
        int i = moduleMethod.selector;
        if (i == 7) {
            try {
                try {
                    try {
                        ((CharSeq) obj).setCharAt(((Number) obj2).intValue(), ((Char) obj3).charValue());
                        return Values.empty;
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "string-set!", 3, obj3);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "string-set!", 2, obj2);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "string-set!", 1, obj);
            }
        }
        if (i != 13) {
            return super.apply3(moduleMethod, obj, obj2, obj3);
        }
        try {
            try {
                try {
                    return substring((CharSequence) obj, ((Number) obj2).intValue(), ((Number) obj3).intValue());
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "substring", 3, obj3);
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "substring", 2, obj2);
            }
        } catch (ClassCastException e6) {
            throw new WrongType(e6, "substring", 1, obj);
        }
    }

    public static CharSequence substring(CharSequence charSequence, int i, int i2) {
        return new FString(charSequence, i, i2 - i);
    }

    public static LList string$To$List(CharSequence charSequence) {
        LList pair = LList.Empty;
        int iStringLength = stringLength(charSequence);
        while (true) {
            iStringLength--;
            if (iStringLength < 0) {
                return pair;
            }
            pair = new Pair(Char.make(stringRef(charSequence, iStringLength)), pair);
        }
    }

    public static CharSequence list$To$String(LList lList) {
        int length = lists.length(lList);
        FString fString = new FString(length);
        for (int i = 0; i < length; i++) {
            try {
                Pair pair = (Pair) lList;
                Object car = pair.getCar();
                try {
                    fString.setCharAt(i, ((Char) car).charValue());
                    Object cdr = pair.getCdr();
                    try {
                        lList = (LList) cdr;
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "list", -2, cdr);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "string-set!", 2, car);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "pair", -2, lList);
            }
        }
        return fString;
    }

    public static FString stringCopy(CharSequence charSequence) {
        return new FString(charSequence);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        int i = moduleMethod.selector;
        if (i == 2) {
            try {
                return makeString(((Number) obj).intValue(), obj2);
            } catch (ClassCastException e) {
                throw new WrongType(e, "make-string", 1, obj);
            }
        }
        if (i == 6) {
            try {
                try {
                    return Char.make(stringRef((CharSequence) obj, ((Number) obj2).intValue()));
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "string-ref", 2, obj2);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "string-ref", 1, obj);
            }
        }
        if (i != 17) {
            switch (i) {
                case 8:
                    return isString$Eq(obj, obj2) ? Boolean.TRUE : Boolean.FALSE;
                case 9:
                    return isString$Ls(obj, obj2) ? Boolean.TRUE : Boolean.FALSE;
                case 10:
                    return isString$Gr(obj, obj2) ? Boolean.TRUE : Boolean.FALSE;
                case 11:
                    return isString$Ls$Eq(obj, obj2) ? Boolean.TRUE : Boolean.FALSE;
                case 12:
                    return isString$Gr$Eq(obj, obj2) ? Boolean.TRUE : Boolean.FALSE;
                default:
                    return super.apply2(moduleMethod, obj, obj2);
            }
        }
        try {
            try {
                ((CharSeq) obj).fill(((Char) obj2).charValue());
                return Values.empty;
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "string-fill!", 2, obj2);
            }
        } catch (ClassCastException e5) {
            throw new WrongType(e5, "string-fill!", 1, obj);
        }
    }

    public static CharSequence stringUpcase$Ex(CharSeq charSeq) {
        Strings.makeUpperCase(charSeq);
        return charSeq;
    }

    public static CharSequence stringDowncase$Ex(CharSeq charSeq) {
        Strings.makeLowerCase(charSeq);
        return charSeq;
    }

    public static CharSequence stringCapitalize$Ex(CharSeq charSeq) {
        Strings.makeCapitalize(charSeq);
        return charSeq;
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        if (i == 1) {
            return isString(obj) ? Boolean.TRUE : Boolean.FALSE;
        }
        if (i == 2) {
            try {
                return makeString(((Number) obj).intValue());
            } catch (ClassCastException e) {
                throw new WrongType(e, "make-string", 1, obj);
            }
        }
        if (i == 5) {
            try {
                return Integer.valueOf(stringLength((CharSequence) obj));
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "string-length", 1, obj);
            }
        }
        switch (i) {
            case 14:
                try {
                    return string$To$List((CharSequence) obj);
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "string->list", 1, obj);
                }
            case 15:
                try {
                    return list$To$String((LList) obj);
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "list->string", 1, obj);
                }
            case 16:
                try {
                    return stringCopy((CharSequence) obj);
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "string-copy", 1, obj);
                }
            default:
                switch (i) {
                    case 18:
                        try {
                            return stringUpcase$Ex((CharSeq) obj);
                        } catch (ClassCastException e6) {
                            throw new WrongType(e6, "string-upcase!", 1, obj);
                        }
                    case 19:
                        try {
                            return stringDowncase$Ex((CharSeq) obj);
                        } catch (ClassCastException e7) {
                            throw new WrongType(e7, "string-downcase!", 1, obj);
                        }
                    case 20:
                        try {
                            return stringCapitalize$Ex((CharSeq) obj);
                        } catch (ClassCastException e8) {
                            throw new WrongType(e8, "string-capitalize!", 1, obj);
                        }
                    case 21:
                        try {
                            return stringCapitalize((CharSequence) obj);
                        } catch (ClassCastException e9) {
                            throw new WrongType(e9, "string-capitalize", 1, obj);
                        }
                    default:
                        return super.apply1(moduleMethod, obj);
                }
        }
    }

    public static CharSequence stringCapitalize(CharSequence charSequence) {
        FString fStringStringCopy = stringCopy(charSequence);
        Strings.makeCapitalize(fStringStringCopy);
        return fStringStringCopy;
    }

    public static FString stringAppend(Object... objArr) {
        FString fString = new FString();
        fString.addAllStrings(objArr, 0);
        return fString;
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        int i = moduleMethod.selector;
        if (i == 4) {
            return $make$string$(objArr);
        }
        if (i != 22) {
            return i != 23 ? super.applyN(moduleMethod, objArr) : stringAppend$SlShared(objArr);
        }
        return stringAppend(objArr);
    }

    public static CharSequence stringAppend$SlShared(Object... objArr) {
        FString fStringStringCopy;
        if (objArr.length == 0) {
            return new FString();
        }
        Object obj = objArr[0];
        if (obj instanceof FString) {
            try {
                fStringStringCopy = (FString) obj;
            } catch (ClassCastException e) {
                throw new WrongType(e, "fstr", -2, obj);
            }
        } else {
            try {
                fStringStringCopy = stringCopy((CharSequence) obj);
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "string-copy", 0, obj);
            }
        }
        fStringStringCopy.addAllStrings(objArr, 1);
        return fStringStringCopy;
    }
}
