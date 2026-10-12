package com.google.youngandroid;

import gnu.expr.GenericProc;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.SimpleSymbol;
import gnu.text.Char;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kawa.lib.characters;
import kawa.lib.strings;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.sequences.Sequence;
import kotlinx.coroutines.flow.FlowKt;
import okio.Path;

/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static int a(IntRange intRange, int i) {
        return intRange.getEndInclusive().intValue() + i;
    }

    public static GenericProc b(GenericProc genericProc, Object[] objArr, String str) {
        genericProc.setProperties(objArr);
        return new GenericProc(str);
    }

    public static Pair c(SimpleSymbol simpleSymbol, LList lList, SimpleSymbol simpleSymbol2, LList lList2, SimpleSymbol simpleSymbol3) {
        return Pair.make(simpleSymbol3, Pair.make(Pair.make(simpleSymbol2, Pair.make(simpleSymbol, lList)), lList2));
    }

    public static Object d(CharSequence charSequence, int i, Function1 function1) {
        return function1.invoke(Character.valueOf(charSequence.charAt(i)));
    }

    public static Object e(Object obj, Object obj2, Object obj3, Object obj4) {
        runtime.sanitizeComponentData(obj);
        runtime.sanitizeComponentData(obj2);
        runtime.sanitizeComponentData(obj3);
        Object objSanitizeComponentData = runtime.sanitizeComponentData(obj4);
        runtime.setThisForm();
        return objSanitizeComponentData;
    }

    public static Object f(String str) {
        return new SimpleSymbol(str).readResolve();
    }

    public static String g(Path path, String str) {
        return str + path;
    }

    public static ArrayList h(LinkedHashMap linkedHashMap, Object obj) {
        ArrayList arrayList = new ArrayList();
        linkedHashMap.put(obj, arrayList);
        return arrayList;
    }

    public static ArrayList i(Map map, Object obj) {
        ArrayList arrayList = new ArrayList();
        map.put(obj, arrayList);
        return arrayList;
    }

    public static Iterator j(Sequence sequence, String str, Function1 function1, String str2) {
        Intrinsics.checkNotNullParameter(sequence, str);
        Intrinsics.checkNotNullParameter(function1, str2);
        return sequence.iterator();
    }

    public static KotlinNothingValueException k() {
        FlowKt.noImpl();
        return new KotlinNothingValueException();
    }

    public static boolean l(CharSequence charSequence, int i, Char r2) {
        return characters.isChar$Eq(r2, Char.make(strings.stringRef(charSequence, i)));
    }
}
