.class public Lcom/android/settings/AccessControlSetApp;
.super Lmiui/preference/PreferenceActivity;
.source "AccessControlSetApp.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final o:Ljava/util/HashSet;


# instance fields
.field private b:Landroid/security/ChooseLockSettingsHelper;

.field private i:Landroid/content/pm/PackageManager;

.field private j:Landroid/os/HandlerThread;

.field private k:Landroid/os/Handler;

.field private l:Z

.field private m:Lmiui/security/SecurityManager;

.field private mHandler:Landroid/os/Handler;

.field private final n:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    .line 71
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.soundrecorder"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.stk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.thememanager"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.deskclock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.gallery3d"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.updater"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.fileexplorer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.apps.tag"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.miui.networkassistant"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.providers.downloads.ui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.google.android.talk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.miui.camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.miui.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.miui.backup"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.miui.antispam"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.miui.video"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "net.cactii.flash2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.gamecenter.pad"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.google.android.music"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.plus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.facebook.orca"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.payment"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.mipay.wallet"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.jr"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.htc.album"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->l:Z

    .line 49
    new-instance v0, Lcom/android/settings/e;

    invoke-direct {v0, p0}, Lcom/android/settings/e;-><init>(Lcom/android/settings/AccessControlSetApp;)V

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp;->n:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/AccessControlSetApp;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp;->i:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;Z)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp;->k:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/g;-><init>(Lcom/android/settings/AccessControlSetApp;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method

.method static synthetic b(Lcom/android/settings/AccessControlSetApp;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/AccessControlSetApp;->h()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/AccessControlSetApp;)Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp;->n:Ljava/util/Comparator;

    return-object v0
.end method

.method private h()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 151
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessControlSetApp;->addPreferencesFromResource(I)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 158
    if-eqz v0, :cond_0

    .line 162
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 163
    and-int/lit8 v4, v4, 0x1

    if-ne v4, v7, :cond_1

    sget-object v4, Lcom/android/settings/AccessControlSetApp;->o:Ljava/util/HashSet;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    :cond_1
    iget-object v4, p0, Lcom/android/settings/AccessControlSetApp;->m:Lmiui/security/SecurityManager;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 169
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_3
    invoke-direct {p0, v1, v7}, Lcom/android/settings/AccessControlSetApp;->a(Ljava/util/ArrayList;Z)V

    .line 175
    invoke-direct {p0, v2, v6}, Lcom/android/settings/AccessControlSetApp;->a(Ljava/util/ArrayList;Z)V

    .line 176
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 241
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 242
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->l:Z

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessControlSetApp;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 119
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const-string v0, "security"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessControlSetApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp;->m:Lmiui/security/SecurityManager;

    .line 122
    if-eqz p1, :cond_0

    .line 123
    const-string v0, "password_confirmed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->l:Z

    .line 126
    :cond_0
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp;->b:Landroid/security/ChooseLockSettingsHelper;

    .line 127
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->l:Z

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessControlSetApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp;->i:Landroid/content/pm/PackageManager;

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AccessControlSetApp.Loader"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp;->j:Landroid/os/HandlerThread;

    .line 134
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/AccessControlSetApp;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp;->k:Landroid/os/Handler;

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp;->mHandler:Landroid/os/Handler;

    .line 137
    iget-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->l:Z

    if-eqz v0, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/android/settings/AccessControlSetApp;->h()V

    .line 147
    :goto_0
    return-void

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/f;

    invoke-direct {v1, p0}, Lcom/android/settings/f;-><init>(Lcom/android/settings/AccessControlSetApp;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 252
    check-cast p2, Ljava/lang/Boolean;

    .line 253
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/android/settings/AccessControlSetApp;->m:Lmiui/security/SecurityManager;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lmiui/security/SecurityManager;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V

    .line 255
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/AccessControlSetApp;->m:Lmiui/security/SecurityManager;

    invoke-virtual {v1, v0}, Lmiui/security/SecurityManager;->removeAccessControlPass(Ljava/lang/String;)V

    .line 256
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 236
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/AccessControlSetApp;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->l:Z

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AccessControlSetApp;->startActivityForResult(Landroid/content/Intent;I)V

    .line 221
    :goto_0
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onStart()V

    .line 222
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->l:Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onStop()V

    .line 227
    iget-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->l:Z

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->l:Z

    .line 230
    :cond_0
    return-void
.end method
