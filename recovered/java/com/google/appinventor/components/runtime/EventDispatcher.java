package com.google.appinventor.components.runtime;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public class EventDispatcher {
    private static final boolean DEBUG = false;
    private static final java.util.Map<HandlesEventDispatching, EventRegistry> mapDispatchDelegateToEventRegistry = new HashMap();

    public static final class EventClosure {
        private final String componentId;
        private final String eventName;

        public /* synthetic */ EventClosure(String str, String str2, int i) {
            this(str, str2);
        }

        private EventClosure(String str, String str2) {
            this.componentId = str;
            this.eventName = str2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || EventClosure.class != obj.getClass()) {
                return false;
            }
            EventClosure eventClosure = (EventClosure) obj;
            return this.componentId.equals(eventClosure.componentId) && this.eventName.equals(eventClosure.eventName);
        }

        public int hashCode() {
            return this.componentId.hashCode() + (this.eventName.hashCode() * 31);
        }
    }

    public static final class EventRegistry {
        private final HandlesEventDispatching dispatchDelegate;
        private final HashMap<String, Set<EventClosure>> eventClosuresMap = new HashMap<>();

        public EventRegistry(HandlesEventDispatching handlesEventDispatching) {
            this.dispatchDelegate = handlesEventDispatching;
        }
    }

    private EventDispatcher() {
    }

    private static EventRegistry getEventRegistry(HandlesEventDispatching handlesEventDispatching) {
        java.util.Map<HandlesEventDispatching, EventRegistry> map = mapDispatchDelegateToEventRegistry;
        EventRegistry eventRegistry = map.get(handlesEventDispatching);
        if (eventRegistry != null) {
            return eventRegistry;
        }
        EventRegistry eventRegistry2 = new EventRegistry(handlesEventDispatching);
        map.put(handlesEventDispatching, eventRegistry2);
        return eventRegistry2;
    }

    private static EventRegistry removeEventRegistry(HandlesEventDispatching handlesEventDispatching) {
        return mapDispatchDelegateToEventRegistry.remove(handlesEventDispatching);
    }

    public static synchronized void registerEventForDelegation(HandlesEventDispatching handlesEventDispatching, String str, String str2) {
        try {
            EventRegistry eventRegistry = getEventRegistry(handlesEventDispatching);
            Set set = (Set) eventRegistry.eventClosuresMap.get(str2);
            HashSet hashSet = set == null ? new HashSet() : new HashSet(set);
            hashSet.add(new EventClosure(str, str2, 0));
            eventRegistry.eventClosuresMap.put(str2, hashSet);
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void unregisterEventForDelegation(HandlesEventDispatching handlesEventDispatching, String str, String str2) {
        try {
            EventRegistry eventRegistry = getEventRegistry(handlesEventDispatching);
            Set<EventClosure> set = (Set) eventRegistry.eventClosuresMap.get(str2);
            if (set != null && !set.isEmpty()) {
                HashSet hashSet = new HashSet();
                for (EventClosure eventClosure : set) {
                    if (!eventClosure.componentId.equals(str)) {
                        hashSet.add(eventClosure);
                    }
                }
                eventRegistry.eventClosuresMap.put(str2, hashSet);
            }
        } finally {
        }
    }

    public static synchronized void unregisterAllEventsForDelegation() {
        Iterator<EventRegistry> it = mapDispatchDelegateToEventRegistry.values().iterator();
        while (it.hasNext()) {
            it.next().eventClosuresMap.clear();
        }
    }

    public static synchronized void removeDispatchDelegate(HandlesEventDispatching handlesEventDispatching) {
        EventRegistry eventRegistryRemoveEventRegistry = removeEventRegistry(handlesEventDispatching);
        if (eventRegistryRemoveEventRegistry != null) {
            eventRegistryRemoveEventRegistry.eventClosuresMap.clear();
        }
    }

    public static synchronized boolean dispatchEvent(Component component, String str, Object... objArr) {
        boolean zDelegateDispatchEvent;
        try {
            Object[] objArrOptionListsFromValues = OptionHelper.optionListsFromValues(component, str, objArr);
            HandlesEventDispatching dispatchDelegate = component.getDispatchDelegate();
            zDelegateDispatchEvent = false;
            if (dispatchDelegate.canDispatchEvent(component, str)) {
                Set set = (Set) getEventRegistry(dispatchDelegate).eventClosuresMap.get(str);
                if (set != null && set.size() > 0) {
                    zDelegateDispatchEvent = delegateDispatchEvent(dispatchDelegate, set, component, objArrOptionListsFromValues);
                }
                dispatchDelegate.dispatchGenericEvent(component, str, !zDelegateDispatchEvent, objArrOptionListsFromValues);
            }
        } catch (Throwable th) {
            throw th;
        }
        return zDelegateDispatchEvent;
    }

    private static synchronized boolean delegateDispatchEvent(HandlesEventDispatching handlesEventDispatching, Set<EventClosure> set, Component component, Object... objArr) {
        boolean z;
        z = false;
        for (EventClosure eventClosure : set) {
            if (handlesEventDispatching.dispatchEvent(component, eventClosure.componentId, eventClosure.eventName, objArr)) {
                z = true;
            }
        }
        return z;
    }

    public static String makeFullEventName(String str, String str2) {
        return _COROUTINE.a.j(str, "$", str2);
    }
}
