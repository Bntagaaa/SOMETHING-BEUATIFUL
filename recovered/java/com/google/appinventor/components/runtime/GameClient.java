package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.os.Handler;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.collect.Lists;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.AsyncCallbackPair;
import com.google.appinventor.components.runtime.util.AsynchUtil;
import com.google.appinventor.components.runtime.util.GameInstance;
import com.google.appinventor.components.runtime.util.JsonUtil;
import com.google.appinventor.components.runtime.util.PlayerListDelta;
import com.google.appinventor.components.runtime.util.WebServiceUtil;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@UsesPermissions(permissionNames = "android.permission.INTERNET, com.google.android.googleapps.permission.GOOGLE_AUTH")
@DesignerComponent(category = ComponentCategory.INTERNAL, description = "Provides a way for applications to communicate with online game servers", iconName = "images/gameClient.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class GameClient extends AndroidNonvisibleComponent implements Component, OnResumeListener, OnStopListener {
    private static final String COMMAND_ARGUMENTS_KEY = "args";
    private static final String COMMAND_TYPE_KEY = "command";
    private static final String COUNT_KEY = "count";
    private static final String ERROR_RESPONSE_KEY = "e";
    private static final String GAME_ID_KEY = "gid";
    private static final String GET_INSTANCE_LISTS_COMMAND = "getinstancelists";
    private static final String GET_MESSAGES_COMMAND = "messages";
    private static final String INSTANCE_ID_KEY = "iid";
    private static final String INSTANCE_PUBLIC_KEY = "makepublic";
    private static final String INVITED_LIST_KEY = "invited";
    private static final String INVITEE_KEY = "inv";
    private static final String INVITE_COMMAND = "invite";
    private static final String JOINED_LIST_KEY = "joined";
    private static final String JOIN_INSTANCE_COMMAND = "joininstance";
    private static final String LEADER_KEY = "leader";
    private static final String LEAVE_INSTANCE_COMMAND = "leaveinstance";
    private static final String LOG_TAG = "GameClient";
    private static final String MESSAGES_LIST_KEY = "messages";
    private static final String MESSAGE_CONTENT_KEY = "contents";
    private static final String MESSAGE_RECIPIENTS_KEY = "mrec";
    private static final String MESSAGE_SENDER_KEY = "msender";
    private static final String MESSAGE_TIME_KEY = "mtime";
    private static final String NEW_INSTANCE_COMMAND = "newinstance";
    private static final String NEW_MESSAGE_COMMAND = "newmessage";
    private static final String PLAYERS_LIST_KEY = "players";
    private static final String PLAYER_ID_KEY = "pid";
    private static final String PUBLIC_LIST_KEY = "public";
    private static final String SERVER_COMMAND = "servercommand";
    private static final String SERVER_RETURN_VALUE_KEY = "response";
    private static final String SET_LEADER_COMMAND = "setleader";
    private static final String TYPE_KEY = "type";
    private Activity activityContext;
    private Handler androidUIHandler;
    private String gameId;
    private GameInstance instance;
    private List<String> invitedInstances;
    private List<String> joinedInstances;
    private List<String> publicInstances;
    private String serviceUrl;
    private String userEmailAddress;

    public GameClient(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.userEmailAddress = "";
        this.androidUIHandler = new Handler();
        this.activityContext = componentContainer.$context();
        this.form.registerForOnResume(this);
        this.form.registerForOnStop(this);
        this.gameId = "";
        this.instance = new GameInstance("");
        this.joinedInstances = Lists.newArrayList();
        this.invitedInstances = Lists.newArrayList();
        this.publicInstances = Lists.newArrayList();
        this.serviceUrl = "http://appinvgameserver.appspot.com";
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The game name for this application. The same game ID can have one or more game instances.")
    public String GameId() {
        return this.gameId;
    }

    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void GameId(String str) {
        this.gameId = str;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The game instance id.  Taken together,the game ID and the instance ID uniquely identify the game.")
    public String InstanceId() {
        return this.instance.getInstanceId();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The set of game instances to which this player has been invited but has not yet joined.  To ensure current values are returned, first invoke GetInstanceLists.")
    public List<String> InvitedInstances() {
        return this.invitedInstances;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The set of game instances in which this player is participating.  To ensure current values are returned, first invoke GetInstanceLists.")
    public List<String> JoinedInstances() {
        return this.joinedInstances;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The game's leader. At any time, each game instance has only one leader, but the leader may change with time.  Initially, the leader is the game instance creator. Application writers determine special properties of the leader. The leader value is updated each time a successful communication is made with the server.")
    public String Leader() {
        return this.instance.getLeader();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The current set of players for this game instance. Each player is designated by an email address, which is a string. The list of players is updated each time a successful communication is made with the game server.")
    public List<String> Players() {
        return this.instance.getPlayers();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The set of game instances that have been marked public. To ensure current values are returned, first invoke {@link #GetInstanceLists}. ")
    public List<String> PublicInstances() {
        return this.publicInstances;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The URL of the game server.")
    public String ServiceUrl() {
        return this.serviceUrl;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    @DesignerProperty(defaultValue = "http://appinvgameserver.appspot.com", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ServiceURL(String str) {
        if (str.endsWith("/")) {
            this.serviceUrl = str.substring(0, str.length() - 1);
        } else {
            this.serviceUrl = str;
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The email address that is being used as the player id for this game client.   At present, users must set this manually in oder to join a game.  But this property will change in the future so that is set automatically, and users will not be able to change it.")
    public String UserEmailAddress() {
        if (this.userEmailAddress.equals("")) {
            Info("User email address is empty.");
        }
        return this.userEmailAddress;
    }

    @SimpleProperty
    public void UserEmailAddress(String str) {
        this.userEmailAddress = str;
        UserEmailAddressSet(str);
    }

    @SimpleEvent(description = "Indicates that a function call completed.")
    public void FunctionCompleted(final String str) {
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.1
            @Override // java.lang.Runnable
            public void run() {
                _COROUTINE.a.B("Request completed: ", str, GameClient.LOG_TAG);
                EventDispatcher.dispatchEvent(GameClient.this, "FunctionCompleted", str);
            }
        });
    }

    public void Initialize() {
        Log.d(LOG_TAG, "Initialize");
        if (this.gameId.equals("")) {
            throw new YailRuntimeError("Game Id must not be empty.", "GameClient Configuration Error.");
        }
    }

    @SimpleEvent(description = "Indicates that a new message has been received.")
    public void GotMessage(final String str, final String str2, final List<Object> list) {
        _COROUTINE.a.B("Got message of type ", str, LOG_TAG);
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.2
            @Override // java.lang.Runnable
            public void run() {
                EventDispatcher.dispatchEvent(GameClient.this, "GotMessage", str, str2, list);
            }
        });
    }

    @SimpleEvent(description = "Indicates that the InstanceId property has changed as a result of calling MakeNewInstance or SetInstance.")
    public void InstanceIdChanged(final String str) {
        _COROUTINE.a.B("Instance id changed to ", str, LOG_TAG);
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.3
            @Override // java.lang.Runnable
            public void run() {
                EventDispatcher.dispatchEvent(GameClient.this, "InstanceIdChanged", str);
            }
        });
    }

    @SimpleEvent(description = "Indicates that a user has been invited to this game instance.")
    public void Invited(final String str) {
        _COROUTINE.a.B("Player invited to ", str, LOG_TAG);
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.4
            @Override // java.lang.Runnable
            public void run() {
                EventDispatcher.dispatchEvent(GameClient.this, "Invited", str);
            }
        });
    }

    @SimpleEvent(description = "Indicates that this game has a new leader as specified through SetLeader")
    public void NewLeader(final String str) {
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.5
            @Override // java.lang.Runnable
            public void run() {
                _COROUTINE.a.B("Leader change to ", str, GameClient.LOG_TAG);
                EventDispatcher.dispatchEvent(GameClient.this, "NewLeader", str);
            }
        });
    }

    @SimpleEvent(description = "Indicates that a new instance was successfully created after calling MakeNewInstance.")
    public void NewInstanceMade(final String str) {
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.6
            @Override // java.lang.Runnable
            public void run() {
                _COROUTINE.a.B("New instance made: ", str, GameClient.LOG_TAG);
                EventDispatcher.dispatchEvent(GameClient.this, "NewInstanceMade", str);
            }
        });
    }

    @SimpleEvent(description = "Indicates that a new player has joined this game instance.")
    public void PlayerJoined(final String str) {
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.7
            @Override // java.lang.Runnable
            public void run() {
                if (str.equals(GameClient.this.UserEmailAddress())) {
                    return;
                }
                _COROUTINE.a.B("Player joined: ", str, GameClient.LOG_TAG);
                EventDispatcher.dispatchEvent(GameClient.this, "PlayerJoined", str);
            }
        });
    }

    @SimpleEvent(description = "Indicates that a player has left this game instance.")
    public void PlayerLeft(final String str) {
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.8
            @Override // java.lang.Runnable
            public void run() {
                _COROUTINE.a.B("Player left: ", str, GameClient.LOG_TAG);
                EventDispatcher.dispatchEvent(GameClient.this, "PlayerLeft", str);
            }
        });
    }

    @SimpleEvent(description = "Indicates that a server command failed.")
    public void ServerCommandFailure(final String str, final YailList yailList) {
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.9
            @Override // java.lang.Runnable
            public void run() {
                _COROUTINE.a.B("Server command failed: ", str, GameClient.LOG_TAG);
                EventDispatcher.dispatchEvent(GameClient.this, "ServerCommandFailure", str, yailList);
            }
        });
    }

    @SimpleEvent(description = "Indicates that a server command returned successfully.")
    public void ServerCommandSuccess(final String str, final List<Object> list) {
        Log.d(LOG_TAG, str + " server command returned.");
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.10
            @Override // java.lang.Runnable
            public void run() {
                EventDispatcher.dispatchEvent(GameClient.this, "ServerCommandSuccess", str, list);
            }
        });
    }

    @SimpleEvent(description = "Indicates that the user email address has been set.")
    public void UserEmailAddressSet(final String str) {
        Log.d(LOG_TAG, "Email address set.");
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.11
            @Override // java.lang.Runnable
            public void run() {
                EventDispatcher.dispatchEvent(GameClient.this, "UserEmailAddressSet", str);
            }
        });
    }

    @SimpleEvent(description = "Indicates that something has occurred which the player should know about.")
    public void Info(final String str) {
        _COROUTINE.a.B("Info: ", str, LOG_TAG);
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.12
            @Override // java.lang.Runnable
            public void run() {
                EventDispatcher.dispatchEvent(GameClient.this, "Info", str);
            }
        });
    }

    @SimpleEvent(description = "Indicates that an error occurred while communicating with the web server.")
    public void WebServiceError(final String str, final String str2) {
        _COROUTINE.a.w("WebServiceError: ", str2, LOG_TAG);
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.13
            @Override // java.lang.Runnable
            public void run() {
                EventDispatcher.dispatchEvent(GameClient.this, "WebServiceError", str, str2);
            }
        });
    }

    @SimpleFunction(description = "Updates the InstancesJoined and InstancesInvited lists. This procedure can be called before setting the InstanceId.")
    public void GetInstanceLists() {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.14
            @Override // java.lang.Runnable
            public void run() {
                GameClient.this.postGetInstanceLists();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postGetInstanceLists() {
        postCommandToGameServer(GET_INSTANCE_LISTS_COMMAND, Lists.newArrayList(new BasicNameValuePair(GAME_ID_KEY, GameId()), new BasicNameValuePair(INSTANCE_ID_KEY, InstanceId()), new BasicNameValuePair(PLAYER_ID_KEY, UserEmailAddress())), new AsyncCallbackPair<JSONObject>() { // from class: com.google.appinventor.components.runtime.GameClient.15
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(JSONObject jSONObject) {
                GameClient.this.processInstanceLists(jSONObject);
                GameClient.this.FunctionCompleted("GetInstanceLists");
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(String str) {
                GameClient.this.WebServiceError("GetInstanceLists", "Failed to get up to date instance lists.");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processInstanceLists(JSONObject jSONObject) {
        try {
            this.joinedInstances = JsonUtil.getStringListFromJsonArray(jSONObject.getJSONArray(JOINED_LIST_KEY));
            this.publicInstances = JsonUtil.getStringListFromJsonArray(jSONObject.getJSONArray(PUBLIC_LIST_KEY));
            List<String> stringListFromJsonArray = JsonUtil.getStringListFromJsonArray(jSONObject.getJSONArray(INVITED_LIST_KEY));
            if (stringListFromJsonArray.equals(InvitedInstances())) {
                return;
            }
            List<String> list = this.invitedInstances;
            this.invitedInstances = stringListFromJsonArray;
            ArrayList arrayList = new ArrayList(stringListFromJsonArray);
            arrayList.removeAll(list);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Invited((String) it.next());
            }
        } catch (JSONException e) {
            Log.w(LOG_TAG, e);
            Info("Instance lists failed to parse.");
        }
    }

    @SimpleFunction(description = "Retrieves messages of the specified type.")
    public void GetMessages(final String str, final int i) {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.16
            @Override // java.lang.Runnable
            public void run() {
                GameClient.this.postGetMessages(str, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postGetMessages(final String str, int i) {
        AsyncCallbackPair<JSONObject> asyncCallbackPair = new AsyncCallbackPair<JSONObject>() { // from class: com.google.appinventor.components.runtime.GameClient.17
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(JSONObject jSONObject) throws JSONException {
                try {
                    int i2 = jSONObject.getInt(GameClient.COUNT_KEY);
                    JSONArray jSONArray = jSONObject.getJSONArray("messages");
                    for (int i3 = 0; i3 < i2; i3++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i3);
                        String string = jSONObject2.getString(GameClient.TYPE_KEY);
                        String string2 = jSONObject2.getString(GameClient.MESSAGE_SENDER_KEY);
                        String string3 = jSONObject2.getString(GameClient.MESSAGE_TIME_KEY);
                        List<Object> listFromJsonArray = JsonUtil.getListFromJsonArray(jSONObject2.getJSONArray(GameClient.MESSAGE_CONTENT_KEY), true);
                        if (str.equals("")) {
                            GameClient.this.instance.putMessageTime(str, string3);
                        }
                        GameClient.this.instance.putMessageTime(string, string3);
                        GameClient.this.GotMessage(string, string2, listFromJsonArray);
                    }
                } catch (JSONException e) {
                    Log.w(GameClient.LOG_TAG, e);
                    GameClient.this.Info("Failed to parse messages response.");
                }
                GameClient.this.FunctionCompleted("GetMessages");
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(String str2) {
                GameClient.this.WebServiceError("GetMessages", str2);
            }
        };
        if (InstanceId().equals("")) {
            Info("You must join an instance before attempting to fetch messages.");
        } else {
            postCommandToGameServer("messages", Lists.newArrayList(new BasicNameValuePair(GAME_ID_KEY, GameId()), new BasicNameValuePair(INSTANCE_ID_KEY, InstanceId()), new BasicNameValuePair(PLAYER_ID_KEY, UserEmailAddress()), new BasicNameValuePair(COUNT_KEY, Integer.toString(i)), new BasicNameValuePair(MESSAGE_TIME_KEY, this.instance.getMessageTime(str)), new BasicNameValuePair(TYPE_KEY, str)), asyncCallbackPair);
        }
    }

    @SimpleFunction(description = "Invites a player to this game instance.")
    public void Invite(final String str) {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.18
            @Override // java.lang.Runnable
            public void run() {
                GameClient.this.postInvite(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postInvite(String str) {
        AsyncCallbackPair<JSONObject> asyncCallbackPair = new AsyncCallbackPair<JSONObject>() { // from class: com.google.appinventor.components.runtime.GameClient.19
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(JSONObject jSONObject) throws JSONException {
                try {
                    String string = jSONObject.getString(GameClient.INVITEE_KEY);
                    if (string.equals("")) {
                        GameClient.this.Info(string.concat(" was already invited."));
                    } else {
                        GameClient.this.Info("Successfully invited " + string + ".");
                    }
                } catch (JSONException e) {
                    Log.w(GameClient.LOG_TAG, e);
                    GameClient.this.Info("Failed to parse invite player response.");
                }
                GameClient.this.FunctionCompleted("Invite");
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(String str2) {
                GameClient.this.WebServiceError("Invite", str2);
            }
        };
        if (InstanceId().equals("")) {
            Info("You must have joined an instance before you can invite new players.");
        } else {
            postCommandToGameServer(INVITE_COMMAND, Lists.newArrayList(new BasicNameValuePair(GAME_ID_KEY, GameId()), new BasicNameValuePair(INSTANCE_ID_KEY, InstanceId()), new BasicNameValuePair(PLAYER_ID_KEY, UserEmailAddress()), new BasicNameValuePair(INVITEE_KEY, str)), asyncCallbackPair);
        }
    }

    @SimpleFunction(description = "Leaves the current instance.")
    public void LeaveInstance() {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.20
            @Override // java.lang.Runnable
            public void run() {
                GameClient.this.postLeaveInstance();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postLeaveInstance() {
        postCommandToGameServer(LEAVE_INSTANCE_COMMAND, Lists.newArrayList(new BasicNameValuePair(GAME_ID_KEY, GameId()), new BasicNameValuePair(INSTANCE_ID_KEY, InstanceId()), new BasicNameValuePair(PLAYER_ID_KEY, UserEmailAddress())), new AsyncCallbackPair<JSONObject>() { // from class: com.google.appinventor.components.runtime.GameClient.21
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(JSONObject jSONObject) {
                GameClient.this.SetInstance("");
                GameClient.this.processInstanceLists(jSONObject);
                GameClient.this.FunctionCompleted("LeaveInstance");
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(String str) {
                GameClient.this.WebServiceError("LeaveInstance", str);
            }
        });
    }

    @SimpleFunction(description = "Asks the server to create a new instance of this game.")
    public void MakeNewInstance(final String str, final boolean z) {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.22
            @Override // java.lang.Runnable
            public void run() {
                GameClient.this.postMakeNewInstance(str, Boolean.valueOf(z));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postMakeNewInstance(String str, Boolean bool) {
        postCommandToGameServer(NEW_INSTANCE_COMMAND, Lists.newArrayList(new BasicNameValuePair(PLAYER_ID_KEY, UserEmailAddress()), new BasicNameValuePair(GAME_ID_KEY, GameId()), new BasicNameValuePair(INSTANCE_ID_KEY, str), new BasicNameValuePair(INSTANCE_PUBLIC_KEY, bool.toString())), new AsyncCallbackPair<JSONObject>() { // from class: com.google.appinventor.components.runtime.GameClient.23
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(JSONObject jSONObject) {
                GameClient.this.processInstanceLists(jSONObject);
                GameClient gameClient = GameClient.this;
                gameClient.NewInstanceMade(gameClient.InstanceId());
                GameClient.this.FunctionCompleted("MakeNewInstance");
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(String str2) {
                GameClient.this.WebServiceError("MakeNewInstance", str2);
            }
        }, true);
    }

    @SimpleFunction(description = "Sends a keyed message to all recipients in the recipients list. The message will consist of the contents list.")
    public void SendMessage(final String str, final YailList yailList, final YailList yailList2) {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.24
            @Override // java.lang.Runnable
            public void run() {
                GameClient.this.postNewMessage(str, yailList, yailList2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postNewMessage(String str, YailList yailList, YailList yailList2) {
        AsyncCallbackPair<JSONObject> asyncCallbackPair = new AsyncCallbackPair<JSONObject>() { // from class: com.google.appinventor.components.runtime.GameClient.25
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(JSONObject jSONObject) {
                GameClient.this.FunctionCompleted("SendMessage");
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(String str2) {
                GameClient.this.WebServiceError("SendMessage", str2);
            }
        };
        if (InstanceId().equals("")) {
            Info("You must have joined an instance before you can send messages.");
        } else {
            postCommandToGameServer(NEW_MESSAGE_COMMAND, Lists.newArrayList(new BasicNameValuePair(GAME_ID_KEY, GameId()), new BasicNameValuePair(INSTANCE_ID_KEY, InstanceId()), new BasicNameValuePair(PLAYER_ID_KEY, UserEmailAddress()), new BasicNameValuePair(TYPE_KEY, str), new BasicNameValuePair(MESSAGE_RECIPIENTS_KEY, yailList.toJSONString()), new BasicNameValuePair(MESSAGE_CONTENT_KEY, yailList2.toJSONString()), new BasicNameValuePair(MESSAGE_TIME_KEY, this.instance.getMessageTime(str))), asyncCallbackPair);
        }
    }

    @SimpleFunction(description = "Sends the specified command to the game server.")
    public void ServerCommand(final String str, final YailList yailList) {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.26
            @Override // java.lang.Runnable
            public void run() {
                GameClient.this.postServerCommand(str, yailList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postServerCommand(final String str, final YailList yailList) {
        AsyncCallbackPair<JSONObject> asyncCallbackPair = new AsyncCallbackPair<JSONObject>() { // from class: com.google.appinventor.components.runtime.GameClient.27
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(JSONObject jSONObject) {
                try {
                    GameClient.this.ServerCommandSuccess(str, JsonUtil.getListFromJsonArray(jSONObject.getJSONArray(GameClient.MESSAGE_CONTENT_KEY), true));
                } catch (JSONException e) {
                    Log.w(GameClient.LOG_TAG, e);
                    GameClient.this.Info("Server command response failed to parse.");
                }
                GameClient.this.FunctionCompleted("ServerCommand");
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(String str2) {
                GameClient.this.ServerCommandFailure(str, yailList);
                GameClient.this.WebServiceError("ServerCommand", str2);
            }
        };
        Log.d(LOG_TAG, "Going to post " + str + " with args " + yailList);
        postCommandToGameServer(SERVER_COMMAND, Lists.newArrayList(new BasicNameValuePair(GAME_ID_KEY, GameId()), new BasicNameValuePair(INSTANCE_ID_KEY, InstanceId()), new BasicNameValuePair(PLAYER_ID_KEY, UserEmailAddress()), new BasicNameValuePair(COMMAND_TYPE_KEY, str), new BasicNameValuePair(COMMAND_ARGUMENTS_KEY, yailList.toJSONString())), asyncCallbackPair);
    }

    @SimpleFunction(description = "Sets InstanceId and joins the specified instance.")
    public void SetInstance(final String str) {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.28
            @Override // java.lang.Runnable
            public void run() {
                if (str.equals("")) {
                    Log.d(GameClient.LOG_TAG, "Instance id set to empty string.");
                    if (GameClient.this.InstanceId().equals("")) {
                        return;
                    }
                    GameClient.this.instance = new GameInstance("");
                    GameClient.this.InstanceIdChanged("");
                    GameClient.this.FunctionCompleted("SetInstance");
                    return;
                }
                GameClient.this.postSetInstance(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postSetInstance(String str) {
        postCommandToGameServer(JOIN_INSTANCE_COMMAND, Lists.newArrayList(new BasicNameValuePair(GAME_ID_KEY, GameId()), new BasicNameValuePair(INSTANCE_ID_KEY, str), new BasicNameValuePair(PLAYER_ID_KEY, UserEmailAddress())), new AsyncCallbackPair<JSONObject>() { // from class: com.google.appinventor.components.runtime.GameClient.29
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(JSONObject jSONObject) {
                GameClient.this.processInstanceLists(jSONObject);
                GameClient.this.FunctionCompleted("SetInstance");
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(String str2) {
                GameClient.this.WebServiceError("SetInstance", str2);
            }
        }, true);
    }

    @SimpleFunction(description = "Tells the server to set the leader to playerId. Only the current leader may successfully set a new leader.")
    public void SetLeader(final String str) {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.GameClient.30
            @Override // java.lang.Runnable
            public void run() {
                GameClient.this.postSetLeader(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postSetLeader(String str) {
        AsyncCallbackPair<JSONObject> asyncCallbackPair = new AsyncCallbackPair<JSONObject>() { // from class: com.google.appinventor.components.runtime.GameClient.31
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(JSONObject jSONObject) {
                GameClient.this.FunctionCompleted("SetLeader");
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(String str2) {
                GameClient.this.WebServiceError("SetLeader", str2);
            }
        };
        if (InstanceId().equals("")) {
            Info("You must join an instance before attempting to set a leader.");
        } else {
            postCommandToGameServer(SET_LEADER_COMMAND, Lists.newArrayList(new BasicNameValuePair(GAME_ID_KEY, GameId()), new BasicNameValuePair(INSTANCE_ID_KEY, InstanceId()), new BasicNameValuePair(PLAYER_ID_KEY, UserEmailAddress()), new BasicNameValuePair(LEADER_KEY, str)), asyncCallbackPair);
        }
    }

    @Override // com.google.appinventor.components.runtime.OnResumeListener
    public void onResume() {
        Log.d(LOG_TAG, "Activity Resumed.");
    }

    @Override // com.google.appinventor.components.runtime.OnStopListener
    public void onStop() {
        Log.d(LOG_TAG, "Activity Stopped.");
    }

    private void postCommandToGameServer(String str, List<NameValuePair> list, AsyncCallbackPair<JSONObject> asyncCallbackPair) {
        postCommandToGameServer(str, list, asyncCallbackPair, false);
    }

    private void postCommandToGameServer(final String str, final List<NameValuePair> list, final AsyncCallbackPair<JSONObject> asyncCallbackPair, final boolean z) {
        WebServiceUtil.getInstance().postCommandReturningObject(ServiceUrl(), str, list, new AsyncCallbackPair<JSONObject>() { // from class: com.google.appinventor.components.runtime.GameClient.32
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(JSONObject jSONObject) throws JSONException {
                Log.d(GameClient.LOG_TAG, "Received response for " + str + ": " + jSONObject.toString());
                try {
                    if (jSONObject.getBoolean(GameClient.ERROR_RESPONSE_KEY)) {
                        asyncCallbackPair.onFailure(jSONObject.getString(GameClient.SERVER_RETURN_VALUE_KEY));
                        return;
                    }
                    String string = jSONObject.getString(GameClient.GAME_ID_KEY);
                    if (!string.equals(GameClient.this.GameId())) {
                        GameClient.this.Info("Incorrect game id in response: + " + string + ".");
                        return;
                    }
                    String string2 = jSONObject.getString(GameClient.INSTANCE_ID_KEY);
                    if (string2.equals("")) {
                        asyncCallbackPair.onSuccess(jSONObject.getJSONObject(GameClient.SERVER_RETURN_VALUE_KEY));
                        return;
                    }
                    if (string2.equals(GameClient.this.InstanceId())) {
                        GameClient.this.updateInstanceInfo(jSONObject);
                    } else {
                        if (!z && !GameClient.this.InstanceId().equals("")) {
                            GameClient.this.Info("Ignored server response to " + str + " for incorrect instance " + string2 + ".");
                            return;
                        }
                        GameClient.this.instance = new GameInstance(string2);
                        GameClient.this.updateInstanceInfo(jSONObject);
                        GameClient.this.InstanceIdChanged(string2);
                    }
                    asyncCallbackPair.onSuccess(jSONObject.getJSONObject(GameClient.SERVER_RETURN_VALUE_KEY));
                } catch (JSONException e) {
                    Log.w(GameClient.LOG_TAG, e);
                    asyncCallbackPair.onFailure("Failed to parse JSON response to command " + str);
                }
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(String str2) {
                Log.d(GameClient.LOG_TAG, "Posting to server failed for " + str + " with arguments " + list + "\n Failure message: " + str2);
                asyncCallbackPair.onFailure(str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateInstanceInfo(JSONObject jSONObject) throws JSONException {
        boolean z;
        String string = jSONObject.getString(LEADER_KEY);
        List<String> stringListFromJsonArray = JsonUtil.getStringListFromJsonArray(jSONObject.getJSONArray(PLAYERS_LIST_KEY));
        if (Leader().equals(string)) {
            z = false;
        } else {
            this.instance.setLeader(string);
            z = true;
        }
        PlayerListDelta players = this.instance.setPlayers(stringListFromJsonArray);
        if (players != PlayerListDelta.NO_CHANGE) {
            Iterator<String> it = players.getPlayersRemoved().iterator();
            while (it.hasNext()) {
                PlayerLeft(it.next());
            }
            Iterator<String> it2 = players.getPlayersAdded().iterator();
            while (it2.hasNext()) {
                PlayerJoined(it2.next());
            }
        }
        if (z) {
            NewLeader(Leader());
        }
    }
}
