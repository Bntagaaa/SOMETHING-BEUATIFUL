package com.google.appinventor.components.runtime.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class GameInstance {
    private String instanceId;
    private List<String> players = new ArrayList(0);
    private Map<String, String> messageTimes = new HashMap();
    private String leader = "";

    public GameInstance(String str) {
        this.instanceId = str;
    }

    public String getInstanceId() {
        return this.instanceId;
    }

    public String getLeader() {
        return this.leader;
    }

    public void setLeader(String str) {
        this.leader = str;
    }

    public PlayerListDelta setPlayers(List<String> list) {
        if (list.equals(this.players)) {
            return PlayerListDelta.NO_CHANGE;
        }
        List<String> list2 = this.players;
        ArrayList arrayList = new ArrayList(list);
        this.players = new ArrayList(list);
        arrayList.removeAll(list2);
        list2.removeAll(list);
        if (arrayList.size() == 0 && list2.size() == 0) {
            return PlayerListDelta.NO_CHANGE;
        }
        return new PlayerListDelta(list2, arrayList);
    }

    public List<String> getPlayers() {
        return this.players;
    }

    public String getMessageTime(String str) {
        if (this.messageTimes.containsKey(str)) {
            return this.messageTimes.get(str);
        }
        return "";
    }

    public void putMessageTime(String str, String str2) {
        this.messageTimes.put(str, str2);
    }
}
