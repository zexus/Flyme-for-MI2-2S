.class public Lmiui/hybrid/feature/Contact;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lmiui/hybrid/HybridFeature;


# static fields
.field private static final ACTION_LOOKUP:Ljava/lang/String; = "lookup"

.field private static final ACTION_PICK_PHONE_NUMBER:Ljava/lang/String; = "pickPhoneNumber"

.field private static final KEY_CONTACT_LIST:Ljava/lang/String; = "contactList"

.field private static final KEY_DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field private static final KEY_PHONE_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_PHONE_NUMBER:Ljava/lang/String; = "number"

.field private static final KEY_PHONE_TYPE:Ljava/lang/String; = "type"

.field private static final PROJECTION_PHONE:[Ljava/lang/String;

.field private static final REQUEST_CODE_PICK:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data3"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/hybrid/feature/Contact;->PROJECTION_PHONE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p0, p1}, Lmiui/hybrid/feature/Contact;->getContactsByPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 60
    invoke-static {p0, p1}, Lmiui/hybrid/feature/Contact;->getContactPhoneNumber(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static getContactPhoneNumber(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 222
    sget-object v2, Lmiui/hybrid/feature/Contact;->PROJECTION_PHONE:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 224
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 225
    .local v8, "result":Lorg/json/JSONObject;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    :try_start_0
    const-string v0, "displayName"

    const-string v1, "display_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v0, "number"

    const-string v1, "data4"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v0, "type"

    const-string v1, "data2"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v0, "label"

    const-string v1, "data3"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    if-eqz v6, :cond_0

    .line 239
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 244
    :cond_0
    :goto_0
    return-object v8

    .line 235
    :catch_0
    move-exception v7

    .line 236
    .local v7, "e":Lorg/json/JSONException;
    :try_start_1
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    if-eqz v6, :cond_0

    .line 239
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 238
    .end local v7    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 239
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method private static getContactsByPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 126
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 128
    .local v7, "contactList":Lorg/json/JSONArray;
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 130
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lmiui/hybrid/feature/Contact;->PROJECTION_PHONE:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 133
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 135
    .local v6, "contact":Lorg/json/JSONObject;
    const-string v0, "displayName"

    const-string v2, "display_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v0, "number"

    const-string v2, "data4"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v0, "type"

    const-string v2, "data2"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v0, "label"

    const-string v2, "data3"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 145
    .end local v6    # "contact":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    .line 146
    .local v9, "e":Lorg/json/JSONException;
    :try_start_1
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    if-eqz v8, :cond_0

    .line 149
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 153
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 156
    .local v10, "result":Lorg/json/JSONObject;
    :try_start_2
    const-string v0, "contactList"

    invoke-virtual {v10, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 161
    :goto_2
    return-object v10

    .line 148
    .end local v10    # "result":Lorg/json/JSONObject;
    :cond_1
    if-eqz v8, :cond_0

    .line 149
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 148
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 149
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 157
    .restart local v10    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v9

    .line 158
    .restart local v9    # "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private lookupContact(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 8
    .param p1, "request"    # Lmiui/hybrid/Request;

    .prologue
    .line 99
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getRawParams()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, "param":Lorg/json/JSONObject;
    const-string v5, "phoneNumber"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/hybrid/feature/Contact;->normalizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 106
    .local v3, "phoneNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 108
    .local v4, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Lmiui/hybrid/feature/Contact$1;

    invoke-direct {v1, p0, v4, p1}, Lmiui/hybrid/feature/Contact$1;-><init>(Lmiui/hybrid/feature/Contact;Landroid/content/ContentResolver;Lmiui/hybrid/Request;)V

    .line 120
    .local v1, "lookupContactTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Lorg/json/JSONObject;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 121
    const/4 v5, 0x0

    .end local v1    # "lookupContactTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Lorg/json/JSONObject;>;"
    .end local v2    # "param":Lorg/json/JSONObject;
    .end local v3    # "phoneNumber":Ljava/lang/String;
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    return-object v5

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 103
    new-instance v5, Lmiui/hybrid/Response;

    const/16 v6, 0xcc

    const-string v7, "param not valid"

    invoke-direct {v5, v6, v7}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static normalizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 165
    const-string v0, ""

    .line 166
    .local v0, "normalizedPhoneNumber":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v1

    .line 168
    .local v1, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 171
    .end local v1    # "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_0
    return-object v0
.end method

.method private pickPhoneNumber(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 6
    .param p1, "request"    # Lmiui/hybrid/Request;

    .prologue
    .line 175
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v3

    .line 176
    .local v3, "nativeInterface":Lmiui/hybrid/NativeInterface;
    invoke-virtual {v3}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 178
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Lmiui/hybrid/feature/Contact$2;

    invoke-direct {v2, p0, v3, p1}, Lmiui/hybrid/feature/Contact$2;-><init>(Lmiui/hybrid/feature/Contact;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Request;)V

    .line 213
    .local v2, "l":Lmiui/hybrid/LifecycleListener;
    invoke-virtual {v3, v2}, Lmiui/hybrid/NativeInterface;->addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    .line 215
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 216
    .local v1, "intent":Landroid/content/Intent;
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 218
    const/4 v4, 0x0

    return-object v4
.end method


# virtual methods
.method public getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;
    .locals 2
    .param p1, "request"    # Lmiui/hybrid/Request;

    .prologue
    .line 249
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lookup"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pickPhoneNumber"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    sget-object v0, Lmiui/hybrid/HybridFeature$Mode;->CALLBACK:Lmiui/hybrid/HybridFeature$Mode;

    .line 254
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 3
    .param p1, "request"    # Lmiui/hybrid/Request;

    .prologue
    .line 86
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pickPhoneNumber"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Contact;->pickPhoneNumber(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lookup"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Contact;->lookupContact(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xcc

    const-string v2, "no such action"

    invoke-direct {v0, v1, v2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method
