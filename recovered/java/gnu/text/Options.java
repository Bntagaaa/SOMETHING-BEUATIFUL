package gnu.text;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Vector;
import kotlinx.coroutines.DebugKt;

/* loaded from: classes2.dex */
public class Options {
    public static final int BOOLEAN_OPTION = 1;
    public static final int STRING_OPTION = 2;
    public static final String UNKNOWN = "unknown option name";

    /* renamed from: a, reason: collision with root package name */
    public final Options f5488a;

    /* renamed from: b, reason: collision with root package name */
    public OptionInfo f5489b;
    public OptionInfo c;
    public HashMap d;
    public HashMap e;

    public static final class OptionInfo {

        /* renamed from: a, reason: collision with root package name */
        public String f5490a;

        /* renamed from: b, reason: collision with root package name */
        public int f5491b;
        public String c;
        public Object d;
    }

    public Options() {
    }

    public Options(Options options) {
        this.f5488a = options;
    }

    public OptionInfo add(String str, int i, String str2) {
        return add(str, i, null, str2);
    }

    public OptionInfo add(String str, int i, Object obj, String str2) {
        HashMap map = this.e;
        if (map == null) {
            this.e = new HashMap();
        } else if (map.get(str) != null) {
            throw new RuntimeException(_COROUTINE.a.i("duplicate option key: ", str));
        }
        OptionInfo optionInfo = new OptionInfo();
        optionInfo.f5490a = str;
        optionInfo.f5491b = i;
        optionInfo.d = obj;
        optionInfo.c = str2;
        if (this.f5489b == null) {
            this.f5489b = optionInfo;
        } else {
            this.c.getClass();
        }
        this.c = optionInfo;
        this.e.put(str, optionInfo);
        return optionInfo;
    }

    public static Object a(OptionInfo optionInfo, String str) {
        if ((optionInfo.f5491b & 1) == 0) {
            return str;
        }
        if (str == null || str.equals("1") || str.equals(DebugKt.DEBUG_PROPERTY_VALUE_ON) || str.equals("yes") || str.equals("true")) {
            return Boolean.TRUE;
        }
        if (str.equals("0") || str.equals(DebugKt.DEBUG_PROPERTY_VALUE_OFF) || str.equals("no") || str.equals("false")) {
            return Boolean.FALSE;
        }
        return null;
    }

    public void set(String str, Object obj) {
        set(str, obj, null);
    }

    public void set(String str, Object obj, SourceMessages sourceMessages) {
        OptionInfo info = getInfo(str);
        if (info == null) {
            String strI = _COROUTINE.a.i("invalid option key: ", str);
            if (sourceMessages == null) {
                throw new RuntimeException(strI);
            }
            sourceMessages.error('e', strI);
            return;
        }
        if ((info.f5491b & 1) != 0) {
            if (obj instanceof String) {
                obj = a(info, (String) obj);
            }
            if (!(obj instanceof Boolean)) {
                String strA = _COROUTINE.a.A("value for option ", str, " must be boolean or yes/no/true/false/on/off/1/0");
                if (sourceMessages == null) {
                    throw new RuntimeException(strA);
                }
                sourceMessages.error('e', strA);
                return;
            }
        } else if (obj == null) {
            obj = "";
        }
        if (this.d == null) {
            this.d = new HashMap();
        }
        this.d.put(str, obj);
    }

    public void reset(String str, Object obj) {
        if (this.d == null) {
            this.d = new HashMap();
        }
        if (obj == null) {
            this.d.remove(str);
        } else {
            this.d.put(str, obj);
        }
    }

    public String set(String str, String str2) {
        OptionInfo info = getInfo(str);
        if (info == null) {
            return UNKNOWN;
        }
        Object objA = a(info, str2);
        if (objA == null && (info.f5491b & 1) != 0) {
            return _COROUTINE.a.A("value of option ", str, " must be yes/no/true/false/on/off/1/0");
        }
        if (this.d == null) {
            this.d = new HashMap();
        }
        this.d.put(str, objA);
        return null;
    }

    public OptionInfo getInfo(String str) {
        Options options;
        HashMap map = this.e;
        OptionInfo optionInfo = map == null ? null : (OptionInfo) map.get(str);
        return (optionInfo != null || (options = this.f5488a) == null) ? optionInfo : options.getInfo(str);
    }

    public Object get(String str, Object obj) {
        OptionInfo info = getInfo(str);
        if (info != null) {
            return get(info, obj);
        }
        throw new RuntimeException(_COROUTINE.a.i("invalid option key: ", str));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001c, code lost:
    
        if (r1 == null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x001e, code lost:
    
        r6 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x001f, code lost:
    
        r0 = r0.f5488a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object get(gnu.text.Options.OptionInfo r5, java.lang.Object r6) {
        /*
            r4 = this;
            r0 = r4
        L1:
            if (r0 == 0) goto L22
            r1 = r5
        L4:
            java.util.HashMap r2 = r0.d
            if (r2 != 0) goto La
            r2 = 0
            goto L10
        La:
            java.lang.String r3 = r1.f5490a
            java.lang.Object r2 = r2.get(r3)
        L10:
            if (r2 == 0) goto L13
            return r2
        L13:
            java.lang.Object r1 = r1.d
            boolean r2 = r1 instanceof gnu.text.Options.OptionInfo
            if (r2 == 0) goto L1c
            gnu.text.Options$OptionInfo r1 = (gnu.text.Options.OptionInfo) r1
            goto L4
        L1c:
            if (r1 == 0) goto L1f
            r6 = r1
        L1f:
            gnu.text.Options r0 = r0.f5488a
            goto L1
        L22:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.text.Options.get(gnu.text.Options$OptionInfo, java.lang.Object):java.lang.Object");
    }

    public Object get(OptionInfo optionInfo) {
        return get(optionInfo, (Object) null);
    }

    public Object getLocal(String str) {
        HashMap map = this.d;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public boolean getBoolean(String str) {
        return ((Boolean) get(str, Boolean.FALSE)).booleanValue();
    }

    public boolean getBoolean(String str, boolean z) {
        return ((Boolean) get(str, z ? Boolean.TRUE : Boolean.FALSE)).booleanValue();
    }

    public boolean getBoolean(OptionInfo optionInfo, boolean z) {
        return ((Boolean) get(optionInfo, z ? Boolean.TRUE : Boolean.FALSE)).booleanValue();
    }

    public boolean getBoolean(OptionInfo optionInfo) {
        Object obj = get(optionInfo, (Object) null);
        if (obj == null) {
            return false;
        }
        return ((Boolean) obj).booleanValue();
    }

    public void pushOptionValues(Vector vector) {
        int size = vector.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            String str = (String) vector.elementAt(i);
            int i3 = i + 2;
            vector.setElementAt(vector.elementAt(i2), i2);
            i += 3;
            set(str, vector.elementAt(i3));
        }
    }

    public void popOptionValues(Vector vector) {
        int size = vector.size();
        while (true) {
            int i = size - 3;
            if (i < 0) {
                return;
            }
            String str = (String) vector.elementAt(i);
            int i2 = size - 2;
            Object objElementAt = vector.elementAt(i2);
            vector.setElementAt(null, i2);
            reset(str, objElementAt);
            size = i;
        }
    }

    public ArrayList<String> keys() {
        ArrayList<String> arrayList = new ArrayList<>();
        for (Options options = this; options != null; options = options.f5488a) {
            HashMap map = options.e;
            if (map != null) {
                for (String str : map.keySet()) {
                    if (!arrayList.contains(str)) {
                        arrayList.add(str);
                    }
                }
            }
        }
        return arrayList;
    }

    public String getDoc(String str) {
        OptionInfo info = getInfo(str);
        if (str == null) {
            return null;
        }
        return info.c;
    }
}
