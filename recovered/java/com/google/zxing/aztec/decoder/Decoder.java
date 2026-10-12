package com.google.zxing.aztec.decoder;

import androidx.core.view.PointerIconCompat;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.repackaged.org.json.HTTP;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import com.google.zxing.aztec.AztecDetectorResult;
import gnu.kawa.functions.GetNamedPart;

/* loaded from: classes.dex */
public final class Decoder {
    public static final int[] e = {0, 104, 240, ErrorMessages.ERROR_NXT_INVALID_SENSOR_PORT, 608};
    public static final int[] f = {0, 128, 288, 480, ErrorMessages.ERROR_MEDIA_EXTERNAL_STORAGE_READONLY, 960, 1248, 1568, 1920, 2304, 2720, 3168, 3648, 4160, 4704, 5280, 5888, 6528, 7200, 7904, 8640, 9408, 10208, 11040, 11904, 12800, 13728, 14688, 15680, 16704, 17760, 18848, 19968};

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f5089g = {0, 17, 40, 51, 76};
    public static final int[] h = {0, 21, 48, 60, 88, 120, 156, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_DURATION, 240, 230, 272, 316, 364, ErrorMessages.ERROR_NXT_UNABLE_TO_DOWNLOAD_FILE, 470, 528, 588, 652, 720, 790, 864, 940, PointerIconCompat.TYPE_GRAB, 920, 992, 1066, 1144, 1224, 1306, 1392, 1480, 1570, 1664};
    public static final String[] i = {"CTRL_PS", " ", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    public static final String[] j = {"CTRL_PS", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    public static final String[] k = {"CTRL_PS", " ", "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", GetNamedPart.CAST_METHOD_NAME, "\\", "^", "_", "`", "|", "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};
    public static final String[] l = {"", "\r", HTTP.CRLF, ". ", ", ", ": ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", ":", ";", "<", "=", ">", "?", "[", "]", "{", "}", "CTRL_UL"};
    public static final String[] m = {"CTRL_PS", " ", "0", "1", "2", "3", Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, Component.TYPEFACE_FONT_AWESOME, "6", "7", "8", "9", ",", ".", "CTRL_UL", "CTRL_US"};

    /* renamed from: a, reason: collision with root package name */
    public int f5090a;

    /* renamed from: b, reason: collision with root package name */
    public int f5091b;
    public AztecDetectorResult c;
    public int d;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public static final b f5093a;

        /* renamed from: b, reason: collision with root package name */
        public static final b f5094b;
        public static final b c;
        public static final b d;
        public static final b e;
        public static final b f;

        /* renamed from: g, reason: collision with root package name */
        public static final /* synthetic */ b[] f5095g;

        public static b[] values() {
            return (b[]) f5095g.clone();
        }

        static {
            b bVar = new b("UPPER", 0);
            f5093a = bVar;
            b bVar2 = new b("LOWER", 1);
            f5094b = bVar2;
            b bVar3 = new b("MIXED", 2);
            c = bVar3;
            b bVar4 = new b("DIGIT", 3);
            d = bVar4;
            b bVar5 = new b("PUNCT", 4);
            e = bVar5;
            b bVar6 = new b("BINARY", 5);
            f = bVar6;
            f5095g = new b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6};
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:92:0x0250, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x035a  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0370  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.common.DecoderResult decode(com.google.zxing.aztec.AztecDetectorResult r25) throws com.google.zxing.FormatException {
        /*
            Method dump skipped, instructions count: 911
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.aztec.decoder.Decoder.decode(com.google.zxing.aztec.AztecDetectorResult):com.google.zxing.common.DecoderResult");
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5092a;

        static {
            int[] iArr = new int[b.values().length];
            f5092a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5092a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5092a[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5092a[4] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f5092a[3] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static int a(boolean[] zArr, int i2, int i3) {
        int i4 = 0;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 <<= 1;
            if (zArr[i5]) {
                i4++;
            }
        }
        return i4;
    }
}
