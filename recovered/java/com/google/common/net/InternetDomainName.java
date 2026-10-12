package com.google.common.net;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Ascii;
import com.google.common.base.CharMatcher;
import com.google.common.base.Joiner;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableList;
import com.google.errorprone.annotations.Immutable;
import com.google.thirdparty.publicsuffix.PublicSuffixPatterns;
import com.google.thirdparty.publicsuffix.PublicSuffixType;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Immutable
@Beta
@GwtCompatible
/* loaded from: classes.dex */
public final class InternetDomainName {
    public static final CharMatcher e = CharMatcher.anyOf(".。．｡");
    public static final Splitter f = Splitter.on('.');

    /* renamed from: g, reason: collision with root package name */
    public static final Joiner f4733g = Joiner.on('.');
    public static final CharMatcher h;
    public static final CharMatcher i;
    public static final CharMatcher j;

    /* renamed from: a, reason: collision with root package name */
    public final String f4734a;

    /* renamed from: b, reason: collision with root package name */
    public final ImmutableList f4735b;
    public final int c;
    public final int d;

    static {
        CharMatcher charMatcherAnyOf = CharMatcher.anyOf("-_");
        h = charMatcherAnyOf;
        CharMatcher charMatcherInRange = CharMatcher.inRange('0', '9');
        i = charMatcherInRange;
        j = charMatcherInRange.or(CharMatcher.inRange('a', 'z').or(CharMatcher.inRange('A', 'Z'))).or(charMatcherAnyOf);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public InternetDomainName(String str) {
        String lowerCase = Ascii.toLowerCase(e.replaceFrom((CharSequence) str, '.'));
        boolean z = false;
        lowerCase = lowerCase.endsWith(".") ? lowerCase.substring(0, lowerCase.length() - 1) : lowerCase;
        Preconditions.checkArgument(lowerCase.length() <= 253, "Domain name too long: '%s':", lowerCase);
        this.f4734a = lowerCase;
        ImmutableList immutableListCopyOf = ImmutableList.copyOf(f.split(lowerCase));
        this.f4735b = immutableListCopyOf;
        Preconditions.checkArgument(immutableListCopyOf.size() <= 127, "Domain has too many parts: '%s'", lowerCase);
        int size = immutableListCopyOf.size() - 1;
        if (c((String) immutableListCopyOf.get(size), true)) {
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    z = true;
                    break;
                } else if (!c((String) immutableListCopyOf.get(i2), false)) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        Preconditions.checkArgument(z, "Not a valid domain name: '%s'", lowerCase);
        this.c = b(Optional.absent());
        this.d = b(Optional.of(PublicSuffixType.REGISTRY));
    }

    public final int b(Optional optional) {
        ImmutableList immutableList = this.f4735b;
        int size = immutableList.size();
        for (int i2 = 0; i2 < size; i2++) {
            String strJoin = f4733g.join(immutableList.subList(i2, size));
            Optional optionalFromNullable = Optional.fromNullable(PublicSuffixPatterns.EXACT.get(strJoin));
            if (!(optional.isPresent() ? optional.equals(optionalFromNullable) : optionalFromNullable.isPresent())) {
                if (PublicSuffixPatterns.EXCLUDED.containsKey(strJoin)) {
                    return i2 + 1;
                }
                List<String> listSplitToList = f.limit(2).splitToList(strJoin);
                if (listSplitToList.size() == 2) {
                    Optional optionalFromNullable2 = Optional.fromNullable(PublicSuffixPatterns.UNDER.get(listSplitToList.get(1)));
                    if (optional.isPresent() ? optional.equals(optionalFromNullable2) : optionalFromNullable2.isPresent()) {
                    }
                }
            }
            return i2;
        }
        return -1;
    }

    public static InternetDomainName from(String str) {
        return new InternetDomainName((String) Preconditions.checkNotNull(str));
    }

    public static boolean c(String str, boolean z) {
        if (str.length() >= 1 && str.length() <= 63) {
            if (j.matchesAllOf(CharMatcher.ascii().retainFrom(str))) {
                char cCharAt = str.charAt(0);
                CharMatcher charMatcher = h;
                if (!charMatcher.matches(cCharAt) && !charMatcher.matches(str.charAt(str.length() - 1)) && (!z || !i.matches(str.charAt(0)))) {
                    return true;
                }
            }
        }
        return false;
    }

    public ImmutableList<String> parts() {
        return this.f4735b;
    }

    public boolean isPublicSuffix() {
        return this.c == 0;
    }

    public boolean hasPublicSuffix() {
        return this.c != -1;
    }

    public InternetDomainName publicSuffix() {
        if (hasPublicSuffix()) {
            return a(this.c);
        }
        return null;
    }

    public boolean isUnderPublicSuffix() {
        return this.c > 0;
    }

    public boolean isTopPrivateDomain() {
        return this.c == 1;
    }

    public InternetDomainName topPrivateDomain() {
        if (isTopPrivateDomain()) {
            return this;
        }
        Preconditions.checkState(isUnderPublicSuffix(), "Not under a public suffix: %s", this.f4734a);
        return a(this.c - 1);
    }

    public boolean isRegistrySuffix() {
        return this.d == 0;
    }

    public boolean hasRegistrySuffix() {
        return this.d != -1;
    }

    public InternetDomainName registrySuffix() {
        if (hasRegistrySuffix()) {
            return a(this.d);
        }
        return null;
    }

    public boolean isUnderRegistrySuffix() {
        return this.d > 0;
    }

    public boolean isTopDomainUnderRegistrySuffix() {
        return this.d == 1;
    }

    public InternetDomainName topDomainUnderRegistrySuffix() {
        if (isTopDomainUnderRegistrySuffix()) {
            return this;
        }
        Preconditions.checkState(isUnderRegistrySuffix(), "Not under a registry suffix: %s", this.f4734a);
        return a(this.d - 1);
    }

    public boolean hasParent() {
        return this.f4735b.size() > 1;
    }

    public InternetDomainName parent() {
        Preconditions.checkState(hasParent(), "Domain '%s' has no parent", this.f4734a);
        return a(1);
    }

    public final InternetDomainName a(int i2) {
        ImmutableList immutableList = this.f4735b;
        return from(f4733g.join(immutableList.subList(i2, immutableList.size())));
    }

    public InternetDomainName child(String str) {
        return from(((String) Preconditions.checkNotNull(str)) + "." + this.f4734a);
    }

    public static boolean isValid(String str) {
        try {
            from(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public String toString() {
        return this.f4734a;
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof InternetDomainName) {
            return this.f4734a.equals(((InternetDomainName) obj).f4734a);
        }
        return false;
    }

    public int hashCode() {
        return this.f4734a.hashCode();
    }
}
