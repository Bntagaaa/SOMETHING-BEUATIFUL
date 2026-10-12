package com.google.common.net;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.net.InetAddress;
import java.text.ParseException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class HostSpecifier {

    /* renamed from: a, reason: collision with root package name */
    public final String f4728a;

    public HostSpecifier(String str) {
        this.f4728a = str;
    }

    public static HostSpecifier fromValid(String str) throws NumberFormatException {
        InetAddress inetAddressForString;
        HostAndPort hostAndPortFromString = HostAndPort.fromString(str);
        Preconditions.checkArgument(!hostAndPortFromString.hasPort());
        String host = hostAndPortFromString.getHost();
        try {
            inetAddressForString = InetAddresses.forString(host);
        } catch (IllegalArgumentException unused) {
            inetAddressForString = null;
        }
        if (inetAddressForString != null) {
            return new HostSpecifier(InetAddresses.toUriString(inetAddressForString));
        }
        InternetDomainName internetDomainNameFrom = InternetDomainName.from(host);
        if (internetDomainNameFrom.hasPublicSuffix()) {
            return new HostSpecifier(internetDomainNameFrom.toString());
        }
        throw new IllegalArgumentException(_COROUTINE.a.i("Domain name does not have a recognized public suffix: ", host));
    }

    public static HostSpecifier from(String str) throws ParseException {
        try {
            return fromValid(str);
        } catch (IllegalArgumentException e) {
            ParseException parseException = new ParseException(_COROUTINE.a.i("Invalid host specifier: ", str), 0);
            parseException.initCause(e);
            throw parseException;
        }
    }

    public static boolean isValid(String str) {
        try {
            fromValid(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public boolean equals(@NullableDecl Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HostSpecifier) {
            return this.f4728a.equals(((HostSpecifier) obj).f4728a);
        }
        return false;
    }

    public int hashCode() {
        return this.f4728a.hashCode();
    }

    public String toString() {
        return this.f4728a;
    }
}
