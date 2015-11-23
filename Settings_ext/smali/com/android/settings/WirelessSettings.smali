.class public Lcom/android/settings_ext/WirelessSettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ext/search/k;


# static fields
.field public static final gG:Lcom/android/settings_ext/search/l;


# instance fields
.field private aU:Landroid/os/UserManager;

.field private i:Landroid/content/pm/PackageManager;

.field private mCm:Landroid/net/ConnectivityManager;

.field private zO:Lcom/android/settings_ext/t;

.field private zP:Landroid/preference/CheckBoxPreference;

.field private zQ:Lcom/android/settings_ext/nfc/NfcEnabler;

.field private zR:Landroid/nfc/NfcAdapter;

.field private zS:Lcom/android/settings_ext/fb;

.field private zT:Lcom/android/settings_ext/nfc/NfcSeRoute;

.field private zU:Landroid/telephony/TelephonyManager;

.field private zV:Lcom/android/settings_ext/AppListPreference;

.field private zW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 599
    new-instance v0, Lcom/android/settings_ext/hq;

    invoke-direct {v0}, Lcom/android/settings_ext/hq;-><init>()V

    sput-object v0, Lcom/android/settings_ext/WirelessSettings;->gG:Lcom/android/settings_ext/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/WirelessSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings_ext/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings_ext/WirelessSettings;->zW:Ljava/lang/String;

    return-object p1
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 272
    invoke-static {p0}, Lcom/android/settings_ext/df;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hA()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zU:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method private hz()V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zV:Lcom/android/settings_ext/AppListPreference;

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 222
    :cond_0
    const-string v0, "initSmsApplicationSetting:"

    invoke-direct {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->log(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v1

    .line 227
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 228
    new-array v2, v0, [Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    .line 230
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 231
    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 232
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 233
    goto :goto_1

    .line 234
    :cond_1
    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_2

    .line 237
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->zV:Lcom/android/settings_ext/AppListPreference;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ext/AppListPreference;->a([Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 266
    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method


# virtual methods
.method protected ao()I
    .locals 1

    .prologue
    .line 584
    const v0, 0x7f090938

    return v0
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 700
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    :goto_0
    return v0

    .line 702
    :catch_0
    move-exception v0

    .line 705
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0904af

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 150
    const-string v0, "onManageMobilePlanClick:"

    invoke-direct {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->log(Ljava/lang/String;)V

    .line 151
    iput-object v6, p0, Lcom/android/settings_ext/WirelessSettings;->zW:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/android/settings_ext/WirelessSettings;->zU:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 157
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_CARRIER_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 162
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 163
    const-string v0, "WirelessSettings"

    const-string v2, "Multiple matching carrier apps found, launching the first."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 173
    const-string v0, "android.intent.action.MAIN"

    const-string v2, "android.intent.category.APP_BROWSER"

    invoke-static {v0, v2}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 175
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 176
    const/high16 v1, 0x10400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onManageMobilePlanClick: message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->zW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->log(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, v4}, Lcom/android/settings_ext/WirelessSettings;->showDialog(I)V

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v1, "WirelessSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onManageMobilePlanClick: startActivity failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 185
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->zU:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 189
    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->zU:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 191
    const v1, 0x7f0904ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zW:Ljava/lang/String;

    goto :goto_1

    .line 194
    :cond_4
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zW:Ljava/lang/String;

    goto :goto_1

    .line 198
    :cond_5
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zW:Ljava/lang/String;

    goto :goto_1

    .line 202
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->zU:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-nez v1, :cond_7

    .line 204
    const v1, 0x7f0904b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zW:Ljava/lang/String;

    goto/16 :goto_1

    .line 207
    :cond_7
    const v1, 0x7f0904b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zW:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 573
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zO:Lcom/android/settings_ext/t;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 574
    const-string v0, "exit_ecm_result"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->zO:Lcom/android/settings_ext/t;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings_ext/WirelessSettings;->zP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/settings_ext/t;->a(ZZ)V

    .line 579
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 580
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 288
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 289
    if-eqz p1, :cond_0

    .line 290
    const-string v0, "mManageMobilePlanMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zW:Ljava/lang/String;

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: mManageMobilePlanMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->zW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->log(Ljava/lang/String;)V

    .line 294
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 295
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zU:Landroid/telephony/TelephonyManager;

    .line 296
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->i:Landroid/content/pm/PackageManager;

    .line 297
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->aU:Landroid/os/UserManager;

    .line 299
    const v0, 0x7f0600a8

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->addPreferencesFromResource(I)V

    .line 301
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_16

    move v5, v6

    .line 303
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 304
    const-string v0, "toggle_airplane"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zP:Landroid/preference/CheckBoxPreference;

    .line 305
    const-string v0, "toggle_nfc"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 306
    const-string v1, "android_beam_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 308
    const-string v2, "se_route"

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 310
    const-string v3, "toggle_nsd"

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 312
    new-instance v4, Lcom/android/settings_ext/t;

    iget-object v10, p0, Lcom/android/settings_ext/WirelessSettings;->zP:Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, v9, v10}, Lcom/android/settings_ext/t;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v4, p0, Lcom/android/settings_ext/WirelessSettings;->zO:Lcom/android/settings_ext/t;

    .line 315
    new-instance v10, Lcom/android/settings_ext/nfc/NfcEnabler;

    sget-boolean v4, Lmiui/os/Build;->IS_MITHREE:Z

    if-eqz v4, :cond_17

    move-object v4, v2

    :goto_1
    invoke-direct {v10, v9, v0, v1, v4}, Lcom/android/settings_ext/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;Landroid/preference/ListPreference;)V

    iput-object v10, p0, Lcom/android/settings_ext/WirelessSettings;->zQ:Lcom/android/settings_ext/nfc/NfcEnabler;

    .line 318
    const-string v4, "sms_application"

    invoke-virtual {p0, v4}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/AppListPreference;

    iput-object v4, p0, Lcom/android/settings_ext/WirelessSettings;->zV:Lcom/android/settings_ext/AppListPreference;

    .line 319
    iget-object v4, p0, Lcom/android/settings_ext/WirelessSettings;->zV:Lcom/android/settings_ext/AppListPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings_ext/AppListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v10, p0, Lcom/android/settings_ext/WirelessSettings;->zV:Lcom/android/settings_ext/AppListPreference;

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 323
    iput-object v8, p0, Lcom/android/settings_ext/WirelessSettings;->zV:Lcom/android/settings_ext/AppListPreference;

    .line 325
    invoke-direct {p0}, Lcom/android/settings_ext/WirelessSettings;->hz()V

    .line 328
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 331
    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_toggleable_radios"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 335
    if-nez v5, :cond_18

    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x11090002

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_18

    move v3, v6

    .line 339
    :goto_2
    if-eqz v3, :cond_1

    iget-object v10, p0, Lcom/android/settings_ext/WirelessSettings;->aU:Landroid/os/UserManager;

    const-string v11, "no_config_mobile_networks"

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 342
    const-string v10, "wimax_settings"

    invoke-virtual {p0, v10}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 343
    if-eqz v10, :cond_2

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 353
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    const-string v3, "wifi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 354
    :cond_3
    const-string v3, "vpn_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v10, "toggle_airplane"

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 357
    :cond_4
    if-nez v5, :cond_5

    iget-object v3, p0, Lcom/android/settings_ext/WirelessSettings;->aU:Landroid/os/UserManager;

    const-string v10, "no_config_vpn"

    invoke-virtual {v3, v10}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 358
    :cond_5
    const-string v3, "vpn_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/WirelessSettings;->K(Ljava/lang/String;)V

    .line 362
    :cond_6
    if-eqz v4, :cond_7

    const-string v3, "bluetooth"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 368
    :cond_7
    const-string v3, "virtual_sim"

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 369
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "com.miui.virtualsim"

    invoke-virtual {p0, v10, v11}, Lcom/android/settings_ext/WirelessSettings;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 370
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 371
    const-string v11, "virtual_sim_category"

    invoke-virtual {p0, v11}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 372
    invoke-virtual {v10, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 377
    :cond_8
    if-eqz v4, :cond_9

    const-string v3, "nfc"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 378
    :cond_9
    const-string v3, "toggle_nfc"

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v4, "toggle_airplane"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 379
    const-string v3, "android_beam_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v4, "toggle_airplane"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 383
    :cond_a
    invoke-static {v9}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/WirelessSettings;->zR:Landroid/nfc/NfcAdapter;

    .line 384
    iget-object v3, p0, Lcom/android/settings_ext/WirelessSettings;->zR:Landroid/nfc/NfcAdapter;

    if-nez v3, :cond_1b

    .line 388
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 389
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 390
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 391
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 392
    const-string v0, "nfc_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 393
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_b

    .line 394
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 397
    :cond_b
    iput-object v8, p0, Lcom/android/settings_ext/WirelessSettings;->zQ:Lcom/android/settings_ext/nfc/NfcEnabler;

    .line 410
    :goto_4
    if-nez v5, :cond_c

    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/hl;->N(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->aU:Landroid/os/UserManager;

    const-string v1, "no_config_mobile_networks"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 412
    :cond_c
    const-string v0, "mobile_network_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->K(Ljava/lang/String;)V

    .line 413
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->K(Ljava/lang/String;)V

    .line 417
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 420
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    and-int/2addr v0, v1

    .line 422
    if-nez v0, :cond_e

    .line 423
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_e

    .line 425
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->K(Ljava/lang/String;)V

    .line 430
    :cond_e
    invoke-direct {p0}, Lcom/android/settings_ext/WirelessSettings;->hA()Z

    move-result v0

    if-nez v0, :cond_f

    .line 431
    const-string v0, "sms_application"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->K(Ljava/lang/String;)V

    .line 435
    :cond_f
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->i:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.type.television"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 436
    const-string v0, "toggle_airplane"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->K(Ljava/lang/String;)V

    .line 440
    :cond_10
    const-string v0, "proxy_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 441
    const-string v0, "device_policy"

    invoke-virtual {v9, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 444
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 445
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1d

    move v0, v6

    :goto_5
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 448
    const-string v0, "connectivity"

    invoke-virtual {v9, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 450
    if-nez v5, :cond_11

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->aU:Landroid/os/UserManager;

    const-string v2, "no_config_tethering"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 452
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "tether_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 463
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 468
    if-eqz v0, :cond_12

    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->i:Landroid/content/pm/PackageManager;

    const-string v2, "com.android.cellbroadcastreceiver"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    move v0, v7

    .line 478
    :cond_12
    :goto_7
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    and-int/2addr v0, v1

    .line 479
    if-nez v5, :cond_13

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->aU:Landroid/os/UserManager;

    const-string v1, "no_config_cell_broadcasts"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 481
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 482
    const-string v1, "cell_broadcast_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 483
    if-eqz v1, :cond_14

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 487
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 489
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    .line 490
    const-string v0, "wfd_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 491
    const-string v2, "support_nvdia_wifi_display"

    invoke-static {v2, v7}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_15

    if-eqz v0, :cond_15

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    if-nez v1, :cond_15

    .line 495
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 498
    :cond_15
    return-void

    :cond_16
    move v5, v7

    .line 301
    goto/16 :goto_0

    :cond_17
    move-object v4, v8

    .line 315
    goto/16 :goto_1

    :cond_18
    move v3, v7

    .line 335
    goto/16 :goto_2

    .line 345
    :cond_19
    if-eqz v4, :cond_1a

    const-string v10, "wimax"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    if-eqz v3, :cond_2

    .line 347
    :cond_1a
    const-string v3, "wimax_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 348
    const-string v10, "toggle_airplane"

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 400
    :cond_1b
    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-eqz v0, :cond_1c

    .line 401
    new-instance v0, Lcom/android/settings_ext/nfc/NfcSeRoute;

    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->zR:Landroid/nfc/NfcAdapter;

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings_ext/nfc/NfcSeRoute;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Landroid/preference/ListPreference;)V

    iput-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zT:Lcom/android/settings_ext/nfc/NfcSeRoute;

    goto/16 :goto_4

    .line 403
    :cond_1c
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    :cond_1d
    move v0, v7

    .line 445
    goto/16 :goto_5

    .line 454
    :cond_1e
    const-string v1, "tether_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 455
    invoke-static {v0}, Lcom/android/settings_ext/hl;->b(Landroid/net/ConnectivityManager;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 458
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/TetherSettings;->K(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1f

    :goto_8
    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_1f
    move v6, v7

    goto :goto_8

    .line 474
    :catch_0
    move-exception v0

    move v0, v7

    .line 475
    goto/16 :goto_7
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/WirelessSettings;->log(Ljava/lang/String;)V

    .line 245
    packed-switch p1, :pswitch_data_0

    .line 262
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 247
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->zW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ext/hp;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/hp;-><init>(Lcom/android/settings_ext/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 550
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 554
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zO:Lcom/android/settings_ext/t;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zO:Lcom/android/settings_ext/t;

    invoke-virtual {v0}, Lcom/android/settings_ext/t;->pause()V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zT:Lcom/android/settings_ext/nfc/NfcSeRoute;

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zT:Lcom/android/settings_ext/nfc/NfcSeRoute;

    invoke-virtual {v0}, Lcom/android/settings_ext/nfc/NfcSeRoute;->pause()V

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zQ:Lcom/android/settings_ext/nfc/NfcEnabler;

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zQ:Lcom/android/settings_ext/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ext/nfc/NfcEnabler;->pause()V

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zS:Lcom/android/settings_ext/fb;

    if-eqz v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zS:Lcom/android/settings_ext/fb;

    invoke-virtual {v0}, Lcom/android/settings_ext/fb;->pause()V

    .line 567
    :cond_3
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zV:Lcom/android/settings_ext/AppListPreference;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 590
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 591
    const/4 v0, 0x1

    .line 593
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick: preference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ext/WirelessSettings;->log(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->zP:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ext/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 145
    :goto_0
    return v0

    .line 134
    :cond_0
    const-string v1, "manage_mobile_plan"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ext/WirelessSettings;->hy()V

    .line 145
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0

    .line 137
    :cond_2
    const-string v1, "virtual_sim"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 138
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 139
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.miui.virtualsim"

    const-string v4, "com.miui.virtualsim.ui.MainActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 520
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 524
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zO:Lcom/android/settings_ext/t;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zO:Lcom/android/settings_ext/t;

    invoke-virtual {v0}, Lcom/android/settings_ext/t;->resume()V

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zT:Lcom/android/settings_ext/nfc/NfcSeRoute;

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zT:Lcom/android/settings_ext/nfc/NfcSeRoute;

    invoke-virtual {v0}, Lcom/android/settings_ext/nfc/NfcSeRoute;->resume()V

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zQ:Lcom/android/settings_ext/nfc/NfcEnabler;

    if-eqz v0, :cond_2

    .line 532
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zQ:Lcom/android/settings_ext/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ext/nfc/NfcEnabler;->resume()V

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zS:Lcom/android/settings_ext/fb;

    if-eqz v0, :cond_3

    .line 535
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zS:Lcom/android/settings_ext/fb;

    invoke-virtual {v0}, Lcom/android/settings_ext/fb;->resume()V

    .line 537
    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 541
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 543
    iget-object v0, p0, Lcom/android/settings_ext/WirelessSettings;->zW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/settings_ext/WirelessSettings;->zW:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 502
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onStart()V

    .line 504
    invoke-direct {p0}, Lcom/android/settings_ext/WirelessSettings;->hz()V

    .line 505
    return-void
.end method
