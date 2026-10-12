package com.google.appinventor.components.runtime.repackaged.org.json.zip;

import androidx.core.view.InputDeviceCompat;
import com.google.appinventor.components.runtime.util.Ev3Constants;

/* loaded from: classes.dex */
public abstract class JSONzip implements None, PostMortem {
    public static final byte[] bcd;
    public static final int end = 256;
    public static final int endOfNumber;
    public static final long int14 = 16384;
    public static final long int4 = 16;
    public static final long int7 = 128;
    public static final int maxSubstringLength = 10;
    public static final int minSubstringLength = 3;
    public static final boolean probe = false;
    public static final int substringLimit = 40;
    public static final int[] twos = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536};
    public static final int zipArrayString = 6;
    public static final int zipArrayValue = 7;
    public static final int zipEmptyArray = 1;
    public static final int zipEmptyObject = 0;
    public static final int zipFalse = 3;
    public static final int zipNull = 4;
    public static final int zipObject = 5;
    public static final int zipTrue = 2;
    protected final Huff namehuff;
    protected final MapKeep namekeep;
    protected final MapKeep stringkeep;
    protected final Huff substringhuff;
    protected final TrieKeep substringkeep;
    protected final MapKeep values;

    static {
        byte[] bArr = {Ev3Constants.Opcode.MOVE8_8, Ev3Constants.Opcode.MOVE8_16, Ev3Constants.Opcode.MOVE8_32, Ev3Constants.Opcode.MOVE8_F, Ev3Constants.Opcode.MOVE16_8, Ev3Constants.Opcode.MOVE16_16, Ev3Constants.Opcode.MOVE16_32, Ev3Constants.Opcode.MOVE16_F, Ev3Constants.Opcode.MOVE32_8, Ev3Constants.Opcode.MOVE32_16, Ev3Constants.Opcode.RL32, Ev3Constants.Opcode.RL16, 43, Ev3Constants.Opcode.CP_LT16};
        bcd = bArr;
        endOfNumber = bArr.length;
    }

    public JSONzip() {
        Huff huff = new Huff(InputDeviceCompat.SOURCE_KEYBOARD);
        this.namehuff = huff;
        this.namekeep = new MapKeep(9);
        this.stringkeep = new MapKeep(11);
        Huff huff2 = new Huff(InputDeviceCompat.SOURCE_KEYBOARD);
        this.substringhuff = huff2;
        this.substringkeep = new TrieKeep(12);
        this.values = new MapKeep(10);
        huff.tick(32, 125);
        huff.tick(97, 122);
        huff.tick(256);
        huff.tick(256);
        huff2.tick(32, 125);
        huff2.tick(97, 122);
        huff2.tick(256);
        huff2.tick(256);
    }

    public void begin() {
        this.namehuff.generate();
        this.substringhuff.generate();
    }

    public static void log() {
        log("\n");
    }

    public static void log(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(i);
        stringBuffer.append(" ");
        log(stringBuffer.toString());
    }

    public static void log(int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(i);
        stringBuffer.append(":");
        stringBuffer.append(i2);
        stringBuffer.append(" ");
        log(stringBuffer.toString());
    }

    public static void log(String str) {
        System.out.print(str);
    }

    public static void logchar(int i, int i2) {
        if (i > 32 && i <= 125) {
            StringBuffer stringBuffer = new StringBuffer("'");
            stringBuffer.append((char) i);
            stringBuffer.append("':");
            stringBuffer.append(i2);
            stringBuffer.append(" ");
            log(stringBuffer.toString());
            return;
        }
        log(i, i2);
    }

    @Override // com.google.appinventor.components.runtime.repackaged.org.json.zip.PostMortem
    public boolean postMortem(PostMortem postMortem) {
        JSONzip jSONzip = (JSONzip) postMortem;
        return this.namehuff.postMortem(jSONzip.namehuff) && this.namekeep.postMortem(jSONzip.namekeep) && this.stringkeep.postMortem(jSONzip.stringkeep) && this.substringhuff.postMortem(jSONzip.substringhuff) && this.substringkeep.postMortem(jSONzip.substringkeep) && this.values.postMortem(jSONzip.values);
    }
}
