package com.google.common.net;

import com.google.common.base.Function;
import com.google.common.collect.ImmutableMultiset;
import java.util.Collection;

/* loaded from: classes.dex */
class a implements Function<Collection<String>, ImmutableMultiset<String>> {
    @Override // com.google.common.base.Function
    public ImmutableMultiset<String> apply(Collection<String> collection) {
        return ImmutableMultiset.copyOf(collection);
    }
}
