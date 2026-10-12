package com.google.appinventor.components.runtime.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.nfc.FormatException;
import android.nfc.NdefMessage;
import android.nfc.NdefRecord;
import android.nfc.NfcAdapter;
import android.nfc.Tag;
import android.nfc.tech.Ndef;
import android.nfc.tech.NdefFormatable;
import android.os.Parcelable;
import android.util.Log;
import com.google.appinventor.components.runtime.NearField;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookieStore;
import java.nio.charset.Charset;
import java.util.Locale;

/* loaded from: classes.dex */
public class GingerbreadUtil {
    private static final String LOG_TAG = "GingerbreadUtil";

    private GingerbreadUtil() {
    }

    public static CookieHandler newCookieManager() {
        return new CookieManager();
    }

    public static boolean clearCookies(CookieHandler cookieHandler) {
        CookieStore cookieStore;
        if (!(cookieHandler instanceof CookieManager) || (cookieStore = ((CookieManager) cookieHandler).getCookieStore()) == null) {
            return false;
        }
        cookieStore.removeAll();
        return true;
    }

    public static NfcAdapter newNfcAdapter(Context context) {
        return NfcAdapter.getDefaultAdapter(context);
    }

    public static void enableNFCWriteMode(Activity activity, NfcAdapter nfcAdapter, String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            nfcAdapter.getClass().getMethod("enableForegroundNdefPush", Activity.class, NdefMessage.class).invoke(nfcAdapter, activity, new NdefMessage(new NdefRecord[]{createTextRecord(str, true)}));
        } catch (IllegalAccessException e) {
            Log.e(LOG_TAG, "Unable to write NDEF tag", e);
        } catch (NoSuchMethodException unused) {
            throw new UnsupportedOperationException("This device does not support NFC");
        } catch (InvocationTargetException e2) {
            Log.e(LOG_TAG, "Unable to write NDEF tag", e2);
        }
    }

    public static void disableNFCAdapter(Activity activity, NfcAdapter nfcAdapter) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            nfcAdapter.getClass().getMethod("disableForegroundNdefPush", Activity.class).invoke(nfcAdapter, activity);
        } catch (IllegalAccessException e) {
            Log.e(LOG_TAG, "Unable to write NDEF tag", e);
        } catch (NoSuchMethodException unused) {
            throw new UnsupportedOperationException("This device does not support NFC");
        } catch (InvocationTargetException e2) {
            Log.e(LOG_TAG, "Unable to write NDEF tag", e2);
        }
    }

    public static NdefRecord createTextRecord(String str, boolean z) {
        byte[] bytes = Locale.getDefault().getLanguage().getBytes(Charset.forName("US-ASCII"));
        byte[] bytes2 = str.getBytes(Charset.forName(z ? "UTF-8" : "UTF-16"));
        char length = (char) ((z ? 0 : 128) + bytes.length);
        byte[] bArr = new byte[bytes.length + 1 + bytes2.length];
        bArr[0] = (byte) length;
        System.arraycopy(bytes, 0, bArr, 1, bytes.length);
        System.arraycopy(bytes2, 0, bArr, bytes.length + 1, bytes2.length);
        return new NdefRecord((short) 1, NdefRecord.RTD_TEXT, new byte[0], bArr);
    }

    public static void resolveNFCIntent(Intent intent, NearField nearField) {
        NdefMessage[] ndefMessageArr;
        if ("android.nfc.action.NDEF_DISCOVERED".equals(intent.getAction())) {
            if (nearField.ReadMode()) {
                Parcelable[] parcelableArrayExtra = intent.getParcelableArrayExtra("android.nfc.extra.NDEF_MESSAGES");
                if (parcelableArrayExtra != null) {
                    ndefMessageArr = new NdefMessage[parcelableArrayExtra.length];
                    for (int i = 0; i < parcelableArrayExtra.length; i++) {
                        ndefMessageArr[i] = (NdefMessage) parcelableArrayExtra[i];
                    }
                } else {
                    byte[] bArr = new byte[0];
                    ndefMessageArr = new NdefMessage[]{new NdefMessage(new NdefRecord[]{new NdefRecord((short) 5, bArr, bArr, bArr)})};
                }
                nearField.TagRead(new String(ndefMessageArr[0].getRecords()[0].getPayload()).substring(3));
                return;
            }
            if (writeNFCTag(nearField.WriteType() == 1 ? new NdefMessage(new NdefRecord[]{createTextRecord(nearField.TextToWrite(), true)}) : null, (Tag) intent.getParcelableExtra("android.nfc.extra.TAG"))) {
                nearField.TagWritten();
                return;
            }
            return;
        }
        Log.e("nearfield", "Unknown intent " + intent);
    }

    public static boolean writeNFCTag(NdefMessage ndefMessage, Tag tag) throws IOException, FormatException {
        Ndef ndef;
        int length = ndefMessage.toByteArray().length;
        try {
            ndef = Ndef.get(tag);
        } catch (IOException | Exception unused) {
        }
        if (ndef != null) {
            ndef.connect();
            if (!ndef.isWritable() || ndef.getMaxSize() < length) {
                return false;
            }
            ndef.writeNdefMessage(ndefMessage);
            return true;
        }
        NdefFormatable ndefFormatable = NdefFormatable.get(tag);
        if (ndefFormatable != null) {
            ndefFormatable.connect();
            ndefFormatable.format(ndefMessage);
            return true;
        }
        return false;
    }
}
