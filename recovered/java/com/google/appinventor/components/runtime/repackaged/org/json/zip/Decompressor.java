package com.google.appinventor.components.runtime.repackaged.org.json.zip;

import com.google.appinventor.components.runtime.repackaged.org.json.JSONArray;
import com.google.appinventor.components.runtime.repackaged.org.json.JSONException;
import com.google.appinventor.components.runtime.repackaged.org.json.JSONObject;
import com.google.appinventor.components.runtime.repackaged.org.json.Kim;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public class Decompressor extends JSONzip {
    BitReader bitreader;

    public Decompressor(BitReader bitReader) {
        this.bitreader = bitReader;
    }

    private boolean bit() throws JSONException {
        try {
            return this.bitreader.bit();
        } catch (Throwable th) {
            throw new JSONException(th);
        }
    }

    private Object getAndTick(Keep keep, BitReader bitReader) throws JSONException {
        try {
            int i = bitReader.read(keep.bitsize());
            Object objValue = keep.value(i);
            if (i >= keep.length) {
                throw new JSONException("Deep error.");
            }
            keep.tick(i);
            return objValue;
        } catch (Throwable th) {
            throw new JSONException(th);
        }
    }

    public boolean pad(int i) throws JSONException {
        try {
            return this.bitreader.pad(i);
        } catch (Throwable th) {
            throw new JSONException(th);
        }
    }

    private int read(int i) throws JSONException {
        try {
            return this.bitreader.read(i);
        } catch (Throwable th) {
            throw new JSONException(th);
        }
    }

    private JSONArray readArray(boolean z) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(z ? readString() : readValue());
        while (true) {
            if (!bit()) {
                if (!bit()) {
                    return jSONArray;
                }
                jSONArray.put(z ? readValue() : readString());
            } else {
                jSONArray.put(z ? readString() : readValue());
            }
        }
    }

    private Object readJSON() throws JSONException {
        int i = read(3);
        if (i == 0) {
            return new JSONObject();
        }
        if (i == 1) {
            return new JSONArray();
        }
        if (i == 2) {
            return Boolean.TRUE;
        }
        if (i == 3) {
            return Boolean.FALSE;
        }
        if (i == 5) {
            return readObject();
        }
        if (i == 6) {
            return readArray(true);
        }
        if (i == 7) {
            return readArray(false);
        }
        return JSONObject.NULL;
    }

    private String readName() throws JSONException {
        byte[] bArr = new byte[65536];
        if (bit()) {
            return getAndTick(this.namekeep, this.bitreader).toString();
        }
        int i = 0;
        while (true) {
            int i2 = this.namehuff.read(this.bitreader);
            if (i2 == 256) {
                break;
            }
            bArr[i] = (byte) i2;
            i++;
        }
        if (i == 0) {
            return "";
        }
        Kim kim = new Kim(bArr, i);
        this.namekeep.register(kim);
        return kim.toString();
    }

    private JSONObject readObject() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        do {
            jSONObject.put(readName(), !bit() ? readString() : readValue());
        } while (bit());
        return jSONObject;
    }

    private String readString() throws JSONException {
        if (bit()) {
            return getAndTick(this.stringkeep, this.bitreader).toString();
        }
        byte[] bArr = new byte[65536];
        boolean zBit = bit();
        this.substringkeep.reserve();
        int i = 0;
        int i2 = 0;
        int i3 = -1;
        while (true) {
            if (zBit) {
                int iCopy = ((Kim) getAndTick(this.substringkeep, this.bitreader)).copy(bArr, i);
                if (i3 != -1) {
                    this.substringkeep.registerOne(new Kim(bArr, i3, i2 + 1));
                }
                i3 = i;
                i = iCopy;
                zBit = bit();
                i2 = i;
            } else {
                while (true) {
                    int i4 = this.substringhuff.read(this.bitreader);
                    if (i4 == 256) {
                        break;
                    }
                    bArr[i] = (byte) i4;
                    i++;
                    if (i3 != -1) {
                        this.substringkeep.registerOne(new Kim(bArr, i3, i2 + 1));
                        i3 = -1;
                    }
                }
                if (!bit()) {
                    break;
                }
                zBit = true;
            }
        }
        if (i == 0) {
            return "";
        }
        Kim kim = new Kim(bArr, i);
        this.stringkeep.register(kim);
        this.substringkeep.registerMany(kim);
        return kim.toString();
    }

    private Object readValue() throws NumberFormatException, JSONException {
        int i = read(2);
        if (i == 0) {
            return new Integer(read(bit() ? !bit() ? 7 : 14 : 4));
        }
        if (i != 1) {
            if (i == 2) {
                return getAndTick(this.values, this.bitreader);
            }
            if (i == 3) {
                return readJSON();
            }
            throw new JSONException("Impossible.");
        }
        byte[] bArr = new byte[256];
        int i2 = 0;
        while (true) {
            int i3 = read(4);
            if (i3 != JSONzip.endOfNumber) {
                bArr[i2] = JSONzip.bcd[i3];
                i2++;
            } else {
                try {
                    Object objStringToValue = JSONObject.stringToValue(new String(bArr, 0, i2, "US-ASCII"));
                    this.values.register(objStringToValue);
                    return objStringToValue;
                } catch (UnsupportedEncodingException e) {
                    throw new JSONException(e);
                }
            }
        }
    }

    public Object unzip() throws JSONException {
        begin();
        return readJSON();
    }
}
