package gnu.kawa.slib;

import androidx.fragment.app.FragmentTransaction;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.youngandroid.a;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.ApplyToArgs;
import gnu.kawa.lispexpr.LangObjType;
import gnu.kawa.reflect.StaticFieldLocation;
import gnu.kawa.util.HashNode;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.CallContext;
import gnu.mapping.Location;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import kawa.lib.kawa.hashtable;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.lib.numbers;
import kawa.lib.rnrs.hashtables;
import kawa.lib.rnrs.unicode;
import kawa.lib.strings;
import kawa.standard.Scheme;

/* loaded from: classes2.dex */
public class srfi69 extends ModuleBody {
    public static final srfi69 $instance;
    static final IntNum Lit0;
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
    static final SimpleSymbol Lit3;
    static final SimpleSymbol Lit4;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit7;
    static final SimpleSymbol Lit8;
    static final SimpleSymbol Lit9;
    public static final ModuleMethod alist$Mn$Grhash$Mntable;
    public static final ModuleMethod hash;
    public static final ModuleMethod hash$Mnby$Mnidentity;
    public static final ModuleMethod hash$Mntable$Mn$Gralist;
    public static final ModuleMethod hash$Mntable$Mncopy;
    public static final Location hash$Mntable$Mndelete$Ex;
    public static final ModuleMethod hash$Mntable$Mnequivalence$Mnfunction;
    public static final Location hash$Mntable$Mnexists$Qu;
    public static final ModuleMethod hash$Mntable$Mnfold;
    public static final ModuleMethod hash$Mntable$Mnhash$Mnfunction;
    public static final ModuleMethod hash$Mntable$Mnkeys;
    public static final ModuleMethod hash$Mntable$Mnmerge$Ex;
    public static final ModuleMethod hash$Mntable$Mnref;
    public static final ModuleMethod hash$Mntable$Mnref$Sldefault;
    public static final Location hash$Mntable$Mnset$Ex;
    public static final Location hash$Mntable$Mnsize;
    public static final ModuleMethod hash$Mntable$Mnupdate$Ex;
    public static final ModuleMethod hash$Mntable$Mnupdate$Ex$Sldefault;
    public static final ModuleMethod hash$Mntable$Mnvalues;
    public static final ModuleMethod hash$Mntable$Mnwalk;
    public static final Location hash$Mntable$Qu;
    static final ModuleMethod lambda$Fn1;
    static final ModuleMethod lambda$Fn2;
    static final ModuleMethod lambda$Fn3;
    public static final ModuleMethod make$Mnhash$Mntable;
    public static final ModuleMethod string$Mnci$Mnhash;
    public static final ModuleMethod string$Mnhash;

    public srfi69() {
        ModuleInfo.register(this);
    }

    public static hashtable.HashTable alist$To$HashTable(Object obj) {
        return alist$To$HashTable(obj, Scheme.isEqual);
    }

    public static hashtable.HashTable alist$To$HashTable(Object obj, Object obj2) {
        return alist$To$HashTable(obj, obj2, appropriateHashFunctionFor(obj2));
    }

    public static Object hash(Object obj) {
        return hash(obj, null);
    }

    public static Object hashByIdentity(Object obj) {
        return hashByIdentity(obj, null);
    }

    public static Object hashTableRef(hashtable.HashTable hashTable, Object obj) {
        return hashTableRef(hashTable, obj, Boolean.FALSE);
    }

    public static void hashTableUpdate$Ex(hashtable.HashTable hashTable, Object obj, Object obj2) {
        hashTableUpdate$Ex(hashTable, obj, obj2, Boolean.FALSE);
    }

    public static Object lambda1(Object obj) {
        return obj;
    }

    public static hashtable.HashTable makeHashTable() {
        return makeHashTable(Scheme.isEqual);
    }

    public static hashtable.HashTable makeHashTable(Procedure procedure) {
        return makeHashTable(procedure, appropriateHashFunctionFor(procedure), 64);
    }

    public static hashtable.HashTable makeHashTable(Procedure procedure, Procedure procedure2) {
        return makeHashTable(procedure, procedure2, 64);
    }

    public static Object stringCiHash(Object obj) {
        return stringCiHash(obj, null);
    }

    public static Object stringHash(CharSequence charSequence) {
        return stringHash(charSequence, null);
    }

    public static Object symbolHash(Symbol symbol) {
        return symbolHash(symbol, null);
    }

    public static Object vectorHash(Object obj) {
        return vectorHash(obj, null);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("hash-table-values");
        Lit19 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("hash-table-keys");
        Lit18 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("hash-table-merge!");
        Lit17 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("hash-table-copy");
        Lit16 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("hash-table->alist");
        Lit15 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("alist->hash-table");
        Lit14 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("hash-table-fold");
        Lit13 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("hash-table-walk");
        Lit12 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("hash-table-update!/default");
        Lit11 = simpleSymbol9;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("hash-table-update!");
        Lit10 = simpleSymbol10;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("hash-table-ref/default");
        Lit9 = simpleSymbol11;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("hash-table-ref");
        Lit8 = simpleSymbol12;
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("make-hash-table");
        Lit7 = simpleSymbol13;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("hash-table-hash-function");
        Lit6 = simpleSymbol14;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("hash-table-equivalence-function");
        Lit5 = simpleSymbol15;
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f("hash-by-identity");
        Lit4 = simpleSymbol16;
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("hash");
        Lit3 = simpleSymbol17;
        SimpleSymbol simpleSymbol18 = (SimpleSymbol) a.f("string-ci-hash");
        Lit2 = simpleSymbol18;
        SimpleSymbol simpleSymbol19 = (SimpleSymbol) a.f("string-hash");
        Lit1 = simpleSymbol19;
        Lit0 = IntNum.make(64);
        srfi69 srfi69Var = new srfi69();
        $instance = srfi69Var;
        hash$Mntable$Qu = StaticFieldLocation.make("kawa.lib.rnrs.hashtables", "hashtable$Qu");
        hash$Mntable$Mnsize = StaticFieldLocation.make("kawa.lib.rnrs.hashtables", "hashtable$Mnsize");
        hash$Mntable$Mnset$Ex = StaticFieldLocation.make("kawa.lib.rnrs.hashtables", "hashtable$Mnset$Ex");
        hash$Mntable$Mndelete$Ex = StaticFieldLocation.make("kawa.lib.rnrs.hashtables", "hashtable$Mndelete$Ex");
        hash$Mntable$Mnexists$Qu = StaticFieldLocation.make("kawa.lib.rnrs.hashtables", "hashtable$Mncontains$Qu");
        string$Mnhash = new ModuleMethod(srfi69Var, 1, simpleSymbol19, 8193);
        string$Mnci$Mnhash = new ModuleMethod(srfi69Var, 3, simpleSymbol18, 8193);
        hash = new ModuleMethod(srfi69Var, 5, simpleSymbol17, 8193);
        hash$Mnby$Mnidentity = new ModuleMethod(srfi69Var, 7, simpleSymbol16, 8193);
        hash$Mntable$Mnequivalence$Mnfunction = new ModuleMethod(srfi69Var, 9, simpleSymbol15, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        hash$Mntable$Mnhash$Mnfunction = new ModuleMethod(srfi69Var, 10, simpleSymbol14, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        make$Mnhash$Mntable = new ModuleMethod(srfi69Var, 11, simpleSymbol13, 12288);
        hash$Mntable$Mnref = new ModuleMethod(srfi69Var, 15, simpleSymbol12, 12290);
        hash$Mntable$Mnref$Sldefault = new ModuleMethod(srfi69Var, 17, simpleSymbol11, 12291);
        hash$Mntable$Mnupdate$Ex = new ModuleMethod(srfi69Var, 18, simpleSymbol10, 16387);
        hash$Mntable$Mnupdate$Ex$Sldefault = new ModuleMethod(srfi69Var, 20, simpleSymbol9, 16388);
        hash$Mntable$Mnwalk = new ModuleMethod(srfi69Var, 21, simpleSymbol8, 8194);
        hash$Mntable$Mnfold = new ModuleMethod(srfi69Var, 22, simpleSymbol7, 12291);
        ModuleMethod moduleMethod = new ModuleMethod(srfi69Var, 23, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi69.scm:166");
        lambda$Fn1 = moduleMethod;
        alist$Mn$Grhash$Mntable = new ModuleMethod(srfi69Var, 24, simpleSymbol6, 16385);
        hash$Mntable$Mn$Gralist = new ModuleMethod(srfi69Var, 28, simpleSymbol5, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        hash$Mntable$Mncopy = new ModuleMethod(srfi69Var, 29, simpleSymbol4, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        hash$Mntable$Mnmerge$Ex = new ModuleMethod(srfi69Var, 30, simpleSymbol3, 8194);
        ModuleMethod moduleMethod2 = new ModuleMethod(srfi69Var, 31, null, 12291);
        moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi69.scm:183");
        lambda$Fn2 = moduleMethod2;
        hash$Mntable$Mnkeys = new ModuleMethod(srfi69Var, 32, simpleSymbol2, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        ModuleMethod moduleMethod3 = new ModuleMethod(srfi69Var, 33, null, 12291);
        moduleMethod3.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi69.scm:186");
        lambda$Fn3 = moduleMethod3;
        hash$Mntable$Mnvalues = new ModuleMethod(srfi69Var, 34, simpleSymbol, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        srfi69Var.run();
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 1) {
            if (!(obj instanceof CharSequence)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 3) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 5) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 7) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 32) {
            if (!(obj instanceof hashtable.HashTable)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 34) {
            if (!(obj instanceof hashtable.HashTable)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 23) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 24) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 28) {
            if (!(obj instanceof hashtable.HashTable)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i != 29) {
            switch (i) {
                case 9:
                    if (!(obj instanceof hashtable.HashTable)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 10:
                    if (!(obj instanceof hashtable.HashTable)) {
                        return -786431;
                    }
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 11:
                    if (!(obj instanceof Procedure)) {
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
        if (!(obj instanceof hashtable.HashTable)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 1) {
            if (!(obj instanceof CharSequence)) {
                return -786431;
            }
            callContext.value1 = obj;
            if (IntNum.asIntNumOrNull(obj2) == null) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 3) {
            callContext.value1 = obj;
            if (IntNum.asIntNumOrNull(obj2) == null) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 5) {
            callContext.value1 = obj;
            if (IntNum.asIntNumOrNull(obj2) == null) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 7) {
            callContext.value1 = obj;
            if (IntNum.asIntNumOrNull(obj2) == null) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 11) {
            if (!(obj instanceof Procedure)) {
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
        if (i == 15) {
            if (!(obj instanceof hashtable.HashTable)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 21) {
            if (!(obj instanceof hashtable.HashTable)) {
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
        if (i == 24) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i != 30) {
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
        if (!(obj instanceof hashtable.HashTable)) {
            return -786431;
        }
        callContext.value1 = obj;
        if (!(obj2 instanceof hashtable.HashTable)) {
            return -786430;
        }
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    public static Object stringHash(CharSequence charSequence, IntNum intNum) {
        int iHashCode = charSequence.hashCode();
        return intNum == null ? Integer.valueOf(iHashCode) : IntNum.modulo(IntNum.make(iHashCode), intNum);
    }

    public static Object stringCiHash(Object obj, IntNum intNum) {
        int iHashCode = obj.toString().toLowerCase().hashCode();
        return intNum == null ? Integer.valueOf(iHashCode) : IntNum.modulo(IntNum.make(iHashCode), intNum);
    }

    public static Object symbolHash(Symbol symbol, IntNum intNum) {
        int iHashCode = symbol.hashCode();
        return intNum == null ? Integer.valueOf(iHashCode) : IntNum.modulo(IntNum.make(iHashCode), intNum);
    }

    public static Object hash(Object obj, IntNum intNum) {
        int iHashCode = obj == null ? 0 : obj.hashCode();
        return intNum == null ? Integer.valueOf(iHashCode) : IntNum.modulo(IntNum.make(iHashCode), intNum);
    }

    public static Object hashByIdentity(Object obj, IntNum intNum) {
        int iIdentityHashCode = System.identityHashCode(obj);
        return intNum == null ? Integer.valueOf(iIdentityHashCode) : IntNum.modulo(IntNum.make(iIdentityHashCode), intNum);
    }

    public static Object vectorHash(Object obj, IntNum intNum) {
        int iHashCode = obj.hashCode();
        return intNum == null ? Integer.valueOf(iHashCode) : IntNum.modulo(IntNum.make(iHashCode), intNum);
    }

    public static Procedure hashTableEquivalenceFunction(hashtable.HashTable hashTable) {
        return hashTable.equivalenceFunction;
    }

    public static Procedure hashTableHashFunction(hashtable.HashTable hashTable) {
        return hashTable.hashFunction;
    }

    public static Procedure appropriateHashFunctionFor(Object obj) {
        boolean z = obj == Scheme.isEq;
        Object obj2 = z ? hash$Mnby$Mnidentity : z ? Boolean.TRUE : Boolean.FALSE;
        Object obj3 = Boolean.FALSE;
        if (obj2 != obj3) {
            return (Procedure) obj2;
        }
        boolean z2 = obj == strings.string$Eq$Qu;
        Object obj4 = z2 ? string$Mnhash : z2 ? Boolean.TRUE : obj3;
        if (obj4 != obj3) {
            return (Procedure) obj4;
        }
        boolean z3 = obj == unicode.string$Mnci$Eq$Qu;
        Object obj5 = z3 ? string$Mnci$Mnhash : z3 ? Boolean.TRUE : obj3;
        return obj5 != obj3 ? (Procedure) obj5 : hash;
    }

    @Override // gnu.expr.ModuleBody
    public Object apply0(ModuleMethod moduleMethod) {
        return moduleMethod.selector == 11 ? makeHashTable() : super.apply0(moduleMethod);
    }

    @Override // gnu.expr.ModuleBody
    public int match0(ModuleMethod moduleMethod, CallContext callContext) {
        if (moduleMethod.selector != 11) {
            return super.match0(moduleMethod, callContext);
        }
        callContext.proc = moduleMethod;
        callContext.pc = 0;
        return 0;
    }

    @Override // gnu.expr.ModuleBody
    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 11) {
            if (!(obj instanceof Procedure)) {
                return -786431;
            }
            callContext.value1 = obj;
            if (!(obj2 instanceof Procedure)) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 15) {
            if (!(obj instanceof hashtable.HashTable)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 22) {
            if (!(obj instanceof hashtable.HashTable)) {
                return -786431;
            }
            callContext.value1 = obj;
            if (!(obj2 instanceof Procedure)) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 24) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 31) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 33) {
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i == 17) {
            if (!(obj instanceof hashtable.HashTable)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
        if (i != 18) {
            return super.match3(moduleMethod, obj, obj2, obj3, callContext);
        }
        if (!(obj instanceof hashtable.HashTable)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.value3 = obj3;
        callContext.proc = moduleMethod;
        callContext.pc = 3;
        return 0;
    }

    public static hashtable.HashTable makeHashTable(Procedure procedure, Procedure procedure2, int i) {
        return new hashtable.HashTable(procedure, procedure2, i);
    }

    public static Object hashTableRef(hashtable.HashTable hashTable, Object obj, Object obj2) {
        HashNode node = hashTable.getNode(obj);
        return node == null ? obj2 != Boolean.FALSE ? Scheme.applyToArgs.apply1(obj2) : misc.error$V("hash-table-ref: no value associated with", new Object[]{obj}) : node.getValue();
    }

    @Override // gnu.expr.ModuleBody
    public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 18) {
            if (!(obj instanceof hashtable.HashTable)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
        if (i != 20) {
            if (i != 24) {
                return super.match4(moduleMethod, obj, obj2, obj3, obj4, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
        if (!(obj instanceof hashtable.HashTable)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.value3 = obj3;
        callContext.value4 = obj4;
        callContext.proc = moduleMethod;
        callContext.pc = 4;
        return 0;
    }

    public static void hashTableUpdate$Ex(hashtable.HashTable hashTable, Object obj, Object obj2, Object obj3) {
        hashtable.hashtableCheckMutable(hashTable);
        HashNode node = hashTable.getNode(obj);
        if (node == null) {
            if (obj3 != Boolean.FALSE) {
                ApplyToArgs applyToArgs = Scheme.applyToArgs;
                hashtables.hashtableSet$Ex(hashTable, obj, applyToArgs.apply2(obj2, applyToArgs.apply1(obj3)));
                return;
            } else {
                misc.error$V("hash-table-update!: no value exists for key", new Object[]{obj});
                return;
            }
        }
        node.setValue(Scheme.applyToArgs.apply2(obj2, node.getValue()));
    }

    public static void hashTableUpdate$Ex$SlDefault(hashtable.HashTable hashTable, Object obj, Object obj2, Object obj3) {
        hashtable.hashtableCheckMutable(hashTable);
        HashNode node = hashTable.getNode(obj);
        if (node == null) {
            hashtables.hashtableSet$Ex(hashTable, obj, Scheme.applyToArgs.apply2(obj2, obj3));
        } else {
            node.setValue(Scheme.applyToArgs.apply2(obj2, node.getValue()));
        }
    }

    public static void hashTableWalk(hashtable.HashTable hashTable, Procedure procedure) throws Throwable {
        hashTable.walk(procedure);
    }

    public static Object hashTableFold(hashtable.HashTable hashTable, Procedure procedure, Object obj) {
        return hashTable.fold(procedure, obj);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) {
        int i = moduleMethod.selector;
        if (i == 18) {
            try {
                hashTableUpdate$Ex((hashtable.HashTable) obj, obj2, obj3, obj4);
                return Values.empty;
            } catch (ClassCastException e) {
                throw new WrongType(e, "hash-table-update!", 1, obj);
            }
        }
        if (i != 20) {
            return i != 24 ? super.apply4(moduleMethod, obj, obj2, obj3, obj4) : alist$To$HashTable(obj, obj2, obj3, obj4);
        }
        try {
            hashTableUpdate$Ex$SlDefault((hashtable.HashTable) obj, obj2, obj3, obj4);
            return Values.empty;
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "hash-table-update!/default", 1, obj);
        }
    }

    public static hashtable.HashTable alist$To$HashTable(Object obj, Object obj2, Object obj3) {
        try {
            return alist$To$HashTable(obj, obj2, obj3, numbers.max(Lit0, Integer.valueOf(lists.length((LList) obj) * 2)));
        } catch (ClassCastException e) {
            throw new WrongType(e, PropertyTypeConstants.PROPERTY_TYPE_LENGTH, 1, obj);
        }
    }

    public static hashtable.HashTable alist$To$HashTable(Object obj, Object obj2, Object obj3, Object obj4) {
        try {
            try {
                try {
                    hashtable.HashTable hashTableMakeHashTable = makeHashTable((Procedure) obj2, (Procedure) obj3, ((Number) obj4).intValue());
                    while (obj != LList.Empty) {
                        try {
                            Pair pair = (Pair) obj;
                            Object car = pair.getCar();
                            hashTableUpdate$Ex$SlDefault(hashTableMakeHashTable, lists.car.apply1(car), lambda$Fn1, lists.cdr.apply1(car));
                            obj = pair.getCdr();
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "arg0", -2, obj);
                        }
                    }
                    return hashTableMakeHashTable;
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "make-hash-table", 2, obj4);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "make-hash-table", 1, obj3);
            }
        } catch (ClassCastException e4) {
            throw new WrongType(e4, "make-hash-table", 0, obj2);
        }
    }

    public static hashtable.HashTable hashTableCopy(hashtable.HashTable hashTable) {
        return new hashtable.HashTable(hashTable, true);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) throws Throwable {
        int i = moduleMethod.selector;
        if (i == 1) {
            try {
                try {
                    return stringHash((CharSequence) obj, LangObjType.coerceIntNum(obj2));
                } catch (ClassCastException e) {
                    throw new WrongType(e, "string-hash", 2, obj2);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "string-hash", 1, obj);
            }
        }
        if (i == 3) {
            try {
                return stringCiHash(obj, LangObjType.coerceIntNum(obj2));
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "string-ci-hash", 2, obj2);
            }
        }
        if (i == 5) {
            try {
                return hash(obj, LangObjType.coerceIntNum(obj2));
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "hash", 2, obj2);
            }
        }
        if (i == 7) {
            try {
                return hashByIdentity(obj, LangObjType.coerceIntNum(obj2));
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "hash-by-identity", 2, obj2);
            }
        }
        if (i == 11) {
            try {
                try {
                    return makeHashTable((Procedure) obj, (Procedure) obj2);
                } catch (ClassCastException e6) {
                    throw new WrongType(e6, "make-hash-table", 2, obj2);
                }
            } catch (ClassCastException e7) {
                throw new WrongType(e7, "make-hash-table", 1, obj);
            }
        }
        if (i == 15) {
            try {
                return hashTableRef((hashtable.HashTable) obj, obj2);
            } catch (ClassCastException e8) {
                throw new WrongType(e8, "hash-table-ref", 1, obj);
            }
        }
        if (i == 21) {
            try {
                try {
                    hashTableWalk((hashtable.HashTable) obj, (Procedure) obj2);
                    return Values.empty;
                } catch (ClassCastException e9) {
                    throw new WrongType(e9, "hash-table-walk", 2, obj2);
                }
            } catch (ClassCastException e10) {
                throw new WrongType(e10, "hash-table-walk", 1, obj);
            }
        }
        if (i == 24) {
            return alist$To$HashTable(obj, obj2);
        }
        if (i != 30) {
            return super.apply2(moduleMethod, obj, obj2);
        }
        try {
            try {
                ((hashtable.HashTable) obj).putAll((hashtable.HashTable) obj2);
                return Values.empty;
            } catch (ClassCastException e11) {
                throw new WrongType(e11, "hash-table-merge!", 2, obj2);
            }
        } catch (ClassCastException e12) {
            throw new WrongType(e12, "hash-table-merge!", 1, obj);
        }
    }

    public static Object hashTableKeys(hashtable.HashTable hashTable) {
        return hashTableFold(hashTable, lambda$Fn2, LList.Empty);
    }

    public static Pair lambda2(Object obj, Object obj2, Object obj3) {
        return lists.cons(obj, obj3);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        if (i == 1) {
            try {
                return stringHash((CharSequence) obj);
            } catch (ClassCastException e) {
                throw new WrongType(e, "string-hash", 1, obj);
            }
        }
        if (i == 3) {
            return stringCiHash(obj);
        }
        if (i == 5) {
            return hash(obj);
        }
        if (i == 7) {
            return hashByIdentity(obj);
        }
        if (i == 32) {
            try {
                return hashTableKeys((hashtable.HashTable) obj);
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "hash-table-keys", 1, obj);
            }
        }
        if (i == 34) {
            try {
                return hashTableValues((hashtable.HashTable) obj);
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "hash-table-values", 1, obj);
            }
        }
        if (i == 23) {
            return lambda1(obj);
        }
        if (i == 24) {
            return alist$To$HashTable(obj);
        }
        if (i == 28) {
            try {
                return ((hashtable.HashTable) obj).toAlist();
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "hash-table->alist", 1, obj);
            }
        }
        if (i != 29) {
            switch (i) {
                case 9:
                    try {
                        return hashTableEquivalenceFunction((hashtable.HashTable) obj);
                    } catch (ClassCastException e5) {
                        throw new WrongType(e5, "hash-table-equivalence-function", 1, obj);
                    }
                case 10:
                    try {
                        return hashTableHashFunction((hashtable.HashTable) obj);
                    } catch (ClassCastException e6) {
                        throw new WrongType(e6, "hash-table-hash-function", 1, obj);
                    }
                case 11:
                    try {
                        return makeHashTable((Procedure) obj);
                    } catch (ClassCastException e7) {
                        throw new WrongType(e7, "make-hash-table", 1, obj);
                    }
                default:
                    return super.apply1(moduleMethod, obj);
            }
        }
        try {
            return hashTableCopy((hashtable.HashTable) obj);
        } catch (ClassCastException e8) {
            throw new WrongType(e8, "hash-table-copy", 1, obj);
        }
    }

    public static Object hashTableValues(hashtable.HashTable hashTable) {
        return hashTableFold(hashTable, lambda$Fn3, LList.Empty);
    }

    public static Pair lambda3(Object obj, Object obj2, Object obj3) {
        return lists.cons(obj2, obj3);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
        int i = moduleMethod.selector;
        if (i == 11) {
            try {
                try {
                    try {
                        return makeHashTable((Procedure) obj, (Procedure) obj2, ((Number) obj3).intValue());
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "make-hash-table", 3, obj3);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "make-hash-table", 2, obj2);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "make-hash-table", 1, obj);
            }
        }
        if (i == 15) {
            try {
                return hashTableRef((hashtable.HashTable) obj, obj2, obj3);
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "hash-table-ref", 1, obj);
            }
        }
        if (i == 22) {
            try {
                try {
                    return hashTableFold((hashtable.HashTable) obj, (Procedure) obj2, obj3);
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "hash-table-fold", 2, obj2);
                }
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "hash-table-fold", 1, obj);
            }
        }
        if (i == 24) {
            return alist$To$HashTable(obj, obj2, obj3);
        }
        if (i == 31) {
            return lambda2(obj, obj2, obj3);
        }
        if (i == 33) {
            return lambda3(obj, obj2, obj3);
        }
        if (i == 17) {
            try {
                return ((hashtable.HashTable) obj).get(obj2, obj3);
            } catch (ClassCastException e7) {
                throw new WrongType(e7, "hash-table-ref/default", 1, obj);
            }
        }
        if (i == 18) {
            try {
                hashTableUpdate$Ex((hashtable.HashTable) obj, obj2, obj3);
                return Values.empty;
            } catch (ClassCastException e8) {
                throw new WrongType(e8, "hash-table-update!", 1, obj);
            }
        }
        return super.apply3(moduleMethod, obj, obj2, obj3);
    }
}
