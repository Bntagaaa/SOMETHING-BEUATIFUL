package gnu.kawa.lispexpr;

import gnu.bytecode.Type;
import gnu.expr.Language;
import gnu.kawa.reflect.StaticFieldLocation;
import gnu.kawa.util.RangeTable;
import gnu.mapping.Environment;
import gnu.mapping.Namespace;
import gnu.mapping.Procedure;
import gnu.mapping.ThreadLocation;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* loaded from: classes2.dex */
public class ReadTable extends RangeTable {
    public static final int CONSTITUENT = 2;
    public static final int ILLEGAL = 0;
    public static final int MULTIPLE_ESCAPE = 4;
    public static final int NON_TERMINATING_MACRO = 6;
    public static final int SINGLE_ESCAPE = 3;
    public static final int TERMINATING_MACRO = 5;
    public static final int WHITESPACE = 1;
    static final ThreadLocation current = new ThreadLocation("read-table");
    public static int defaultBracketMode = -1;
    protected boolean finalColonIsKeyword;
    protected boolean initialColonIsKeyword;
    public char postfixLookupOperator = 65535;
    protected boolean hexEscapeAfterBackslash = true;
    Environment ctorTable = null;

    public void setInitialColonIsKeyword(boolean z) {
        this.initialColonIsKeyword = z;
    }

    public void setFinalColonIsKeyword(boolean z) {
        this.finalColonIsKeyword = z;
    }

    public void initialize() {
        ReadTableEntry whitespaceInstance = ReadTableEntry.getWhitespaceInstance();
        set(32, whitespaceInstance);
        set(9, whitespaceInstance);
        set(10, whitespaceInstance);
        set(13, whitespaceInstance);
        set(12, whitespaceInstance);
        set(124, ReadTableEntry.getMultipleEscapeInstance());
        set(92, ReadTableEntry.getSingleEscapeInstance());
        set(48, 57, ReadTableEntry.getDigitInstance());
        ReadTableEntry constituentInstance = ReadTableEntry.getConstituentInstance();
        set(97, 122, constituentInstance);
        set(65, 90, constituentInstance);
        set(33, constituentInstance);
        set(36, constituentInstance);
        set(37, constituentInstance);
        set(38, constituentInstance);
        set(42, constituentInstance);
        set(43, constituentInstance);
        set(45, constituentInstance);
        set(46, constituentInstance);
        set(47, constituentInstance);
        set(61, constituentInstance);
        set(62, constituentInstance);
        set(63, constituentInstance);
        set(64, constituentInstance);
        set(94, constituentInstance);
        set(95, constituentInstance);
        set(123, ReadTableEntry.brace);
        set(126, constituentInstance);
        set(WorkQueueKt.MASK, constituentInstance);
        set(8, constituentInstance);
        set(58, new ReaderColon());
        set(34, new ReaderString());
        set(35, ReaderDispatch.create(this));
        set(59, ReaderIgnoreRestOfLine.getInstance());
        set(40, ReaderParens.getInstance('(', ')'));
        set(39, new ReaderQuote(makeSymbol(LispLanguage.quote_sym)));
        set(96, new ReaderQuote(makeSymbol(LispLanguage.quasiquote_sym)));
        set(44, new ReaderQuote(makeSymbol(LispLanguage.unquote_sym), '@', makeSymbol(LispLanguage.unquotesplicing_sym)));
        setBracketMode();
    }

    public static ReadTable createInitial() {
        ReadTable readTable = new ReadTable();
        readTable.initialize();
        return readTable;
    }

    public void setBracketMode(int i) {
        if (i <= 0) {
            ReadTableEntry constituentInstance = ReadTableEntry.getConstituentInstance();
            set(60, constituentInstance);
            if (i < 0) {
                set(91, constituentInstance);
                set(93, constituentInstance);
            }
        } else {
            set(60, new ReaderTypespec());
        }
        if (i >= 0) {
            set(91, ReaderParens.getInstance('[', ']'));
            remove(93);
        }
    }

    public void setBracketMode() {
        setBracketMode(defaultBracketMode);
    }

    public void initCtorTable() {
        if (this.ctorTable == null) {
            this.ctorTable = Environment.make();
        }
    }

    public synchronized void putReaderCtor(String str, Procedure procedure) {
        initCtorTable();
        this.ctorTable.put(str, (Object) procedure);
    }

    public synchronized void putReaderCtor(String str, Type type) {
        initCtorTable();
        this.ctorTable.put(str, (Object) type);
    }

    public synchronized void putReaderCtorFld(String str, String str2, String str3) {
        initCtorTable();
        StaticFieldLocation.define(this.ctorTable, this.ctorTable.getSymbol(str), (Object) null, str2, str3);
    }

    public synchronized Object getReaderCtor(String str) {
        initCtorTable();
        return this.ctorTable.get(str, (Object) null);
    }

    public static ReadTable getCurrent() {
        ThreadLocation threadLocation = current;
        ReadTable readTableCreateInitial = (ReadTable) threadLocation.get(null);
        if (readTableCreateInitial == null) {
            Language defaultLanguage = Language.getDefaultLanguage();
            if (defaultLanguage instanceof LispLanguage) {
                readTableCreateInitial = ((LispLanguage) defaultLanguage).defaultReadTable;
            } else {
                readTableCreateInitial = createInitial();
            }
            threadLocation.set(readTableCreateInitial);
        }
        return readTableCreateInitial;
    }

    public static void setCurrent(ReadTable readTable) {
        current.set(readTable);
    }

    public ReadTableEntry lookup(int i) {
        ReadTableEntry constituentInstance = (ReadTableEntry) lookup(i, null);
        if (constituentInstance == null && i >= 0 && i < 65536) {
            char c = (char) i;
            if (Character.isDigit(c)) {
                constituentInstance = (ReadTableEntry) lookup(48, null);
            } else if (Character.isLowerCase(c)) {
                constituentInstance = (ReadTableEntry) lookup(97, null);
            } else if (Character.isLetter(c)) {
                constituentInstance = (ReadTableEntry) lookup(65, null);
            } else if (Character.isWhitespace(c)) {
                constituentInstance = (ReadTableEntry) lookup(32, null);
            }
            if (constituentInstance == null && i >= 128) {
                constituentInstance = ReadTableEntry.getConstituentInstance();
            }
            if (constituentInstance == null) {
                return ReadTableEntry.getIllegalInstance();
            }
        }
        return constituentInstance;
    }

    public Object makeSymbol(String str) {
        return Namespace.EmptyNamespace.getSymbol(str.intern());
    }
}
