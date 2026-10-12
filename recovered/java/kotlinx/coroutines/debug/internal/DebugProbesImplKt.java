package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.text.Typography;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class DebugProbesImplKt {
    public static final String access$repr(String str) {
        StringBuilder sb = new StringBuilder("\"");
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt != '\r') {
                if (cCharAt != '\"') {
                    if (cCharAt == '\\') {
                        sb.append("\\\\");
                    } else {
                        switch (cCharAt) {
                            case '\b':
                                sb.append("\\b");
                                break;
                            case '\t':
                                sb.append("\\t");
                                break;
                            case '\n':
                                sb.append("\\n");
                                break;
                            default:
                                sb.append(cCharAt);
                                break;
                        }
                    }
                } else {
                    sb.append("\\\"");
                }
            } else {
                sb.append("\\r");
            }
        }
        sb.append(Typography.quote);
        return sb.toString();
    }
}
