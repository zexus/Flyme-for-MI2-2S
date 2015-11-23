.class public Lcom/android/settings_ext/ApnEditor;
.super Lmiui/preference/PreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static U:Ljava/lang/String;

.field private static final aN:[Ljava/lang/String;


# instance fields
.field private V:Landroid/preference/EditTextPreference;

.field private W:Landroid/preference/EditTextPreference;

.field private aA:Landroid/preference/EditTextPreference;

.field private aB:Landroid/preference/EditTextPreference;

.field private aC:Landroid/preference/ListPreference;

.field private aD:Landroid/preference/EditTextPreference;

.field private aE:Landroid/preference/ListPreference;

.field private aF:Landroid/preference/ListPreference;

.field private aG:Landroid/preference/CheckBoxPreference;

.field private aH:Landroid/preference/ListPreference;

.field private aI:Landroid/preference/ListPreference;

.field private aJ:Landroid/preference/EditTextPreference;

.field aK:Ljava/lang/String;

.field aL:Ljava/lang/String;

.field aM:Z

.field private as:Landroid/preference/EditTextPreference;

.field private at:Landroid/preference/EditTextPreference;

.field private au:Landroid/preference/EditTextPreference;

.field private av:Landroid/preference/EditTextPreference;

.field private aw:Landroid/preference/EditTextPreference;

.field private ax:Landroid/preference/EditTextPreference;

.field private ay:Landroid/preference/EditTextPreference;

.field private az:Landroid/preference/EditTextPreference;

.field mCursor:Landroid/database/Cursor;

.field private mFirstTime:Z

.field private mRes:Landroid/content/res/Resources;

.field private mSlotId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const-class v0, Lcom/android/settings_ext/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/ApnEditor;->TAG:Ljava/lang/String;

    .line 117
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "mvno_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "mvno_match_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ext/ApnEditor;->aN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private C()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    iget-boolean v0, p0, Lcom/android/settings_ext/ApnEditor;->mFirstTime:Z

    if-eqz v0, :cond_1

    .line 279
    iput-boolean v2, p0, Lcom/android/settings_ext/ApnEditor;->mFirstTime:Z

    .line 281
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->as:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->at:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->au:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->W:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->av:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->V:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aw:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aA:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0xc

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aB:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0xd

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->ax:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->ay:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x9

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->az:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0xa

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aD:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0xf

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 294
    iget-boolean v0, p0, Lcom/android/settings_ext/ApnEditor;->aM:Z

    if-eqz v0, :cond_0

    .line 299
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    const-string v0, "gsm.apn.sim.operator.numeric"

    iget v3, p0, Lcom/android/settings_ext/ApnEditor;->mSlotId:I

    int-to-long v4, v3

    const-string v3, ""

    invoke-static {v0, v4, v5, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_0

    .line 309
    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v4, p0, Lcom/android/settings_ext/ApnEditor;->ay:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 314
    iget-object v4, p0, Lcom/android/settings_ext/ApnEditor;->az:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 315
    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aK:Ljava/lang/String;

    .line 316
    iput-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aL:Ljava/lang/String;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v3, 0xe

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 320
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 321
    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aC:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 326
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aE:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x10

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aF:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x13

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 328
    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aG:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x11

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 329
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aH:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x12

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aI:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x14

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aJ:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aJ:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x15

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->as:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->as:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->at:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->at:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->au:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->au:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->W:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->W:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->av:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->av:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->V:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->V:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aw:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aw:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aA:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aA:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aB:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aB:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->ax:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->ax:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->ay:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->ay:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->az:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->az:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aD:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aD:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aC:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_5

    .line 351
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 352
    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aC:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 354
    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 355
    iget-object v4, p0, Lcom/android/settings_ext/ApnEditor;->aC:Landroid/preference/ListPreference;

    aget-object v0, v3, v0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 360
    :goto_3
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aE:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aE:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ext/ApnEditor;->aE:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ext/ApnEditor;->a(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aF:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aF:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ext/ApnEditor;->aF:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ext/ApnEditor;->a(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aH:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aH:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aI:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aI:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aJ:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aJ:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 371
    if-eqz v0, :cond_6

    .line 372
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aG:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 376
    :goto_4
    return-void

    .line 303
    :cond_2
    const-string v0, "gsm.apn.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aC:Landroid/preference/ListPreference;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 328
    goto/16 :goto_2

    .line 357
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aC:Landroid/preference/ListPreference;

    sget-object v3, Lcom/android/settings_ext/ApnEditor;->U:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 374
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aG:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_4
.end method

.method private D()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 634
    const/4 v0, 0x0

    .line 636
    iget-object v1, p0, Lcom/android/settings_ext/ApnEditor;->as:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 637
    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->at:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 638
    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->ay:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 639
    iget-object v4, p0, Lcom/android/settings_ext/ApnEditor;->az:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 641
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_1

    .line 642
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09046a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 651
    :cond_0
    :goto_0
    return-object v0

    .line 643
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_2

    .line 644
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09046b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 645
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 646
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09046c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 647
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xfffe

    and-int/2addr v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09046d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private E()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 684
    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 685
    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->finish()V

    .line 686
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 384
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 385
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 392
    :goto_0
    return-object v0

    .line 388
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 390
    :try_start_0
    aget-object v0, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 701
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 702
    :cond_0
    sget-object p1, Lcom/android/settings_ext/ApnEditor;->U:Ljava/lang/String;

    .line 704
    :cond_1
    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 709
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings_ext/ApnEditor;->U:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    :cond_0
    const-string p1, ""

    .line 712
    :cond_1
    return-object p1
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 398
    iget-object v1, p0, Lcom/android/settings_ext/ApnEditor;->aH:Landroid/preference/ListPreference;

    invoke-virtual {v1, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 399
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 406
    :goto_0
    return-object v0

    .line 402
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 404
    :try_start_0
    aget-object v0, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 412
    iget-object v1, p0, Lcom/android/settings_ext/ApnEditor;->aI:Landroid/preference/ListPreference;

    invoke-virtual {v1, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 413
    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->aI:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    .line 415
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 440
    :goto_0
    return-object v0

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 419
    aget-object v3, v2, v1

    const-string v4, "None"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 420
    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aJ:Landroid/preference/EditTextPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 438
    :goto_1
    :try_start_0
    aget-object v0, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aJ:Landroid/preference/EditTextPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_1

    .line 439
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 689
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 690
    :cond_0
    sget-object v0, Lcom/android/settings_ext/ApnEditor;->U:Ljava/lang/String;

    .line 696
    :goto_0
    return-object v0

    .line 692
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    .line 693
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 694
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 693
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 696
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method


# virtual methods
.method F()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 729
    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 753
    :cond_0
    :goto_0
    return v0

    .line 732
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->as:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->at:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->au:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->W:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->av:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->V:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->aw:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->aA:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0xc

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->aB:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0xd

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->ax:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->ay:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aL:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->az:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aK:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->aD:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0xf

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->aE:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x10

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->aF:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x13

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->aG:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x11

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    move v2, v1

    :goto_1
    xor-int/2addr v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->aI:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x14

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->aJ:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x15

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->aH:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x12

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 751
    goto/16 :goto_0

    :cond_2
    move v2, v0

    .line 732
    goto :goto_1
.end method

.method e(Z)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 557
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->as:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 558
    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->at:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 559
    iget-object v4, p0, Lcom/android/settings_ext/ApnEditor;->ay:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 560
    iget-object v5, p0, Lcom/android/settings_ext/ApnEditor;->az:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 562
    invoke-direct {p0}, Lcom/android/settings_ext/ApnEditor;->D()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    if-nez p1, :cond_0

    .line 563
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/ApnEditor;->showDialog(I)V

    move v0, v1

    .line 630
    :goto_0
    return v0

    .line 567
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_1

    .line 568
    sget-object v0, Lcom/android/settings_ext/ApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 570
    goto :goto_0

    .line 574
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v6, p0, Lcom/android/settings_ext/ApnEditor;->aM:Z

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v2, :cond_2

    .line 575
    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v1

    .line 576
    goto :goto_0

    .line 579
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 583
    const-string v6, "name"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0907b0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v0, "apn"

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v0, "proxy"

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->au:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v0, "port"

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->W:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v0, "mmsproxy"

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aA:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v0, "mmsport"

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aB:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v0, "user"

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->av:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v0, "server"

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->V:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v0, "password"

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aw:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v0, "mmsc"

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->ax:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aC:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_4

    .line 597
    const-string v3, "authtype"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 600
    :cond_4
    const-string v0, "protocol"

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aE:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v0, "roaming_protocol"

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aF:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v0, "type"

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aD:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v0, "mcc"

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v0, "mnc"

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v0, "numeric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aK:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aL:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 611
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aK:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 612
    const-string v0, "current"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 616
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aH:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_6

    .line 618
    const-string v3, "bearer"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 621
    :cond_6
    const-string v0, "mvno_type"

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aI:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v0, "mvno_match_data"

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aJ:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/ApnEditor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 625
    const-string v0, "slot_id"

    iget v3, p0, Lcom/android/settings_ext/ApnEditor;->mSlotId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v2

    .line 630
    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->addPreferencesFromResource(I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09044a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/ApnEditor;->U:Ljava/lang/String;

    .line 176
    const-string v0, "apn_name"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->as:Landroid/preference/EditTextPreference;

    .line 177
    const-string v0, "apn_apn"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->at:Landroid/preference/EditTextPreference;

    .line 178
    const-string v0, "apn_http_proxy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->au:Landroid/preference/EditTextPreference;

    .line 179
    const-string v0, "apn_http_port"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->W:Landroid/preference/EditTextPreference;

    .line 180
    const-string v0, "apn_user"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->av:Landroid/preference/EditTextPreference;

    .line 181
    const-string v0, "apn_server"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->V:Landroid/preference/EditTextPreference;

    .line 182
    const-string v0, "apn_password"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aw:Landroid/preference/EditTextPreference;

    .line 183
    const-string v0, "apn_mms_proxy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aA:Landroid/preference/EditTextPreference;

    .line 184
    const-string v0, "apn_mms_port"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aB:Landroid/preference/EditTextPreference;

    .line 185
    const-string v0, "apn_mmsc"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->ax:Landroid/preference/EditTextPreference;

    .line 186
    const-string v0, "apn_mcc"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->ay:Landroid/preference/EditTextPreference;

    .line 187
    const-string v0, "apn_mnc"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->az:Landroid/preference/EditTextPreference;

    .line 188
    const-string v0, "apn_type"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aD:Landroid/preference/EditTextPreference;

    .line 190
    const-string v0, "auth_type"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aC:Landroid/preference/ListPreference;

    .line 191
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aC:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 193
    const-string v0, "apn_protocol"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aE:Landroid/preference/ListPreference;

    .line 194
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aE:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aE:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aE:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 199
    :cond_0
    const-string v0, "apn_roaming_protocol"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aF:Landroid/preference/ListPreference;

    .line 200
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aF:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    const-string v0, "carrier_enabled"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aG:Landroid/preference/CheckBoxPreference;

    .line 204
    const-string v0, "bearer"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aH:Landroid/preference/ListPreference;

    .line 205
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aH:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    const-string v0, "mvno_type"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aI:Landroid/preference/ListPreference;

    .line 208
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aI:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    const-string v0, "mvno_match_data"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aJ:Landroid/preference/EditTextPreference;

    .line 211
    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 213
    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 214
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    invoke-static {v3, v0}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/ApnEditor;->mSlotId:I

    .line 222
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ext/ApnEditor;->mFirstTime:Z

    .line 224
    const-string v0, "android.intent.action.EDIT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->mUri:Landroid/net/Uri;

    .line 253
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v1, Lcom/android/settings_ext/ApnEditor;->aN:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v5, v5}, Lcom/android/settings_ext/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 254
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 258
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 260
    invoke-direct {p0}, Lcom/android/settings_ext/ApnEditor;->C()V

    .line 261
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 222
    goto :goto_0

    .line 226
    :cond_3
    const-string v0, "android.intent.action.INSERT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 227
    iget-boolean v0, p0, Lcom/android/settings_ext/ApnEditor;->mFirstTime:Z

    if-nez v0, :cond_4

    const-string v0, "pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 228
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->mUri:Landroid/net/Uri;

    .line 233
    :goto_3
    iput-boolean v1, p0, Lcom/android/settings_ext/ApnEditor;->aM:Z

    .line 237
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_6

    .line 238
    sget-object v0, Lcom/android/settings_ext/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to insert new telephony provider into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->finish()V

    goto :goto_2

    .line 230
    :cond_5
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_3

    .line 246
    :cond_6
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/ApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 249
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->finish()V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 657
    if-nez p1, :cond_0

    .line 658
    invoke-direct {p0}, Lcom/android/settings_ext/ApnEditor;->D()Ljava/lang/String;

    move-result-object v0

    .line 660
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090469

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 667
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 492
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 494
    iget-boolean v0, p0, Lcom/android/settings_ext/ApnEditor;->aM:Z

    if-nez v0, :cond_0

    .line 495
    const v0, 0x7f090465

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020101

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 498
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f090467

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 500
    const/4 v0, 0x3

    const v1, 0x7f090468

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 502
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 528
    packed-switch p1, :pswitch_data_0

    .line 536
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 530
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ApnEditor;->e(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->finish()V

    .line 533
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 528
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 507
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 523
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 509
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ext/ApnEditor;->E()V

    goto :goto_0

    .line 512
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/ApnEditor;->e(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->finish()V

    goto :goto_0

    .line 517
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/settings_ext/ApnEditor;->aM:Z

    if-eqz v1, :cond_1

    .line 518
    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 520
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->finish()V

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 274
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 275
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 446
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 447
    const-string v2, "auth_type"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 450
    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->aC:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 452
    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 453
    iget-object v3, p0, Lcom/android/settings_ext/ApnEditor;->aC:Landroid/preference/ListPreference;

    aget-object v0, v2, v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 454
    :catch_0
    move-exception v0

    move v0, v1

    .line 455
    goto :goto_1

    .line 457
    :cond_1
    const-string v2, "apn_protocol"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, p2

    .line 458
    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->aE:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ext/ApnEditor;->a(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v0

    .line 459
    if-nez v0, :cond_2

    move v0, v1

    .line 460
    goto :goto_1

    .line 462
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/ApnEditor;->aE:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aE:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_3
    const-string v2, "apn_roaming_protocol"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, p2

    .line 465
    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ext/ApnEditor;->aF:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ext/ApnEditor;->a(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v0

    .line 466
    if-nez v0, :cond_4

    move v0, v1

    .line 467
    goto :goto_1

    .line 469
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ext/ApnEditor;->aF:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/android/settings_ext/ApnEditor;->aF:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_5
    const-string v2, "bearer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v0, p2

    .line 472
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/ApnEditor;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    if-nez v0, :cond_6

    move v0, v1

    .line 474
    goto :goto_1

    .line 476
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ext/ApnEditor;->aH:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/android/settings_ext/ApnEditor;->aH:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 478
    :cond_7
    const-string v2, "mvno_type"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 479
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/ApnEditor;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    if-nez v0, :cond_8

    move v0, v1

    .line 481
    goto :goto_1

    .line 483
    :cond_8
    iget-object v1, p0, Lcom/android/settings_ext/ApnEditor;->aI:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/android/settings_ext/ApnEditor;->aI:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 672
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 674
    if-nez p1, :cond_0

    .line 675
    invoke-direct {p0}, Lcom/android/settings_ext/ApnEditor;->D()Ljava/lang/String;

    move-result-object v0

    .line 677
    if-eqz v0, :cond_0

    .line 678
    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 681
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 266
    invoke-virtual {p0}, Lcom/android/settings_ext/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 268
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 541
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 546
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 717
    invoke-virtual {p0, p2}, Lcom/android/settings_ext/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 718
    if-eqz v0, :cond_0

    .line 719
    iget-object v1, p0, Lcom/android/settings_ext/ApnEditor;->aw:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 720
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ext/ApnEditor;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ext/ApnEditor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
