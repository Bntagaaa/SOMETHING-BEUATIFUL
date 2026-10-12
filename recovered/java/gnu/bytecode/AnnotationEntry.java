package gnu.bytecode;

import gnu.kawa.functions.GetNamedPart;
import java.lang.annotation.Annotation;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* loaded from: classes2.dex */
public class AnnotationEntry implements Annotation {
    ClassType annotationType;
    LinkedHashMap<String, Object> elementsValue = new LinkedHashMap<>(10);

    public ClassType getAnnotationType() {
        return this.annotationType;
    }

    public void addMember(String str, Object obj) {
        this.elementsValue.put(str, obj);
    }

    @Override // java.lang.annotation.Annotation
    public Class<? extends Annotation> annotationType() {
        return this.annotationType.getReflectClass();
    }

    @Override // java.lang.annotation.Annotation
    public boolean equals(Object obj) {
        if (!(obj instanceof AnnotationEntry)) {
            return false;
        }
        AnnotationEntry annotationEntry = (AnnotationEntry) obj;
        if (!getAnnotationType().getName().equals(annotationEntry.getAnnotationType().getName())) {
            return false;
        }
        for (Map.Entry<String, Object> entry : this.elementsValue.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            Object obj2 = annotationEntry.elementsValue.get(key);
            if (value != obj2 && (value == null || obj2 == null || !value.equals(obj2))) {
                return false;
            }
        }
        for (Map.Entry<String, Object> entry2 : annotationEntry.elementsValue.entrySet()) {
            String key2 = entry2.getKey();
            Object value2 = entry2.getValue();
            Object obj3 = this.elementsValue.get(key2);
            if (obj3 != value2 && (obj3 == null || value2 == null || !obj3.equals(value2))) {
                return false;
            }
        }
        return true;
    }

    @Override // java.lang.annotation.Annotation
    public int hashCode() {
        int iHashCode = 0;
        for (Map.Entry<String, Object> entry : this.elementsValue.entrySet()) {
            iHashCode += entry.getValue().hashCode() ^ (entry.getKey().hashCode() * WorkQueueKt.MASK);
        }
        return iHashCode;
    }

    @Override // java.lang.annotation.Annotation
    public String toString() {
        StringBuilder sb = new StringBuilder(GetNamedPart.CAST_METHOD_NAME);
        sb.append(getAnnotationType().getName());
        sb.append('(');
        int i = 0;
        for (Map.Entry<String, Object> entry : this.elementsValue.entrySet()) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            i++;
        }
        sb.append(')');
        return sb.toString();
    }
}
