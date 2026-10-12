package com.google.common.net;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Immutable
@Beta
@GwtCompatible
/* loaded from: classes.dex */
public final class HostAndPort implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final String f4726a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4727b;
    public final boolean c;

    public HostAndPort(String str, int i, boolean z) {
        this.f4726a = str;
        this.f4727b = i;
        this.c = z;
    }

    public String getHost() {
        return this.f4726a;
    }

    public boolean hasPort() {
        return this.f4727b >= 0;
    }

    public int getPort() {
        Preconditions.checkState(hasPort());
        return this.f4727b;
    }

    public int getPortOrDefault(int i) {
        return hasPort() ? this.f4727b : i;
    }

    public static HostAndPort fromParts(String str, int i) throws NumberFormatException {
        Preconditions.checkArgument(i >= 0 && i <= 65535, "Port out of range: %s", i);
        HostAndPort hostAndPortFromString = fromString(str);
        Preconditions.checkArgument(true ^ hostAndPortFromString.hasPort(), "Host has a port: %s", str);
        return new HostAndPort(hostAndPortFromString.f4726a, i, hostAndPortFromString.c);
    }

    public static HostAndPort fromHost(String str) throws NumberFormatException {
        HostAndPort hostAndPortFromString = fromString(str);
        Preconditions.checkArgument(!hostAndPortFromString.hasPort(), "Host has a port: %s", str);
        return hostAndPortFromString;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.common.net.HostAndPort fromString(java.lang.String r8) throws java.lang.NumberFormatException {
        /*
            com.google.common.base.Preconditions.checkNotNull(r8)
            java.lang.String r0 = "["
            boolean r0 = r8.startsWith(r0)
            r1 = -1
            r2 = 58
            r3 = 1
            r4 = 0
            if (r0 == 0) goto L7f
            char r0 = r8.charAt(r4)
            r5 = 91
            if (r0 != r5) goto L1a
            r0 = 1
            goto L1b
        L1a:
            r0 = 0
        L1b:
            java.lang.String r5 = "Bracketed host-port string must start with a bracket: %s"
            com.google.common.base.Preconditions.checkArgument(r0, r5, r8)
            int r0 = r8.indexOf(r2)
            r5 = 93
            int r5 = r8.lastIndexOf(r5)
            if (r0 <= r1) goto L30
            if (r5 <= r0) goto L30
            r0 = 1
            goto L31
        L30:
            r0 = 0
        L31:
            java.lang.String r6 = "Invalid bracketed host/port: %s"
            com.google.common.base.Preconditions.checkArgument(r0, r6, r8)
            java.lang.String r0 = r8.substring(r3, r5)
            int r6 = r5 + 1
            int r7 = r8.length()
            if (r6 != r7) goto L49
            java.lang.String r2 = ""
            java.lang.String[] r0 = new java.lang.String[]{r0, r2}
            goto L78
        L49:
            char r6 = r8.charAt(r6)
            if (r6 != r2) goto L51
            r2 = 1
            goto L52
        L51:
            r2 = 0
        L52:
            java.lang.String r6 = "Only a colon may follow a close bracket: %s"
            com.google.common.base.Preconditions.checkArgument(r2, r6, r8)
            int r5 = r5 + 2
            r2 = r5
        L5a:
            int r6 = r8.length()
            if (r2 >= r6) goto L70
            char r6 = r8.charAt(r2)
            boolean r6 = java.lang.Character.isDigit(r6)
            java.lang.String r7 = "Port must be numeric: %s"
            com.google.common.base.Preconditions.checkArgument(r6, r7, r8)
            int r2 = r2 + 1
            goto L5a
        L70:
            java.lang.String r2 = r8.substring(r5)
            java.lang.String[] r0 = new java.lang.String[]{r0, r2}
        L78:
            r2 = r0[r4]
            r0 = r0[r3]
        L7c:
            r5 = r2
            r2 = 0
            goto La0
        L7f:
            int r0 = r8.indexOf(r2)
            if (r0 < 0) goto L96
            int r5 = r0 + 1
            int r2 = r8.indexOf(r2, r5)
            if (r2 != r1) goto L96
            java.lang.String r2 = r8.substring(r4, r0)
            java.lang.String r0 = r8.substring(r5)
            goto L7c
        L96:
            if (r0 < 0) goto L9a
            r0 = 1
            goto L9b
        L9a:
            r0 = 0
        L9b:
            r2 = 0
            r5 = r2
            r2 = r0
            r0 = r5
            r5 = r8
        La0:
            boolean r6 = com.google.common.base.Strings.isNullOrEmpty(r0)
            if (r6 != 0) goto Ld1
            java.lang.String r1 = "+"
            boolean r1 = r0.startsWith(r1)
            r1 = r1 ^ r3
            java.lang.String r6 = "Unparseable port number: %s"
            com.google.common.base.Preconditions.checkArgument(r1, r6, r8)
            int r1 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.NumberFormatException -> Lc5
            if (r1 < 0) goto Lbe
            r0 = 65535(0xffff, float:9.1834E-41)
            if (r1 > r0) goto Lbe
            goto Lbf
        Lbe:
            r3 = 0
        Lbf:
            java.lang.String r0 = "Port number out of range: %s"
            com.google.common.base.Preconditions.checkArgument(r3, r0, r8)
            goto Ld1
        Lc5:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Unparseable port number: "
            java.lang.String r8 = r1.concat(r8)
            r0.<init>(r8)
            throw r0
        Ld1:
            com.google.common.net.HostAndPort r8 = new com.google.common.net.HostAndPort
            r8.<init>(r5, r1, r2)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.net.HostAndPort.fromString(java.lang.String):com.google.common.net.HostAndPort");
    }

    public HostAndPort withDefaultPort(int i) {
        Preconditions.checkArgument(i >= 0 && i <= 65535);
        return hasPort() ? this : new HostAndPort(this.f4726a, i, this.c);
    }

    public HostAndPort requireBracketsForIPv6() {
        Preconditions.checkArgument(!this.c, "Possible bracketless IPv6 literal: %s", this.f4726a);
        return this;
    }

    public boolean equals(@NullableDecl Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HostAndPort) {
            HostAndPort hostAndPort = (HostAndPort) obj;
            if (Objects.equal(this.f4726a, hostAndPort.f4726a) && this.f4727b == hostAndPort.f4727b) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.f4726a, Integer.valueOf(this.f4727b));
    }

    public String toString() {
        String str = this.f4726a;
        StringBuilder sb = new StringBuilder(str.length() + 8);
        if (str.indexOf(58) >= 0) {
            sb.append('[');
            sb.append(str);
            sb.append(']');
        } else {
            sb.append(str);
        }
        if (hasPort()) {
            sb.append(':');
            sb.append(this.f4727b);
        }
        return sb.toString();
    }
}
