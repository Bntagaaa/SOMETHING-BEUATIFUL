package com.google.appinventor.components.runtime;

import android.util.Base64;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

@DesignerComponent(category = ComponentCategory.EXTRAS, description = "Component for encryption and decryption", iconName = "images/niotronSecurity.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronSecurity extends AndroidNonvisibleComponent {
    private String AesKey;
    private String IV;
    private String RsaPrivateKey;
    private String RsaPublicKey;

    public NiotronSecurity(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.AesKey = "";
        this.IV = "";
        this.RsaPrivateKey = "";
        this.RsaPublicKey = "";
    }

    @SimpleFunction(description = "Decrypts AES encrypted text")
    public String AesDecrypt(String str, String str2, String str3) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        byte[] bArrHexToByte = hexToByte(str);
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(this.AesKey.getBytes(), "AES");
            Cipher cipher = Cipher.getInstance("AES/" + str2 + "/" + str3);
            IvParameterSpec ivParameterSpec = new IvParameterSpec(this.IV.getBytes());
            if (str2.equals("ECB")) {
                cipher.init(2, secretKeySpec);
                return new String(cipher.doFinal(bArrHexToByte), "UTF-8");
            }
            cipher.init(2, secretKeySpec, ivParameterSpec);
            return new String(cipher.doFinal(bArrHexToByte), "UTF-8");
        } catch (Exception e) {
            OnErrorOccurred(e.getMessage(), "AesDecrypt");
            return e.getMessage();
        }
    }

    @SimpleFunction(description = "Encrypts AES encrypted text")
    public String AesEncrypt(String str, String str2, String str3) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(this.AesKey.getBytes(), "AES");
            Cipher cipher = Cipher.getInstance("AES/" + str3 + "/" + str2);
            IvParameterSpec ivParameterSpec = new IvParameterSpec(this.IV.getBytes());
            if (str3.equals("ECB")) {
                cipher.init(1, secretKeySpec);
                return byteToHex(cipher.doFinal(str.getBytes("UTF-8")));
            }
            cipher.init(1, secretKeySpec, ivParameterSpec);
            return byteToHex(cipher.doFinal(str.getBytes("UTF-8")));
        } catch (Exception e) {
            OnErrorOccurred(e.getMessage(), "AesEncrypt");
            return e.getMessage();
        }
    }

    @SimpleProperty(description = "Returns AES key")
    public String AesKey() {
        return this.AesKey;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Sets AES key")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXT)
    public void AesKey(String str) {
        this.AesKey = str;
    }

    @SimpleFunction(description = "Decodes BASE64 encrypted text")
    public String BASE64Decode(String str) {
        try {
            return new String(Base64.decode(str, 0), "UTF-8");
        } catch (Exception e) {
            OnErrorOccurred(e.getMessage(), "BASE64Decode");
            return e.getMessage();
        }
    }

    @SimpleFunction(description = "Encodes BASE64 encrypted text")
    public String BASE64Encode(String str) {
        try {
            return Base64.encodeToString(str.getBytes(), 0);
        } catch (Exception e) {
            OnErrorOccurred(e.getMessage(), "BASE64Encode");
            return null;
        }
    }

    @SimpleFunction(description = "Generates AES key")
    public String GenerateAesKey(int i) throws NoSuchAlgorithmException {
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            keyGenerator.init(i);
            String str = new String(keyGenerator.generateKey().getEncoded(), "UTF-8");
            this.AesKey = str;
            return str;
        } catch (Exception e) {
            OnErrorOccurred(e.getMessage(), "GenerateAesKey");
            return e.getMessage();
        }
    }

    @SimpleFunction(description = "Generates RSA key pair and then \"OnRsaKeyPairGenerated\" event gets invokes")
    public void GenerateRsaKeyPair(int i) throws NoSuchAlgorithmException {
        try {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
            keyPairGenerator.initialize(i);
            KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
            RSAPublicKey rSAPublicKey = (RSAPublicKey) keyPairGenerateKeyPair.getPublic();
            RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) keyPairGenerateKeyPair.getPrivate();
            String str = new String(rSAPublicKey.getEncoded(), "UTF-8");
            String str2 = new String(rSAPrivateKey.getEncoded(), "UTF-8");
            this.RsaPrivateKey = str2;
            this.RsaPublicKey = str;
            OnRsaKeyPairGenerated(str2, str);
        } catch (Exception e) {
            OnErrorOccurred(e.getMessage(), "GenerateRsaKeyPair");
        }
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Returns IV of AES encrypt method")
    public String IV() {
        return this.IV;
    }

    @SimpleProperty(description = "Set IV of AES encrypt method.")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void IV(String str) {
        this.IV = str;
    }

    @SimpleFunction(description = "Generates MD5 hash")
    public String MD5hash(String str) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            char[] charArray = str.toCharArray();
            byte[] bArr = new byte[charArray.length];
            for (int i = 0; i < charArray.length; i++) {
                bArr[i] = (byte) charArray[i];
            }
            byte[] bArrDigest = messageDigest.digest(bArr);
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b2 : bArrDigest) {
                int i2 = b2 & 255;
                if (i2 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i2));
            }
            return stringBuffer.toString();
        } catch (Exception e) {
            OnErrorOccurred(e.getMessage(), "MD5hash");
            return e.getMessage();
        }
    }

    @SimpleEvent(description = "Invoked when error occurred")
    public void OnErrorOccurred(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "OnErrorOccurred", str, str2);
    }

    @SimpleEvent(description = "Invoked when RSA Key Pair generated")
    public void OnRsaKeyPairGenerated(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "OnRsaKeyPairGenerated", str, str2);
    }

    @SimpleFunction(description = "Decrypts RSA encrypted with private key")
    public String RSADecrypt(String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        try {
            String str2 = this.RsaPrivateKey;
            byte[] bytes = str.getBytes();
            RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(str2.getBytes()));
            Cipher cipher = Cipher.getInstance("RSA/None/PKCS1Padding");
            cipher.init(2, rSAPrivateKey);
            return new String(cipher.doFinal(bytes));
        } catch (Exception e) {
            OnErrorOccurred(e.getMessage(), "RSADecrypt");
            return e.getMessage();
        }
    }

    @SimpleFunction(description = "Encrypt with RSA public key")
    public String RSAEncrypt(String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        try {
            RSAPublicKey rSAPublicKey = (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(this.RsaPublicKey.getBytes()));
            Cipher cipher = Cipher.getInstance("RSA/None/PKCS1Padding");
            cipher.init(1, rSAPublicKey);
            return new String(cipher.doFinal(str.getBytes()), "UTF-8");
        } catch (Exception e) {
            OnErrorOccurred(e.getMessage(), "RSAEncrypt");
            return e.getMessage();
        }
    }

    @SimpleProperty(description = "Returns RSA private key")
    public String RsaPrivateKey() {
        return this.RsaPrivateKey;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set RSA private key")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void RsaPrivateKey(String str) {
        this.RsaPrivateKey = str;
    }

    @SimpleProperty(description = "Returns RSA public key")
    public String RsaPublicKey() {
        return this.RsaPublicKey;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set RSA public key")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void RsaPublicKey(String str) {
        this.RsaPublicKey = str;
    }

    @SimpleFunction(description = "Generates Sha256 hash")
    public String SHA256(String str) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes("UTF-8"));
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b2 : messageDigest.digest()) {
                String hexString = Integer.toHexString(b2 & 255);
                if (hexString.length() == 1) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(hexString);
            }
            return stringBuffer.toString();
        } catch (Exception e) {
            OnErrorOccurred(e.getMessage(), "SHA256");
            return e.getMessage();
        }
    }

    @SimpleFunction(description = "Generates Sha1 hash")
    public String Sha1(String str) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes("UTF-8"));
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b2 : bArrDigest) {
                sb.append(Integer.toString((b2 & 255) + 256, 16).substring(1));
            }
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return e.getMessage();
        }
    }

    public String byteToHex(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() == 1) {
                hexString = "0".concat(hexString);
            }
            stringBuffer.append(hexString);
        }
        return stringBuffer.toString();
    }

    public byte[] hexToByte(String str) {
        if (str.length() < 1) {
            return null;
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < str.length() / 2; i++) {
            int i2 = i * 2;
            int i3 = i2 + 1;
            bArr[i] = (byte) (Integer.parseInt(str.substring(i3, i2 + 2), 16) + (Integer.parseInt(str.substring(i2, i3), 16) * 16));
        }
        return bArr;
    }
}
