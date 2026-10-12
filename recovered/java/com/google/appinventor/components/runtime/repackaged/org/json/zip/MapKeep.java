package com.google.appinventor.components.runtime.repackaged.org.json.zip;

import com.google.appinventor.components.runtime.repackaged.org.json.Kim;
import java.util.HashMap;

/* loaded from: classes.dex */
class MapKeep extends Keep {
    private Object[] list;
    private HashMap map;

    public MapKeep(int i) {
        super(i);
        this.list = new Object[this.capacity];
        this.map = new HashMap(this.capacity);
    }

    private void compact() {
        int i;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = this.capacity;
            if (i2 >= i) {
                break;
            }
            Object obj = this.list[i2];
            long jAge = Keep.age(this.uses[i2]);
            if (jAge > 0) {
                this.uses[i3] = jAge;
                this.list[i3] = obj;
                this.map.put(obj, new Integer(i3));
                i3++;
            } else {
                this.map.remove(obj);
            }
            i2++;
        }
        if (i3 < i) {
            this.length = i3;
        } else {
            this.map.clear();
            this.length = 0;
        }
        this.power = 0;
    }

    public int find(Object obj) {
        Object obj2 = this.map.get(obj);
        if (obj2 instanceof Integer) {
            return ((Integer) obj2).intValue();
        }
        return -1;
    }

    @Override // com.google.appinventor.components.runtime.repackaged.org.json.zip.PostMortem
    public boolean postMortem(PostMortem postMortem) {
        boolean zEquals;
        MapKeep mapKeep = (MapKeep) postMortem;
        if (this.length != mapKeep.length) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.length);
            stringBuffer.append(" <> ");
            stringBuffer.append(mapKeep.length);
            JSONzip.log(stringBuffer.toString());
            return false;
        }
        for (int i = 0; i < this.length; i++) {
            Object string = this.list[i];
            if (string instanceof Kim) {
                zEquals = ((Kim) string).equals(mapKeep.list[i]);
            } else {
                Object string2 = mapKeep.list[i];
                if (string instanceof Number) {
                    string = string.toString();
                }
                if (string2 instanceof Number) {
                    string2 = string2.toString();
                }
                zEquals = string.equals(string2);
            }
            if (!zEquals) {
                StringBuffer stringBuffer2 = new StringBuffer("\n[");
                stringBuffer2.append(i);
                stringBuffer2.append("]\n ");
                stringBuffer2.append(this.list[i]);
                stringBuffer2.append("\n ");
                stringBuffer2.append(mapKeep.list[i]);
                stringBuffer2.append("\n ");
                stringBuffer2.append(this.uses[i]);
                stringBuffer2.append("\n ");
                stringBuffer2.append(mapKeep.uses[i]);
                JSONzip.log(stringBuffer2.toString());
                return false;
            }
        }
        return true;
    }

    public void register(Object obj) {
        if (this.length >= this.capacity) {
            compact();
        }
        Object[] objArr = this.list;
        int i = this.length;
        objArr[i] = obj;
        this.map.put(obj, new Integer(i));
        long[] jArr = this.uses;
        int i2 = this.length;
        jArr[i2] = 1;
        this.length = i2 + 1;
    }

    @Override // com.google.appinventor.components.runtime.repackaged.org.json.zip.Keep
    public Object value(int i) {
        return this.list[i];
    }
}
