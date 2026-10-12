package kawa.lib.kawa;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.SetNamedPart;
import gnu.kawa.reflect.Invoke;
import gnu.kawa.reflect.StaticFieldLocation;
import gnu.kawa.util.GeneralHashTable;
import gnu.kawa.util.HashNode;
import gnu.lists.Consumer;
import gnu.lists.FVector;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.CallContext;
import gnu.mapping.Location;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.standard.thisRef;

/* loaded from: classes2.dex */
public class hashtable extends ModuleBody {
    public static final Location $Prvt$do;
    public static final Class $Prvt$hashnode;
    public static final Location $Prvt$let$St;
    public static final hashtable $instance;
    static final SimpleSymbol Lit0;
    static final SimpleSymbol Lit1;
    public static final Class hashtable;
    public static final ModuleMethod hashtable$Mncheck$Mnmutable;

    public hashtable() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("hashtable-check-mutable");
        Lit1 = simpleSymbol;
        Lit0 = (SimpleSymbol) a.f("mutable");
        $Prvt$hashnode = HashNode.class;
        hashtable hashtableVar = new hashtable();
        $instance = hashtableVar;
        $Prvt$let$St = StaticFieldLocation.make("kawa.lib.std_syntax", "let$St");
        $Prvt$do = StaticFieldLocation.make("kawa.lib.std_syntax", "do");
        hashtable = HashTable.class;
        hashtable$Mncheck$Mnmutable = new ModuleMethod(hashtableVar, 1, simpleSymbol, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        hashtableVar.run();
    }

    public class HashTable extends GeneralHashTable {
        public Procedure equivalenceFunction;
        public Procedure hashFunction;
        public boolean mutable;

        private void $finit$() {
            this.mutable = true;
        }

        public HashTable(Procedure procedure, Procedure procedure2, int i) {
            super(i);
            $finit$();
            this.equivalenceFunction = procedure;
            this.hashFunction = procedure2;
        }

        public HashTable(Procedure procedure, Procedure procedure2) {
            $finit$();
            this.equivalenceFunction = procedure;
            this.hashFunction = procedure2;
        }

        public HashTable(HashTable hashTable, boolean z) throws Throwable {
            $finit$();
            Invoke.invokeSpecial.applyN(new Object[]{hashtable.hashtable, this, hashTable.equivalenceFunction.apply0(), hashTable.hashFunction.apply0(), Integer.valueOf(hashTable.size() + 100)});
            putAll(hashTable);
            SetNamedPart.setNamedPart.apply3(thisRef.thisSyntax, hashtable.Lit0, z ? Boolean.TRUE : Boolean.FALSE);
        }

        @Override // gnu.kawa.util.AbstractHashTable
        public int hash(Object obj) {
            return ((Number) this.hashFunction.apply1(obj)).intValue();
        }

        @Override // gnu.kawa.util.AbstractHashTable
        public boolean matches(Object obj, Object obj2) {
            return this.equivalenceFunction.apply2(obj, obj2) != Boolean.FALSE;
        }

        public void walk(Procedure procedure) throws Throwable {
            Entry[] entryArr = this.table;
            try {
                HashNode[] hashNodeArr = (HashNode[]) entryArr;
                for (int length = hashNodeArr.length - 1; length >= 0; length--) {
                    HashNode entryNext = hashNodeArr[length];
                    while (entryNext != null) {
                        procedure.apply2(entryNext.getKey(), entryNext.getValue());
                        entryNext = getEntryNext(entryNext);
                    }
                }
            } catch (ClassCastException e) {
                throw new WrongType(e, "table", -2, entryArr);
            }
        }

        public Object fold(Procedure procedure, Object obj) throws Throwable {
            Entry[] entryArr = this.table;
            try {
                HashNode[] hashNodeArr = (HashNode[]) entryArr;
                for (int length = hashNodeArr.length - 1; length >= 0; length--) {
                    HashNode entryNext = hashNodeArr[length];
                    while (entryNext != null) {
                        obj = procedure.apply3(entryNext.getKey(), entryNext.getValue(), obj);
                        entryNext = getEntryNext(entryNext);
                    }
                }
                return obj;
            } catch (ClassCastException e) {
                throw new WrongType(e, "table", -2, entryArr);
            }
        }

        public FVector keysVector() {
            FVector fVector = new FVector();
            Entry[] entryArr = this.table;
            try {
                HashNode[] hashNodeArr = (HashNode[]) entryArr;
                for (int length = hashNodeArr.length - 1; length >= 0; length--) {
                    HashNode entryNext = hashNodeArr[length];
                    while (entryNext != null) {
                        fVector.add(entryNext.getKey());
                        entryNext = getEntryNext(entryNext);
                    }
                }
                return fVector;
            } catch (ClassCastException e) {
                throw new WrongType(e, "table", -2, entryArr);
            }
        }

        public Pair entriesVectorPair() {
            FVector fVector = new FVector();
            FVector fVector2 = new FVector();
            Entry[] entryArr = this.table;
            try {
                HashNode[] hashNodeArr = (HashNode[]) entryArr;
                for (int length = hashNodeArr.length - 1; length >= 0; length--) {
                    HashNode entryNext = hashNodeArr[length];
                    while (entryNext != null) {
                        fVector.add(entryNext.getKey());
                        fVector2.add(entryNext.getValue());
                        entryNext = getEntryNext(entryNext);
                    }
                }
                return lists.cons(fVector, fVector2);
            } catch (ClassCastException e) {
                throw new WrongType(e, "table", -2, entryArr);
            }
        }

        public Object toAlist() {
            LList lListCons = LList.Empty;
            Entry[] entryArr = this.table;
            try {
                HashNode[] hashNodeArr = (HashNode[]) entryArr;
                for (int length = hashNodeArr.length - 1; length >= 0; length--) {
                    HashNode entryNext = hashNodeArr[length];
                    while (entryNext != null) {
                        lListCons = lists.cons(lists.cons(entryNext.getKey(), entryNext.getValue()), lListCons);
                        entryNext = getEntryNext(entryNext);
                    }
                }
                return lListCons;
            } catch (ClassCastException e) {
                throw new WrongType(e, "table", -2, entryArr);
            }
        }

        public LList toNodeList() {
            LList lListCons = LList.Empty;
            Entry[] entryArr = this.table;
            try {
                HashNode[] hashNodeArr = (HashNode[]) entryArr;
                for (int length = hashNodeArr.length - 1; length >= 0; length--) {
                    HashNode entryNext = hashNodeArr[length];
                    while (entryNext != null) {
                        lListCons = lists.cons(entryNext, lListCons);
                        entryNext = getEntryNext(entryNext);
                    }
                }
                return lListCons;
            } catch (ClassCastException e) {
                throw new WrongType(e, "table", -2, entryArr);
            }
        }

        public HashNode[] toNodeArray() {
            HashNode[] hashNodeArr = new HashNode[size()];
            Entry[] entryArr = this.table;
            try {
                HashNode[] hashNodeArr2 = (HashNode[]) entryArr;
                int i = 0;
                for (int length = hashNodeArr2.length - 1; length >= 0; length--) {
                    HashNode entryNext = hashNodeArr2[length];
                    while (entryNext != null) {
                        hashNodeArr[i] = entryNext;
                        i++;
                        entryNext = getEntryNext(entryNext);
                    }
                }
                return hashNodeArr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "table", -2, entryArr);
            }
        }

        public void putAll(HashTable hashTable) {
            Entry[] entryArr = hashTable.table;
            try {
                HashNode[] hashNodeArr = (HashNode[]) entryArr;
                for (int length = hashNodeArr.length - 1; length >= 0; length--) {
                    HashNode entryNext = hashNodeArr[length];
                    while (entryNext != null) {
                        put(entryNext.getKey(), entryNext.getValue());
                        entryNext = hashTable.getEntryNext(entryNext);
                    }
                }
            } catch (ClassCastException e) {
                throw new WrongType(e, "table", -2, entryArr);
            }
        }

        @Override // java.util.AbstractMap
        public Object clone() {
            return new HashTable(this, true);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        if (moduleMethod.selector != 1) {
            return super.apply1(moduleMethod, obj);
        }
        try {
            hashtableCheckMutable((HashTable) obj);
            return Values.empty;
        } catch (ClassCastException e) {
            throw new WrongType(e, "hashtable-check-mutable", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        if (moduleMethod.selector != 1) {
            return super.match1(moduleMethod, obj, callContext);
        }
        if (!(obj instanceof HashTable)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    public static void hashtableCheckMutable(HashTable hashTable) {
        if (hashTable.mutable) {
            return;
        }
        misc.error$V("cannot modify non-mutable hashtable", new Object[0]);
    }
}
