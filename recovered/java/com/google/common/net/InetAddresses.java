package com.google.common.net;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.hash.Hashing;
import com.google.common.io.ByteStreams;
import com.google.common.primitives.Ints;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import kotlin.UShort;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class InetAddresses {

    /* renamed from: a, reason: collision with root package name */
    public static final Splitter f4729a = Splitter.on('.').limit(4);

    /* renamed from: b, reason: collision with root package name */
    public static final Splitter f4730b = Splitter.on(':').limit(10);
    public static final Inet4Address c = (Inet4Address) forString("127.0.0.1");
    public static final Inet4Address d = (Inet4Address) forString("0.0.0.0");

    private InetAddresses() {
    }

    public static Inet4Address d(byte[] bArr) {
        Preconditions.checkArgument(bArr.length == 4, "Byte array has invalid length for an IPv4 address: %s != 4.", bArr.length);
        return (Inet4Address) a(bArr);
    }

    public static InetAddress forString(String str) throws NumberFormatException {
        byte[] bArrE = e(str);
        if (bArrE != null) {
            return a(bArrE);
        }
        Locale locale = Locale.ROOT;
        throw new IllegalArgumentException(_COROUTINE.a.A("'", str, "' is not an IP string literal."));
    }

    public static boolean isInetAddress(String str) {
        return e(str) != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0034, code lost:
    
        if (r3 == false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0038, code lost:
    
        if (r2 == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003a, code lost:
    
        r2 = r11.lastIndexOf(58) + 1;
        r8 = r11.substring(0, r2);
        r11 = f(r11.substring(r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004b, code lost:
    
        if (r11 != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004d, code lost:
    
        r11 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004f, code lost:
    
        r11 = r8 + java.lang.Integer.toHexString(((r11[0] & 255) << 8) | (r11[1] & 255)) + ":" + java.lang.Integer.toHexString((r11[3] & 255) | ((r11[2] & 255) << 8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0084, code lost:
    
        if (r11 != null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0088, code lost:
    
        if (r1 == (-1)) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008a, code lost:
    
        r11 = r11.substring(0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008e, code lost:
    
        r11 = com.google.common.net.InetAddresses.f4730b.splitToList(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0098, code lost:
    
        if (r11.size() < 3) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a0, code lost:
    
        if (r11.size() <= 9) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a4, code lost:
    
        r1 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00aa, code lost:
    
        if (r1 >= (r11.size() - 1)) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b6, code lost:
    
        if (r11.get(r1).length() != 0) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b8, code lost:
    
        if (r5 < 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00bc, code lost:
    
        r5 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00bd, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c0, code lost:
    
        if (r5 < 0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c2, code lost:
    
        r1 = r11.size() - r5;
        r2 = r1 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d3, code lost:
    
        if (r11.get(0).length() != 0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d5, code lost:
    
        r3 = r5 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00d7, code lost:
    
        if (r3 == 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00db, code lost:
    
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e6, code lost:
    
        if (((java.lang.String) com.google.common.collect.Iterables.getLast(r11)).length() != 0) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e8, code lost:
    
        r2 = r1 - 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00ea, code lost:
    
        if (r2 == 0) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00ed, code lost:
    
        r3 = r11.size();
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00f2, code lost:
    
        r1 = 8 - (r3 + r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00f6, code lost:
    
        if (r5 < 0) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00f8, code lost:
    
        if (r1 < 1) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00fb, code lost:
    
        if (r1 == 0) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00fe, code lost:
    
        r4 = java.nio.ByteBuffer.allocate(16);
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0106, code lost:
    
        if (r5 >= r3) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0108, code lost:
    
        r8 = java.lang.Integer.parseInt(r11.get(r5), 16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0112, code lost:
    
        if (r8 > 65535) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0114, code lost:
    
        r4.putShort((short) r8);
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0120, code lost:
    
        throw new java.lang.NumberFormatException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0121, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0122, code lost:
    
        if (r3 >= r1) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0124, code lost:
    
        r4.putShort(0);
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x012a, code lost:
    
        if (r2 <= 0) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x012c, code lost:
    
        r0 = java.lang.Integer.parseInt(r11.get(r11.size() - r2), 16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x013b, code lost:
    
        if (r0 > 65535) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x013d, code lost:
    
        r4.putShort((short) r0);
        r2 = r2 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0149, code lost:
    
        throw new java.lang.NumberFormatException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x014e, code lost:
    
        return r4.array();
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x014f, code lost:
    
        if (r2 == false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0155, code lost:
    
        return f(r11);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] e(java.lang.String r11) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.net.InetAddresses.e(java.lang.String):byte[]");
    }

    public static byte[] f(String str) throws NumberFormatException {
        int i;
        byte[] bArr = new byte[4];
        try {
            i = 0;
            for (String str2 : f4729a.split(str)) {
                int i2 = i + 1;
                int i3 = Integer.parseInt(str2);
                if (i3 <= 255 && (!str2.startsWith("0") || str2.length() <= 1)) {
                    bArr[i] = (byte) i3;
                    i = i2;
                } else {
                    throw new NumberFormatException();
                }
            }
        } catch (NumberFormatException unused) {
        }
        if (i == 4) {
            return bArr;
        }
        return null;
    }

    public static InetAddress a(byte[] bArr) {
        try {
            return InetAddress.getByAddress(bArr);
        } catch (UnknownHostException e) {
            throw new AssertionError(e);
        }
    }

    public static String toAddrString(InetAddress inetAddress) {
        Preconditions.checkNotNull(inetAddress);
        if (inetAddress instanceof Inet4Address) {
            return inetAddress.getHostAddress();
        }
        Preconditions.checkArgument(inetAddress instanceof Inet6Address);
        byte[] address = inetAddress.getAddress();
        int[] iArr = new int[8];
        for (int i = 0; i < 8; i++) {
            int i2 = i * 2;
            iArr[i] = Ints.fromBytes((byte) 0, (byte) 0, address[i2], address[i2 + 1]);
        }
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        for (int i6 = 0; i6 < 9; i6++) {
            if (i6 >= 8 || iArr[i6] != 0) {
                if (i5 >= 0) {
                    int i7 = i6 - i5;
                    if (i7 > i3) {
                        i4 = i5;
                        i3 = i7;
                    }
                    i5 = -1;
                }
            } else if (i5 < 0) {
                i5 = i6;
            }
        }
        if (i3 >= 2) {
            Arrays.fill(iArr, i4, i3 + i4, -1);
        }
        StringBuilder sb = new StringBuilder(39);
        int i8 = 0;
        boolean z = false;
        while (i8 < 8) {
            boolean z2 = iArr[i8] >= 0;
            if (z2) {
                if (z) {
                    sb.append(':');
                }
                sb.append(Integer.toHexString(iArr[i8]));
            } else if (i8 == 0 || z) {
                sb.append("::");
            }
            i8++;
            z = z2;
        }
        return sb.toString();
    }

    public static String toUriString(InetAddress inetAddress) {
        if (inetAddress instanceof Inet6Address) {
            return "[" + toAddrString(inetAddress) + "]";
        }
        return toAddrString(inetAddress);
    }

    public static InetAddress forUriString(String str) throws NumberFormatException {
        InetAddress inetAddressB = b(str);
        if (inetAddressB != null) {
            return inetAddressB;
        }
        Locale locale = Locale.ROOT;
        throw new IllegalArgumentException(_COROUTINE.a.A("Not a valid URI IP literal: '", str, "'"));
    }

    public static InetAddress b(String str) throws NumberFormatException {
        int i;
        Preconditions.checkNotNull(str);
        if (str.startsWith("[") && str.endsWith("]")) {
            str = str.substring(1, str.length() - 1);
            i = 16;
        } else {
            i = 4;
        }
        byte[] bArrE = e(str);
        if (bArrE == null || bArrE.length != i) {
            return null;
        }
        return a(bArrE);
    }

    public static boolean isUriInetAddress(String str) {
        return b(str) != null;
    }

    public static boolean isCompatIPv4Address(Inet6Address inet6Address) {
        byte b2;
        if (!inet6Address.isIPv4CompatibleAddress()) {
            return false;
        }
        byte[] address = inet6Address.getAddress();
        return (address[12] == 0 && address[13] == 0 && address[14] == 0 && ((b2 = address[15]) == 0 || b2 == 1)) ? false : true;
    }

    public static Inet4Address getCompatIPv4Address(Inet6Address inet6Address) {
        Preconditions.checkArgument(isCompatIPv4Address(inet6Address), "Address '%s' is not IPv4-compatible.", toAddrString(inet6Address));
        return d(Arrays.copyOfRange(inet6Address.getAddress(), 12, 16));
    }

    public static boolean is6to4Address(Inet6Address inet6Address) {
        byte[] address = inet6Address.getAddress();
        return address[0] == 32 && address[1] == 2;
    }

    public static Inet4Address get6to4IPv4Address(Inet6Address inet6Address) {
        Preconditions.checkArgument(is6to4Address(inet6Address), "Address '%s' is not a 6to4 address.", toAddrString(inet6Address));
        return d(Arrays.copyOfRange(inet6Address.getAddress(), 2, 6));
    }

    @Beta
    public static final class TeredoInfo {

        /* renamed from: a, reason: collision with root package name */
        public final Inet4Address f4731a;

        /* renamed from: b, reason: collision with root package name */
        public final Inet4Address f4732b;
        public final int c;
        public final int d;

        public TeredoInfo(@NullableDecl Inet4Address inet4Address, @NullableDecl Inet4Address inet4Address2, int i, int i2) {
            boolean z = false;
            Preconditions.checkArgument(i >= 0 && i <= 65535, "port '%s' is out of range (0 <= port <= 0xffff)", i);
            if (i2 >= 0 && i2 <= 65535) {
                z = true;
            }
            Preconditions.checkArgument(z, "flags '%s' is out of range (0 <= flags <= 0xffff)", i2);
            Inet4Address inet4Address3 = InetAddresses.d;
            this.f4731a = (Inet4Address) MoreObjects.firstNonNull(inet4Address, inet4Address3);
            this.f4732b = (Inet4Address) MoreObjects.firstNonNull(inet4Address2, inet4Address3);
            this.c = i;
            this.d = i2;
        }

        public Inet4Address getServer() {
            return this.f4731a;
        }

        public Inet4Address getClient() {
            return this.f4732b;
        }

        public int getPort() {
            return this.c;
        }

        public int getFlags() {
            return this.d;
        }
    }

    public static boolean isTeredoAddress(Inet6Address inet6Address) {
        byte[] address = inet6Address.getAddress();
        return address[0] == 32 && address[1] == 1 && address[2] == 0 && address[3] == 0;
    }

    public static TeredoInfo getTeredoInfo(Inet6Address inet6Address) {
        Preconditions.checkArgument(isTeredoAddress(inet6Address), "Address '%s' is not a Teredo address.", toAddrString(inet6Address));
        byte[] address = inet6Address.getAddress();
        Inet4Address inet4AddressD = d(Arrays.copyOfRange(address, 4, 8));
        int i = ByteStreams.newDataInput(address, 8).readShort() & UShort.MAX_VALUE;
        int i2 = 65535 & (~ByteStreams.newDataInput(address, 10).readShort());
        byte[] bArrCopyOfRange = Arrays.copyOfRange(address, 12, 16);
        for (int i3 = 0; i3 < bArrCopyOfRange.length; i3++) {
            bArrCopyOfRange[i3] = (byte) (~bArrCopyOfRange[i3]);
        }
        return new TeredoInfo(inet4AddressD, d(bArrCopyOfRange), i2, i);
    }

    public static boolean isIsatapAddress(Inet6Address inet6Address) {
        if (isTeredoAddress(inet6Address)) {
            return false;
        }
        byte[] address = inet6Address.getAddress();
        return (address[8] | 3) == 3 && address[9] == 0 && address[10] == 94 && address[11] == -2;
    }

    public static Inet4Address getIsatapIPv4Address(Inet6Address inet6Address) {
        Preconditions.checkArgument(isIsatapAddress(inet6Address), "Address '%s' is not an ISATAP address.", toAddrString(inet6Address));
        return d(Arrays.copyOfRange(inet6Address.getAddress(), 12, 16));
    }

    public static boolean hasEmbeddedIPv4ClientAddress(Inet6Address inet6Address) {
        return isCompatIPv4Address(inet6Address) || is6to4Address(inet6Address) || isTeredoAddress(inet6Address);
    }

    public static Inet4Address getEmbeddedIPv4ClientAddress(Inet6Address inet6Address) {
        if (isCompatIPv4Address(inet6Address)) {
            return getCompatIPv4Address(inet6Address);
        }
        if (is6to4Address(inet6Address)) {
            return get6to4IPv4Address(inet6Address);
        }
        if (isTeredoAddress(inet6Address)) {
            return getTeredoInfo(inet6Address).getClient();
        }
        String addrString = toAddrString(inet6Address);
        Locale locale = Locale.ROOT;
        throw new IllegalArgumentException(_COROUTINE.a.A("'", addrString, "' has no embedded IPv4 address."));
    }

    public static boolean isMappedIPv4Address(String str) throws NumberFormatException {
        byte[] bArrE = e(str);
        if (bArrE == null || bArrE.length != 16) {
            return false;
        }
        int i = 0;
        while (true) {
            if (i >= 10) {
                for (int i2 = 10; i2 < 12; i2++) {
                    if (bArrE[i2] != -1) {
                        return false;
                    }
                }
                return true;
            }
            if (bArrE[i] != 0) {
                return false;
            }
            i++;
        }
    }

    public static Inet4Address getCoercedIPv4Address(InetAddress inetAddress) {
        boolean z;
        long jHashCode;
        if (inetAddress instanceof Inet4Address) {
            return (Inet4Address) inetAddress;
        }
        byte[] address = inetAddress.getAddress();
        int i = 0;
        while (true) {
            if (i >= 15) {
                z = true;
                break;
            }
            if (address[i] != 0) {
                z = false;
                break;
            }
            i++;
        }
        if (z && address[15] == 1) {
            return c;
        }
        if (z && address[15] == 0) {
            return d;
        }
        Inet6Address inet6Address = (Inet6Address) inetAddress;
        if (hasEmbeddedIPv4ClientAddress(inet6Address)) {
            jHashCode = getEmbeddedIPv4ClientAddress(inet6Address).hashCode();
        } else {
            jHashCode = ByteBuffer.wrap(inet6Address.getAddress(), 0, 8).getLong();
        }
        int iAsInt = Hashing.murmur3_32().hashLong(jHashCode).asInt() | (-536870912);
        if (iAsInt == -1) {
            iAsInt = -2;
        }
        return d(Ints.toByteArray(iAsInt));
    }

    public static int coerceToInteger(InetAddress inetAddress) {
        return ByteStreams.newDataInput(getCoercedIPv4Address(inetAddress).getAddress()).readInt();
    }

    public static BigInteger toBigInteger(InetAddress inetAddress) {
        return new BigInteger(1, inetAddress.getAddress());
    }

    public static Inet4Address fromInteger(int i) {
        return d(Ints.toByteArray(i));
    }

    public static Inet4Address fromIPv4BigInteger(BigInteger bigInteger) {
        return (Inet4Address) c(bigInteger, false);
    }

    public static Inet6Address fromIPv6BigInteger(BigInteger bigInteger) {
        return (Inet6Address) c(bigInteger, true);
    }

    public static InetAddress c(BigInteger bigInteger, boolean z) {
        Preconditions.checkArgument(bigInteger.signum() >= 0, "BigInteger must be greater than or equal to 0");
        int i = z ? 16 : 4;
        byte[] byteArray = bigInteger.toByteArray();
        byte[] bArr = new byte[i];
        int iMax = Math.max(0, byteArray.length - i);
        int length = byteArray.length - iMax;
        int i2 = i - length;
        for (int i3 = 0; i3 < iMax; i3++) {
            if (byteArray[i3] != 0) {
                throw new IllegalArgumentException(String.format(Locale.ROOT, "BigInteger cannot be converted to InetAddress because it has more than %d bytes: %s", Integer.valueOf(i), bigInteger));
            }
        }
        System.arraycopy(byteArray, iMax, bArr, i2, length);
        try {
            return InetAddress.getByAddress(bArr);
        } catch (UnknownHostException e) {
            throw new AssertionError(e);
        }
    }

    public static InetAddress fromLittleEndianByteArray(byte[] bArr) throws UnknownHostException {
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = bArr[(bArr.length - i) - 1];
        }
        return InetAddress.getByAddress(bArr2);
    }

    public static InetAddress decrement(InetAddress inetAddress) {
        byte[] address = inetAddress.getAddress();
        int length = address.length - 1;
        while (length >= 0 && address[length] == 0) {
            address[length] = -1;
            length--;
        }
        Preconditions.checkArgument(length >= 0, "Decrementing %s would wrap.", inetAddress);
        address[length] = (byte) (address[length] - 1);
        return a(address);
    }

    public static InetAddress increment(InetAddress inetAddress) {
        byte[] address = inetAddress.getAddress();
        int length = address.length - 1;
        while (true) {
            if (length < 0 || address[length] != -1) {
                break;
            }
            address[length] = 0;
            length--;
        }
        Preconditions.checkArgument(length >= 0, "Incrementing %s would wrap.", inetAddress);
        address[length] = (byte) (address[length] + 1);
        return a(address);
    }

    public static boolean isMaximum(InetAddress inetAddress) {
        for (byte b2 : inetAddress.getAddress()) {
            if (b2 != -1) {
                return false;
            }
        }
        return true;
    }
}
