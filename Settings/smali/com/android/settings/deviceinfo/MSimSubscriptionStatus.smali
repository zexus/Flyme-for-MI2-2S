.class public Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;
.super Landroid/preference/PreferenceActivity;
.source "MSimSubscriptionStatus.java"


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mDataState:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field mServiceState:Landroid/telephony/ServiceState;

.field private mSigStrength:Landroid/preference/Preference;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "operator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "roaming_state"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "esn_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "latest_area_info"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mDataState:I

    .line 124
    new-instance v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$1;-><init>(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateServiceState()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mDataState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateDataState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateNetworkType()V

    return-void
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 283
    new-instance v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;-><init>(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;I)V

    .line 301
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 277
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    :cond_0
    return-void
.end method

.method private setIMEISummaryText(Ljava/lang/String;)V
    .locals 4
    .param p1, "imeiStr"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xe

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 232
    .local v0, "enable14DigitImei":Z
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 234
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 236
    :cond_0
    const-string v1, "imei"

    invoke-direct {p0, v1, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    sget-object p2, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->sUnknown:Ljava/lang/String;

    .line 322
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    :cond_1
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 389
    if-eqz p1, :cond_0

    .line 390
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 3

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "display":Ljava/lang/String;
    iget v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mDataState:I

    packed-switch v1, :pswitch_data_0

    .line 355
    :goto_0
    const-string v1, "data_state"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void

    .line 342
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    goto :goto_0

    .line 345
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    goto :goto_0

    .line 348
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    goto :goto_0

    .line 351
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 4

    .prologue
    .line 329
    const/4 v1, 0x0

    .line 330
    .local v1, "networktype":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    .line 331
    .local v0, "networkType":I
    if-eqz v0, :cond_0

    .line 332
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 334
    :cond_0
    const-string v2, "network_type"

    invoke-direct {p0, v2, v1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private updateServiceState()V
    .locals 5

    .prologue
    .line 359
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "display":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 364
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .line 377
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :goto_1
    const-string v2, "operator_name"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .end local v1    # "state":I
    :cond_0
    return-void

    .line 366
    .restart local v1    # "state":I
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    goto :goto_0

    .line 370
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 371
    goto :goto_0

    .line 373
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_1
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 364
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iput-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 149
    const v8, 0x7f06001b

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->addPreferencesFromResource(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "phone"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v10

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 154
    .local v6, "phoneId":I
    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 155
    const-string v8, "Status"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OnCreate phoneId ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 158
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v10, 0x141

    invoke-virtual {v8, v9, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    .line 163
    sget-object v8, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->sUnknown:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 164
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f09000d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->sUnknown:Ljava/lang/String;

    .line 167
    :cond_0
    const-string v8, "signal_strength"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 170
    sget-object v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_5

    aget-object v4, v0, v2

    .line 171
    .local v4, "key":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_1
    const-string v8, "ro.config.multimode_cdma"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CDMA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 177
    :cond_2
    const-string v8, "prl_version"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_1
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CDMA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 186
    const-string v8, "esn_number"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v8, "meid_number"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v8, "min_number"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0009

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 190
    const-string v8, "min_number"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    const v9, 0x7f09037e

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 193
    :cond_3
    const-string v8, "imei_sv"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 195
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 197
    const-string v8, "icc_id"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "imeiStr":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setIMEISummaryText(Ljava/lang/String;)V

    .line 219
    .end local v3    # "imeiStr":Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, "rawNumber":Ljava/lang/String;
    const/4 v1, 0x0

    .line 221
    .local v1, "formattedNumber":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 222
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    :cond_4
    const-string v8, "number"

    invoke-direct {p0, v8, v1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .end local v1    # "formattedNumber":Ljava/lang/String;
    .end local v7    # "rawNumber":Ljava/lang/String;
    :cond_5
    return-void

    .line 180
    :cond_6
    const-string v8, "prl_version"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 203
    :cond_7
    const-string v8, "imei"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 204
    const-string v8, "icc_id"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2

    .line 207
    :cond_8
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 208
    .restart local v3    # "imeiStr":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setIMEISummaryText(Ljava/lang/String;)V

    .line 209
    const-string v8, "imei_sv"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v8, "esn_number"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 214
    const-string v8, "meid_number"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 215
    const-string v8, "min_number"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 216
    const-string v8, "icc_id"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 263
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 241
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x141

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateSignalStrength()V

    .line 248
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateServiceState()V

    .line 249
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateDataState()V

    .line 250
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, "getLatestIntent":Landroid/content/Intent;
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 259
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 395
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v4, :cond_4

    .line 396
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 397
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 399
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 401
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 404
    :cond_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v2

    .line 405
    .local v2, "signalDbm":I
    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    .line 407
    :cond_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 408
    .local v1, "signalAsu":I
    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    .line 410
    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090034

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090035

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 415
    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v1    # "signalAsu":I
    .end local v2    # "signalDbm":I
    .end local v3    # "state":I
    :cond_4
    return-void
.end method
