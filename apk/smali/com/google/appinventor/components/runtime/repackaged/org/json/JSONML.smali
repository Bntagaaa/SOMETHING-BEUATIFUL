.class public Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONML;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parse(Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;ZLcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 70
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->more()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 73
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v0, v1, :cond_20

    .line 75
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    .line 76
    instance-of v1, v0, Ljava/lang/Character;

    const-string v2, "\'."

    const-string v3, "Misshaped tag"

    if-eqz v1, :cond_e

    .line 77
    sget-object v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v0, v1, :cond_3

    .line 81
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object p1

    .line 82
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->GT:Ljava/lang/Character;

    if-ne p2, v0, :cond_1

    return-object p1

    .line 88
    :cond_1
    const-string p1, "Misshaped close tag"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object p0

    throw p0

    .line 83
    :cond_2
    new-instance p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Expected a closing name instead of \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_3
    sget-object v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->BANG:Ljava/lang/Character;

    if-ne v0, v1, :cond_c

    .line 95
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_5

    .line 97
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    move-result v0

    if-ne v0, v1, :cond_4

    .line 98
    const-string v0, "-->"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->back()V

    goto :goto_0

    :cond_5
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_7

    .line 103
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    .line 104
    const-string v2, "CDATA"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    move-result v0

    if-ne v0, v1, :cond_6

    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    goto/16 :goto_0

    .line 109
    :cond_6
    const-string p1, "Expected \'CDATA[\'"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object p0

    throw p0

    :cond_7
    const/4 v0, 0x1

    .line 114
    :cond_8
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 117
    sget-object v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v1, v2, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_9
    sget-object v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_a

    add-int/lit8 v0, v0, -0x1

    :cond_a
    :goto_1
    if-gtz v0, :cond_8

    goto/16 :goto_0

    .line 116
    :cond_b
    const-string p1, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object p0

    throw p0

    .line 124
    :cond_c
    sget-object v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v0, v1, :cond_d

    .line 128
    const-string v0, "?>"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 130
    :cond_d
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object p0

    throw p0

    .line 136
    :cond_e
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 139
    check-cast v0, Ljava/lang/String;

    .line 140
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;-><init>()V

    .line 141
    new-instance v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;-><init>()V

    .line 142
    const-string v4, "tagName"

    if-eqz p1, :cond_f

    .line 143
    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    if-eqz p2, :cond_10

    .line 145
    invoke-virtual {p2, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    goto :goto_2

    .line 148
    :cond_f
    invoke-virtual {v2, v4, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    if-eqz p2, :cond_10

    .line 150
    invoke-virtual {p2, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    :cond_10
    :goto_2
    const/4 v5, 0x0

    :goto_3
    move-object v6, v5

    :goto_4
    if-nez v6, :cond_11

    .line 156
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v6

    :cond_11
    if-eqz v6, :cond_1e

    .line 161
    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_19

    if-eqz p1, :cond_12

    .line 183
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_12

    .line 184
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 189
    :cond_12
    sget-object v4, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v6, v4, :cond_14

    .line 190
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v0, v4, :cond_13

    if-nez p2, :cond_0

    if-eqz p1, :cond_16

    goto :goto_5

    .line 191
    :cond_13
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object p0

    throw p0

    .line 204
    :cond_14
    sget-object v4, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v6, v4, :cond_18

    .line 207
    invoke-static {p0, p1, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONML;->parse(Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;ZLcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 209
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    if-nez p1, :cond_15

    .line 214
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_15

    .line 215
    const-string v0, "childNodes"

    invoke-virtual {v2, v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    :cond_15
    if-nez p2, :cond_0

    if-eqz p1, :cond_16

    :goto_5
    return-object v1

    :cond_16
    return-object v2

    .line 210
    :cond_17
    new-instance p1, Ljava/lang/StringBuffer;

    const-string p2, "Mismatched \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\' and \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object p0

    throw p0

    .line 205
    :cond_18
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object p0

    throw p0

    .line 167
    :cond_19
    check-cast v6, Ljava/lang/String;

    if-nez p1, :cond_1b

    .line 168
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    const-string v7, "childNode"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    goto :goto_6

    .line 169
    :cond_1a
    const-string p1, "Reserved attribute."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object p0

    throw p0

    .line 171
    :cond_1b
    :goto_6
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    .line 172
    sget-object v8, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->EQ:Ljava/lang/Character;

    if-ne v7, v8, :cond_1d

    .line 173
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    .line 174
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_1c

    .line 177
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    goto/16 :goto_3

    .line 175
    :cond_1c
    const-string p1, "Missing value"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object p0

    throw p0

    .line 180
    :cond_1d
    const-string v8, ""

    invoke-virtual {v2, v6, v8}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    move-object v6, v7

    goto/16 :goto_4

    .line 159
    :cond_1e
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object p0

    throw p0

    .line 137
    :cond_1f
    new-instance p1, Ljava/lang/StringBuffer;

    const-string p2, "Bad tagName \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object p0

    throw p0

    :cond_20
    if-eqz p2, :cond_0

    .line 229
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_21

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_21
    invoke-virtual {p2, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    goto/16 :goto_0

    .line 71
    :cond_22
    const-string p1, "Bad XML"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object p0

    throw p0
.end method

.method public static toJSONArray(Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 268
    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONML;->parse(Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;ZLcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    return-object p0
.end method

.method public static toJSONArray(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 251
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONML;->toJSONArray(Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static toJSONObject(Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 286
    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONML;->parse(Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;ZLcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    return-object p0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 304
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONML;->toJSONObject(Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 327
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->noSpace(Ljava/lang/String;)V

    .line 329
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    .line 333
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    .line 334
    instance-of v4, v3, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    if-eqz v4, :cond_2

    .line 336
    check-cast v3, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 340
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 341
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 342
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 343
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->noSpace(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v3, v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const/16 v7, 0x20

    .line 346
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 347
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    const-string v5, "=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v5, 0x22

    .line 351
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    .line 360
    :goto_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 362
    const-string p0, "/>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    const/16 v5, 0x3e

    .line 365
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 367
    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/2addr v3, v2

    if-eqz v6, :cond_7

    .line 370
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 371
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 372
    :cond_5
    instance-of v7, v6, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    if-eqz v7, :cond_6

    .line 373
    check-cast v6, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONML;->toString(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 374
    :cond_6
    instance-of v7, v6, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    if-eqz v7, :cond_7

    .line 375
    check-cast v6, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONML;->toString(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    :goto_2
    if-lt v3, v4, :cond_4

    .line 379
    const-string p0, "</"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 384
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 397
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 409
    const-string v1, "tagName"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 413
    :cond_0
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->noSpace(Ljava/lang/String;)V

    .line 414
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3c

    .line 415
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 416
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 421
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "childNodes"

    if-eqz v4, :cond_2

    .line 422
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 423
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 424
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->noSpace(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const/16 v6, 0x20

    .line 427
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 428
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    const-string v4, "=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x22

    .line 432
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 439
    :cond_2
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_3

    .line 441
    const-string p0, "/>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    const/16 v1, 0x3e

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 445
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_8

    .line 447
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 449
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 450
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 451
    :cond_4
    instance-of v6, v5, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    if-eqz v6, :cond_5

    .line 452
    check-cast v5, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONML;->toString(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 453
    :cond_5
    instance-of v6, v5, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    if-eqz v6, :cond_6

    .line 454
    check-cast v5, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONML;->toString(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 456
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 460
    :cond_8
    const-string p0, "</"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 465
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
