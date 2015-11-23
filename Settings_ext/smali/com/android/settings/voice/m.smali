.class final Lcom/android/settings_ext/voice/m;
.super Lcom/android/settings_ext/search/a;
.source "VoiceInputSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/settings_ext/search/a;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Lcom/android/settings_ext/search/n;
    .locals 3

    .prologue
    .line 230
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 231
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 235
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->key:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 237
    iput-object p3, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 239
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Ljava/util/List;
    .locals 11

    .prologue
    const/16 v10, 0x80

    const/4 v1, 0x0

    .line 187
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 189
    const v0, 0x7f090727

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 191
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 192
    const-string v2, "voice_service_preference_section_title"

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->key:Ljava/lang/String;

    .line 193
    const v2, 0x7f090728

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 194
    iput-object v4, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 195
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.service.voice.VoiceInteractionService"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 202
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v2, v1

    .line 203
    :goto_0
    if-ge v2, v6, :cond_1

    .line 204
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 205
    new-instance v7, Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v7, v8, v9}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 207
    invoke-virtual {v7}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 203
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 210
    :cond_0
    invoke-direct {p0, p1, v0, v4}, Lcom/android/settings_ext/voice/m;->a(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Lcom/android/settings_ext/search/n;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.speech.RecognitionService"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 218
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 219
    :goto_2
    if-ge v1, v5, :cond_2

    .line 220
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 221
    invoke-direct {p0, p1, v0, v4}, Lcom/android/settings_ext/voice/m;->a(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Lcom/android/settings_ext/search/n;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 224
    :cond_2
    return-object v3
.end method
