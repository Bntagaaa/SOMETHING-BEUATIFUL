package kawa.lib.rnrs;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.IsEqv;
import gnu.kawa.util.AbstractHashTable;
import gnu.kawa.util.HashNode;
import gnu.lists.Consumer;
import gnu.lists.FVector;
import gnu.lists.Pair;
import gnu.mapping.CallContext;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import kawa.lib.kawa.hashtable;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.standard.Scheme;

/* loaded from: classes2.dex */
public class hashtables extends ModuleBody {
    public static final hashtables $instance;
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
    static final SimpleSymbol Lit3;
    static final SimpleSymbol Lit4;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit7;
    static final SimpleSymbol Lit8;
    static final SimpleSymbol Lit9;
    public static final ModuleMethod equal$Mnhash;
    static final ModuleMethod hash$Mnby$Mnidentity;
    static final ModuleMethod hash$Mnfor$Mneqv;
    public static final ModuleMethod hashtable$Mnclear$Ex;
    public static final ModuleMethod hashtable$Mncontains$Qu;
    public static final ModuleMethod hashtable$Mncopy;
    public static final ModuleMethod hashtable$Mndelete$Ex;
    public static final ModuleMethod hashtable$Mnentries;
    public static final ModuleMethod hashtable$Mnequivalence$Mnfunction;
    public static final ModuleMethod hashtable$Mnhash$Mnfunction;
    public static final ModuleMethod hashtable$Mnkeys;
    public static final ModuleMethod hashtable$Mnmutable$Qu;
    public static final ModuleMethod hashtable$Mnref;
    public static final ModuleMethod hashtable$Mnset$Ex;
    public static final ModuleMethod hashtable$Mnsize;
    public static final ModuleMethod hashtable$Mnupdate$Ex;
    public static final ModuleMethod hashtable$Qu;
    public static final ModuleMethod make$Mneq$Mnhashtable;
    public static final ModuleMethod make$Mneqv$Mnhashtable;
    public static final ModuleMethod make$Mnhashtable;
    public static final ModuleMethod string$Mnci$Mnhash;
    public static final ModuleMethod string$Mnhash;
    public static final ModuleMethod symbol$Mnhash;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("symbol-hash");
        Lit22 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("string-ci-hash");
        Lit21 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("string-hash");
        Lit20 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("equal-hash");
        Lit19 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("hashtable-mutable?");
        Lit18 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("hashtable-hash-function");
        Lit17 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("hashtable-equivalence-function");
        Lit16 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("hashtable-entries");
        Lit15 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("hashtable-keys");
        Lit14 = simpleSymbol9;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("hashtable-clear!");
        Lit13 = simpleSymbol10;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("hashtable-copy");
        Lit12 = simpleSymbol11;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("hashtable-update!");
        Lit11 = simpleSymbol12;
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("hashtable-contains?");
        Lit10 = simpleSymbol13;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("hashtable-delete!");
        Lit9 = simpleSymbol14;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("hashtable-set!");
        Lit8 = simpleSymbol15;
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f("hashtable-ref");
        Lit7 = simpleSymbol16;
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("hashtable-size");
        Lit6 = simpleSymbol17;
        SimpleSymbol simpleSymbol18 = (SimpleSymbol) a.f("hashtable?");
        Lit5 = simpleSymbol18;
        SimpleSymbol simpleSymbol19 = (SimpleSymbol) a.f("make-hashtable");
        Lit4 = simpleSymbol19;
        SimpleSymbol simpleSymbol20 = (SimpleSymbol) a.f("make-eqv-hashtable");
        Lit3 = simpleSymbol20;
        SimpleSymbol simpleSymbol21 = (SimpleSymbol) a.f("make-eq-hashtable");
        Lit2 = simpleSymbol21;
        SimpleSymbol simpleSymbol22 = (SimpleSymbol) a.f("hash-for-eqv");
        Lit1 = simpleSymbol22;
        SimpleSymbol simpleSymbol23 = (SimpleSymbol) a.f("hash-by-identity");
        Lit0 = simpleSymbol23;
        hashtables hashtablesVar = new hashtables();
        $instance = hashtablesVar;
        hash$Mnby$Mnidentity = new ModuleMethod(hashtablesVar, 1, simpleSymbol23, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        hash$Mnfor$Mneqv = new ModuleMethod(hashtablesVar, 2, simpleSymbol22, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        make$Mneq$Mnhashtable = new ModuleMethod(hashtablesVar, 3, simpleSymbol21, 4096);
        make$Mneqv$Mnhashtable = new ModuleMethod(hashtablesVar, 5, simpleSymbol20, 4096);
        make$Mnhashtable = new ModuleMethod(hashtablesVar, 7, simpleSymbol19, 12290);
        hashtable$Qu = new ModuleMethod(hashtablesVar, 9, simpleSymbol18, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        hashtable$Mnsize = new ModuleMethod(hashtablesVar, 10, simpleSymbol17, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        hashtable$Mnref = new ModuleMethod(hashtablesVar, 11, simpleSymbol16, 12291);
        hashtable$Mnset$Ex = new ModuleMethod(hashtablesVar, 12, simpleSymbol15, 12291);
        hashtable$Mndelete$Ex = new ModuleMethod(hashtablesVar, 13, simpleSymbol14, 8194);
        hashtable$Mncontains$Qu = new ModuleMethod(hashtablesVar, 14, simpleSymbol13, 8194);
        hashtable$Mnupdate$Ex = new ModuleMethod(hashtablesVar, 15, simpleSymbol12, 16388);
        hashtable$Mncopy = new ModuleMethod(hashtablesVar, 16, simpleSymbol11, 8193);
        hashtable$Mnclear$Ex = new ModuleMethod(hashtablesVar, 18, simpleSymbol10, 8193);
        hashtable$Mnkeys = new ModuleMethod(hashtablesVar, 20, simpleSymbol9, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        hashtable$Mnentries = new ModuleMethod(hashtablesVar, 21, simpleSymbol8, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        hashtable$Mnequivalence$Mnfunction = new ModuleMethod(hashtablesVar, 22, simpleSymbol7, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        hashtable$Mnhash$Mnfunction = new ModuleMethod(hashtablesVar, 23, simpleSymbol6, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        hashtable$Mnmutable$Qu = new ModuleMethod(hashtablesVar, 24, simpleSymbol5, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        equal$Mnhash = new ModuleMethod(hashtablesVar, 25, simpleSymbol4, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnhash = new ModuleMethod(hashtablesVar, 26, simpleSymbol3, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mnci$Mnhash = new ModuleMethod(hashtablesVar, 27, simpleSymbol2, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        symbol$Mnhash = new ModuleMethod(hashtablesVar, 28, simpleSymbol, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        hashtablesVar.run();
    }

    public hashtables() {
        ModuleInfo.register(this);
    }

    public static hashtable.HashTable hashtableCopy(hashtable.HashTable hashTable) {
        return hashtableCopy(hashTable, false);
    }

    public static hashtable.HashTable makeEqHashtable() {
        return makeEqHashtable(AbstractHashTable.DEFAULT_INITIAL_SIZE);
    }

    public static hashtable.HashTable makeEqvHashtable() {
        return makeEqvHashtable(AbstractHashTable.DEFAULT_INITIAL_SIZE);
    }

    public static hashtable.HashTable makeHashtable(Procedure procedure, Procedure procedure2) {
        return makeHashtable(procedure, procedure2, AbstractHashTable.DEFAULT_INITIAL_SIZE);
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
        if (i == 16) {
            if (!(obj instanceof hashtable.HashTable)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 18) {
            if (!(obj instanceof hashtable.HashTable)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 9) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i == 10) {
            if (!(obj instanceof hashtable.HashTable)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        switch (i) {
            case 20:
                if (!(obj instanceof hashtable.HashTable)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 21:
                if (!(obj instanceof hashtable.HashTable)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 22:
                if (!(obj instanceof hashtable.HashTable)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 23:
                if (!(obj instanceof hashtable.HashTable)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 24:
                if (!(obj instanceof hashtable.HashTable)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 25:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
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
                if (!(obj instanceof Symbol)) {
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

    public static int hashByIdentity(Object obj) {
        return System.identityHashCode(obj);
    }

    public static int hashForEqv(Object obj) {
        return obj.hashCode();
    }

    @Override // gnu.expr.ModuleBody
    public int match0(ModuleMethod moduleMethod, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 3) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i != 5) {
            return super.match0(moduleMethod, callContext);
        }
        callContext.proc = moduleMethod;
        callContext.pc = 0;
        return 0;
    }

    public static hashtable.HashTable makeEqHashtable(int i) {
        return new hashtable.HashTable(Scheme.isEq, hash$Mnby$Mnidentity, AbstractHashTable.DEFAULT_INITIAL_SIZE);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply0(ModuleMethod moduleMethod) {
        int i = moduleMethod.selector;
        if (i != 3) {
            return i != 5 ? super.apply0(moduleMethod) : makeEqvHashtable();
        }
        return makeEqHashtable();
    }

    public static hashtable.HashTable makeEqvHashtable(int i) {
        return new hashtable.HashTable(Scheme.isEqv, hash$Mnfor$Mneqv, AbstractHashTable.DEFAULT_INITIAL_SIZE);
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 7) {
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
        if (i == 16) {
            if (!(obj instanceof hashtable.HashTable)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 18) {
            if (!(obj instanceof hashtable.HashTable)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 13) {
            if (!(obj instanceof hashtable.HashTable)) {
                return -786431;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i != 14) {
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
        if (!(obj instanceof hashtable.HashTable)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    @Override // gnu.expr.ModuleBody
    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 7) {
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
        if (i == 11) {
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
        if (i != 12) {
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

    public static hashtable.HashTable makeHashtable(Procedure procedure, Procedure procedure2, int i) {
        return new hashtable.HashTable(procedure, procedure2, i);
    }

    public static boolean isHashtable(Object obj) {
        return obj instanceof hashtable.HashTable;
    }

    public static int hashtableSize(hashtable.HashTable hashTable) {
        return hashTable.size();
    }

    public static Object hashtableRef(hashtable.HashTable hashTable, Object obj, Object obj2) {
        HashNode node = hashTable.getNode(obj);
        return node == null ? obj2 : node.getValue();
    }

    @Override // gnu.expr.ModuleBody
    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
        int i = moduleMethod.selector;
        if (i == 7) {
            try {
                try {
                    try {
                        return makeHashtable((Procedure) obj, (Procedure) obj2, ((Number) obj3).intValue());
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "make-hashtable", 3, obj3);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "make-hashtable", 2, obj2);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "make-hashtable", 1, obj);
            }
        }
        if (i == 11) {
            try {
                return hashtableRef((hashtable.HashTable) obj, obj2, obj3);
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "hashtable-ref", 1, obj);
            }
        }
        if (i != 12) {
            return super.apply3(moduleMethod, obj, obj2, obj3);
        }
        try {
            hashtableSet$Ex((hashtable.HashTable) obj, obj2, obj3);
            return Values.empty;
        } catch (ClassCastException e5) {
            throw new WrongType(e5, "hashtable-set!", 1, obj);
        }
    }

    public static void hashtableSet$Ex(hashtable.HashTable hashTable, Object obj, Object obj2) {
        hashtable.hashtableCheckMutable(hashTable);
        hashTable.put(obj, obj2);
    }

    public static void hashtableDelete$Ex(hashtable.HashTable hashTable, Object obj) {
        hashtable.hashtableCheckMutable(hashTable);
        hashTable.remove(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isHashtableContains(hashtable.HashTable hashTable, Object obj) {
        return ((hashTable.getNode(obj) == null ? 1 : 0) + 1) & 1;
    }

    @Override // gnu.expr.ModuleBody
    public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) {
        if (moduleMethod.selector != 15) {
            return super.apply4(moduleMethod, obj, obj2, obj3, obj4);
        }
        try {
            try {
                return hashtableUpdate$Ex((hashtable.HashTable) obj, obj2, (Procedure) obj3, obj4);
            } catch (ClassCastException e) {
                throw new WrongType(e, "hashtable-update!", 3, obj3);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "hashtable-update!", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
        if (moduleMethod.selector != 15) {
            return super.match4(moduleMethod, obj, obj2, obj3, obj4, callContext);
        }
        if (!(obj instanceof hashtable.HashTable)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        if (!(obj3 instanceof Procedure)) {
            return -786429;
        }
        callContext.value3 = obj3;
        callContext.value4 = obj4;
        callContext.proc = moduleMethod;
        callContext.pc = 4;
        return 0;
    }

    public static Object hashtableUpdate$Ex(hashtable.HashTable hashTable, Object obj, Procedure procedure, Object obj2) {
        hashtable.hashtableCheckMutable(hashTable);
        HashNode node = hashTable.getNode(obj);
        if (node == null) {
            hashtableSet$Ex(hashTable, obj, procedure.apply1(obj2));
            return Values.empty;
        }
        return node.setValue(procedure.apply1(node.getValue()));
    }

    public static hashtable.HashTable hashtableCopy(hashtable.HashTable hashTable, boolean z) {
        return new hashtable.HashTable(hashTable, z);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        int i = moduleMethod.selector;
        if (i == 7) {
            try {
                try {
                    return makeHashtable((Procedure) obj, (Procedure) obj2);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "make-hashtable", 2, obj2);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "make-hashtable", 1, obj);
            }
        }
        if (i == 16) {
            try {
                try {
                    return hashtableCopy((hashtable.HashTable) obj, obj2 != Boolean.FALSE);
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "hashtable-copy", 2, obj2);
                }
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "hashtable-copy", 1, obj);
            }
        }
        if (i == 18) {
            try {
                try {
                    hashtableClear$Ex((hashtable.HashTable) obj, ((Number) obj2).intValue());
                    return Values.empty;
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "hashtable-clear!", 2, obj2);
                }
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "hashtable-clear!", 1, obj);
            }
        }
        if (i == 13) {
            try {
                hashtableDelete$Ex((hashtable.HashTable) obj, obj2);
                return Values.empty;
            } catch (ClassCastException e7) {
                throw new WrongType(e7, "hashtable-delete!", 1, obj);
            }
        }
        if (i != 14) {
            return super.apply2(moduleMethod, obj, obj2);
        }
        try {
            return isHashtableContains((hashtable.HashTable) obj, obj2) ? Boolean.TRUE : Boolean.FALSE;
        } catch (ClassCastException e8) {
            throw new WrongType(e8, "hashtable-contains?", 1, obj);
        }
    }

    public static void hashtableClear$Ex(hashtable.HashTable hashTable, int i) {
        hashtable.hashtableCheckMutable(hashTable);
        hashTable.clear();
    }

    public static FVector hashtableKeys(hashtable.HashTable hashTable) {
        return hashTable.keysVector();
    }

    public static Object hashtableEntries(hashtable.HashTable hashTable) {
        Pair pairEntriesVectorPair = hashTable.entriesVectorPair();
        return misc.values(lists.car.apply1(pairEntriesVectorPair), lists.cdr.apply1(pairEntriesVectorPair));
    }

    public static Procedure hashtableEquivalenceFunction(hashtable.HashTable hashTable) {
        return (Procedure) hashTable.equivalenceFunction.apply1(hashTable);
    }

    public static Object hashtableHashFunction(hashtable.HashTable hashTable) throws Throwable {
        Object objApply1 = hashTable.hashFunction.apply1(hashTable);
        IsEqv isEqv = Scheme.isEqv;
        Object objApply2 = isEqv.apply2(objApply1, hash$Mnby$Mnidentity);
        Boolean bool = Boolean.FALSE;
        return (objApply2 == bool ? isEqv.apply2(objApply1, hash$Mnfor$Mneqv) == bool : objApply2 == bool) ? objApply1 : bool;
    }

    public static Object isHashtableMutable(hashtable.HashTable hashTable) {
        return Scheme.applyToArgs.apply1(hashTable.mutable ? Boolean.TRUE : Boolean.FALSE);
    }

    public static int equalHash(Object obj) {
        return obj.hashCode();
    }

    public static int stringHash(CharSequence charSequence) {
        return charSequence.hashCode();
    }

    public static int stringCiHash(CharSequence charSequence) {
        return charSequence.toString().toLowerCase().hashCode();
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        if (i == 1) {
            return Integer.valueOf(hashByIdentity(obj));
        }
        if (i == 2) {
            return Integer.valueOf(hashForEqv(obj));
        }
        if (i == 3) {
            try {
                return makeEqHashtable(((Number) obj).intValue());
            } catch (ClassCastException e) {
                throw new WrongType(e, "make-eq-hashtable", 1, obj);
            }
        }
        if (i == 5) {
            try {
                return makeEqvHashtable(((Number) obj).intValue());
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "make-eqv-hashtable", 1, obj);
            }
        }
        if (i == 16) {
            try {
                return hashtableCopy((hashtable.HashTable) obj);
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "hashtable-copy", 1, obj);
            }
        }
        if (i == 18) {
            try {
                hashtableClear$Ex((hashtable.HashTable) obj, 64);
                return Values.empty;
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "hashtable-clear!", 1, obj);
            }
        }
        if (i == 9) {
            return isHashtable(obj) ? Boolean.TRUE : Boolean.FALSE;
        }
        if (i == 10) {
            try {
                return Integer.valueOf(hashtableSize((hashtable.HashTable) obj));
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "hashtable-size", 1, obj);
            }
        }
        switch (i) {
            case 20:
                try {
                    return hashtableKeys((hashtable.HashTable) obj);
                } catch (ClassCastException e6) {
                    throw new WrongType(e6, "hashtable-keys", 1, obj);
                }
            case 21:
                try {
                    return hashtableEntries((hashtable.HashTable) obj);
                } catch (ClassCastException e7) {
                    throw new WrongType(e7, "hashtable-entries", 1, obj);
                }
            case 22:
                try {
                    return hashtableEquivalenceFunction((hashtable.HashTable) obj);
                } catch (ClassCastException e8) {
                    throw new WrongType(e8, "hashtable-equivalence-function", 1, obj);
                }
            case 23:
                try {
                    return hashtableHashFunction((hashtable.HashTable) obj);
                } catch (ClassCastException e9) {
                    throw new WrongType(e9, "hashtable-hash-function", 1, obj);
                }
            case 24:
                try {
                    return isHashtableMutable((hashtable.HashTable) obj);
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "hashtable-mutable?", 1, obj);
                }
            case 25:
                return Integer.valueOf(equalHash(obj));
            case 26:
                try {
                    return Integer.valueOf(stringHash((CharSequence) obj));
                } catch (ClassCastException e11) {
                    throw new WrongType(e11, "string-hash", 1, obj);
                }
            case 27:
                try {
                    return Integer.valueOf(stringCiHash((CharSequence) obj));
                } catch (ClassCastException e12) {
                    throw new WrongType(e12, "string-ci-hash", 1, obj);
                }
            case 28:
                try {
                    return Integer.valueOf(symbolHash((Symbol) obj));
                } catch (ClassCastException e13) {
                    throw new WrongType(e13, "symbol-hash", 1, obj);
                }
            default:
                return super.apply1(moduleMethod, obj);
        }
    }

    public static int symbolHash(Symbol symbol) {
        return symbol.hashCode();
    }
}
