package gnu.kawa.slib;

import androidx.core.view.InputDeviceCompat;
import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.lispexpr.ReadTable;
import gnu.kawa.lispexpr.ReadTableEntry;
import gnu.kawa.lispexpr.ReaderDispatch;
import gnu.kawa.lispexpr.ReaderDispatchMacro;
import gnu.kawa.lispexpr.ReaderMacro;
import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.text.Char;

/* loaded from: classes2.dex */
public class readtable extends ModuleBody {
    public static final readtable $instance;
    static final SimpleSymbol Lit0;
    static final SimpleSymbol Lit1;
    static final SimpleSymbol Lit2;
    static final SimpleSymbol Lit3;
    static final SimpleSymbol Lit4;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit6;
    public static final ModuleMethod current$Mnreadtable;
    public static final ModuleMethod define$Mnreader$Mnctor;
    public static final ModuleMethod get$Mndispatch$Mnmacro$Mntable;
    public static final ModuleMethod make$Mndispatch$Mnmacro$Mncharacter;
    public static final ModuleMethod readtable$Qu;
    public static final ModuleMethod set$Mndispatch$Mnmacro$Mncharacter;
    public static final ModuleMethod set$Mnmacro$Mncharacter;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("define-reader-ctor");
        Lit6 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("get-dispatch-macro-table");
        Lit5 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("set-dispatch-macro-character");
        Lit4 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("make-dispatch-macro-character");
        Lit3 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("set-macro-character");
        Lit2 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("readtable?");
        Lit1 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("current-readtable");
        Lit0 = simpleSymbol7;
        readtable readtableVar = new readtable();
        $instance = readtableVar;
        current$Mnreadtable = new ModuleMethod(readtableVar, 1, simpleSymbol7, 0);
        readtable$Qu = new ModuleMethod(readtableVar, 2, simpleSymbol6, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        set$Mnmacro$Mncharacter = new ModuleMethod(readtableVar, 3, simpleSymbol5, InputDeviceCompat.SOURCE_STYLUS);
        make$Mndispatch$Mnmacro$Mncharacter = new ModuleMethod(readtableVar, 6, simpleSymbol4, 12289);
        set$Mndispatch$Mnmacro$Mncharacter = new ModuleMethod(readtableVar, 9, simpleSymbol3, 16387);
        get$Mndispatch$Mnmacro$Mntable = new ModuleMethod(readtableVar, 11, simpleSymbol2, 12290);
        define$Mnreader$Mnctor = new ModuleMethod(readtableVar, 13, simpleSymbol, 12290);
        readtableVar.run();
    }

    public readtable() {
        ModuleInfo.register(this);
    }

    public static void defineReaderCtor(Symbol symbol, Procedure procedure) {
        defineReaderCtor(symbol, procedure, currentReadtable());
    }

    public static Object getDispatchMacroTable(char c, char c2) {
        return getDispatchMacroTable(c, c2, currentReadtable());
    }

    public static void makeDispatchMacroCharacter(char c) {
        makeDispatchMacroCharacter(c, false);
    }

    public static void makeDispatchMacroCharacter(char c, boolean z) {
        makeDispatchMacroCharacter(c, z, currentReadtable());
    }

    public static void setDispatchMacroCharacter(char c, char c2, Object obj) {
        setDispatchMacroCharacter(c, c2, obj, currentReadtable());
    }

    public static void setMacroCharacter(char c, Object obj) {
        setMacroCharacter(c, obj, false);
    }

    public static void setMacroCharacter(char c, Object obj, boolean z) {
        setMacroCharacter(c, obj, z, currentReadtable());
    }

    @Override // gnu.expr.ModuleBody
    public Object apply0(ModuleMethod moduleMethod) {
        return moduleMethod.selector == 1 ? currentReadtable() : super.apply0(moduleMethod);
    }

    @Override // gnu.expr.ModuleBody
    public int match0(ModuleMethod moduleMethod, CallContext callContext) {
        if (moduleMethod.selector != 1) {
            return super.match0(moduleMethod, callContext);
        }
        callContext.proc = moduleMethod;
        callContext.pc = 0;
        return 0;
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    public static ReadTable currentReadtable() {
        return ReadTable.getCurrent();
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 2) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i != 6) {
            return super.match1(moduleMethod, obj, callContext);
        }
        if (!(obj instanceof Char)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    public static boolean isReadtable(Object obj) {
        return obj instanceof ReadTable;
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 3) {
            if (!(obj instanceof Char)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 6) {
            if (!(obj instanceof Char)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 11) {
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
        }
        if (i != 13) {
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
        if (!(obj instanceof Symbol)) {
            return -786431;
        }
        callContext.value1 = obj;
        if (!(obj2 instanceof Procedure)) {
            return -786430;
        }
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    @Override // gnu.expr.ModuleBody
    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 3) {
            if (!(obj instanceof Char)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 6) {
            if (!(obj instanceof Char)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            if (!(obj3 instanceof ReadTable)) {
                return -786429;
            }
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 9) {
            if (!(obj instanceof Char)) {
                return -786431;
            }
            callContext.value1 = obj;
            if (!(obj2 instanceof Char)) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 11) {
            if (!(obj instanceof Char)) {
                return -786431;
            }
            callContext.value1 = obj;
            if (!(obj2 instanceof Char)) {
                return -786430;
            }
            callContext.value2 = obj2;
            if (!(obj3 instanceof ReadTable)) {
                return -786429;
            }
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i != 13) {
            return super.match3(moduleMethod, obj, obj2, obj3, callContext);
        }
        if (!(obj instanceof Symbol)) {
            return -786431;
        }
        callContext.value1 = obj;
        if (!(obj2 instanceof Procedure)) {
            return -786430;
        }
        callContext.value2 = obj2;
        if (!(obj3 instanceof ReadTable)) {
            return -786429;
        }
        callContext.value3 = obj3;
        callContext.proc = moduleMethod;
        callContext.pc = 3;
        return 0;
    }

    @Override // gnu.expr.ModuleBody
    public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 3) {
            if (!(obj instanceof Char)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            if (!(obj4 instanceof ReadTable)) {
                return -786428;
            }
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
        if (i != 9) {
            return super.match4(moduleMethod, obj, obj2, obj3, obj4, callContext);
        }
        if (!(obj instanceof Char)) {
            return -786431;
        }
        callContext.value1 = obj;
        if (!(obj2 instanceof Char)) {
            return -786430;
        }
        callContext.value2 = obj2;
        callContext.value3 = obj3;
        if (!(obj4 instanceof ReadTable)) {
            return -786428;
        }
        callContext.value4 = obj4;
        callContext.proc = moduleMethod;
        callContext.pc = 4;
        return 0;
    }

    public static void setMacroCharacter(char c, Object obj, boolean z, ReadTable readTable) {
        try {
            readTable.set(c, new ReaderMacro((Procedure) obj, z));
        } catch (ClassCastException e) {
            throw new WrongType(e, "gnu.kawa.lispexpr.ReaderMacro.<init>(gnu.mapping.Procedure,boolean)", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        if (i == 2) {
            return isReadtable(obj) ? Boolean.TRUE : Boolean.FALSE;
        }
        if (i != 6) {
            return super.apply1(moduleMethod, obj);
        }
        try {
            makeDispatchMacroCharacter(((Char) obj).charValue());
            return Values.empty;
        } catch (ClassCastException e) {
            throw new WrongType(e, "make-dispatch-macro-character", 1, obj);
        }
    }

    public static void makeDispatchMacroCharacter(char c, boolean z, ReadTable readTable) {
        readTable.set(c, new ReaderDispatch(z));
    }

    @Override // gnu.expr.ModuleBody
    public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) {
        int i = moduleMethod.selector;
        if (i == 3) {
            try {
                try {
                    try {
                        setMacroCharacter(((Char) obj).charValue(), obj2, obj3 != Boolean.FALSE, (ReadTable) obj4);
                        return Values.empty;
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "set-macro-character", 4, obj4);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "set-macro-character", 3, obj3);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "set-macro-character", 1, obj);
            }
        }
        if (i != 9) {
            return super.apply4(moduleMethod, obj, obj2, obj3, obj4);
        }
        try {
            try {
                try {
                    setDispatchMacroCharacter(((Char) obj).charValue(), ((Char) obj2).charValue(), obj3, (ReadTable) obj4);
                    return Values.empty;
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "set-dispatch-macro-character", 4, obj4);
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "set-dispatch-macro-character", 2, obj2);
            }
        } catch (ClassCastException e6) {
            throw new WrongType(e6, "set-dispatch-macro-character", 1, obj);
        }
    }

    public static void setDispatchMacroCharacter(char c, char c2, Object obj, ReadTable readTable) {
        ReadTableEntry readTableEntryLookup = readTable.lookup(c);
        try {
            try {
                ((ReaderDispatch) readTableEntryLookup).set(c2, new ReaderDispatchMacro((Procedure) obj));
            } catch (ClassCastException e) {
                throw new WrongType(e, "gnu.kawa.lispexpr.ReaderDispatchMacro.<init>(gnu.mapping.Procedure)", 1, obj);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "entry", -2, readTableEntryLookup);
        }
    }

    public static Object getDispatchMacroTable(char c, char c2, ReadTable readTable) {
        ReadTableEntry readTableEntryLookup = readTable.lookup(c);
        try {
            ReadTableEntry readTableEntryLookup2 = ((ReaderDispatch) readTableEntryLookup).lookup(c2);
            return readTableEntryLookup2 == null ? Boolean.FALSE : readTableEntryLookup2;
        } catch (ClassCastException e) {
            throw new WrongType(e, "disp-entry", -2, readTableEntryLookup);
        }
    }

    public static void defineReaderCtor(Symbol symbol, Procedure procedure, ReadTable readTable) {
        readTable.putReaderCtor(symbol == null ? null : symbol.toString(), procedure);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        int i = moduleMethod.selector;
        if (i == 3) {
            try {
                setMacroCharacter(((Char) obj).charValue(), obj2);
                return Values.empty;
            } catch (ClassCastException e) {
                throw new WrongType(e, "set-macro-character", 1, obj);
            }
        }
        if (i == 6) {
            try {
                try {
                    makeDispatchMacroCharacter(((Char) obj).charValue(), obj2 != Boolean.FALSE);
                    return Values.empty;
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "make-dispatch-macro-character", 2, obj2);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "make-dispatch-macro-character", 1, obj);
            }
        }
        if (i == 11) {
            try {
                try {
                    return getDispatchMacroTable(((Char) obj).charValue(), ((Char) obj2).charValue());
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "get-dispatch-macro-table", 2, obj2);
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "get-dispatch-macro-table", 1, obj);
            }
        }
        if (i != 13) {
            return super.apply2(moduleMethod, obj, obj2);
        }
        try {
            try {
                defineReaderCtor((Symbol) obj, (Procedure) obj2);
                return Values.empty;
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "define-reader-ctor", 2, obj2);
            }
        } catch (ClassCastException e7) {
            throw new WrongType(e7, "define-reader-ctor", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
        int i = moduleMethod.selector;
        if (i == 3) {
            try {
                try {
                    setMacroCharacter(((Char) obj).charValue(), obj2, obj3 != Boolean.FALSE);
                    return Values.empty;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "set-macro-character", 3, obj3);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "set-macro-character", 1, obj);
            }
        }
        if (i == 6) {
            try {
                try {
                    try {
                        makeDispatchMacroCharacter(((Char) obj).charValue(), obj2 != Boolean.FALSE, (ReadTable) obj3);
                        return Values.empty;
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "make-dispatch-macro-character", 3, obj3);
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "make-dispatch-macro-character", 2, obj2);
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "make-dispatch-macro-character", 1, obj);
            }
        }
        if (i == 9) {
            try {
                try {
                    setDispatchMacroCharacter(((Char) obj).charValue(), ((Char) obj2).charValue(), obj3);
                    return Values.empty;
                } catch (ClassCastException e6) {
                    throw new WrongType(e6, "set-dispatch-macro-character", 2, obj2);
                }
            } catch (ClassCastException e7) {
                throw new WrongType(e7, "set-dispatch-macro-character", 1, obj);
            }
        }
        if (i == 11) {
            try {
                try {
                    try {
                        return getDispatchMacroTable(((Char) obj).charValue(), ((Char) obj2).charValue(), (ReadTable) obj3);
                    } catch (ClassCastException e8) {
                        throw new WrongType(e8, "get-dispatch-macro-table", 3, obj3);
                    }
                } catch (ClassCastException e9) {
                    throw new WrongType(e9, "get-dispatch-macro-table", 2, obj2);
                }
            } catch (ClassCastException e10) {
                throw new WrongType(e10, "get-dispatch-macro-table", 1, obj);
            }
        }
        if (i != 13) {
            return super.apply3(moduleMethod, obj, obj2, obj3);
        }
        try {
            try {
                try {
                    defineReaderCtor((Symbol) obj, (Procedure) obj2, (ReadTable) obj3);
                    return Values.empty;
                } catch (ClassCastException e11) {
                    throw new WrongType(e11, "define-reader-ctor", 3, obj3);
                }
            } catch (ClassCastException e12) {
                throw new WrongType(e12, "define-reader-ctor", 2, obj2);
            }
        } catch (ClassCastException e13) {
            throw new WrongType(e13, "define-reader-ctor", 1, obj);
        }
    }
}
