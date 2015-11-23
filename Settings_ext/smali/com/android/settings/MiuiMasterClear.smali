.class public Lcom/android/settings/MiuiMasterClear;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiMasterClear.java"


# instance fields
.field private ql:Landroid/preference/CheckBoxPreference;

.field private qm:Landroid/preference/CheckBoxPreference;

.field private qn:Z

.field private qo:Z

.field private qp:Ljava/lang/String;

.field private qq:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 426
    return-void
.end method

.method private A(Z)V
    .locals 2

    .prologue
    .line 413
    const/4 v1, 0x0

    .line 414
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 416
    if-nez p1, :cond_0

    .line 421
    const/high16 v1, 0x1610000

    .line 423
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 424
    return-void
.end method

.method private B(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 498
    if-nez p1, :cond_0

    .line 499
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 502
    :goto_0
    return-object v0

    .line 501
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 502
    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->ej()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiMasterClear;Z)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiMasterClear;->z(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/MiuiMasterClear;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ql:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/MiuiMasterClear;Z)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiMasterClear;->A(Z)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->eQ()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->eR()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/MiuiMasterClear;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->qq:Landroid/app/Dialog;

    return-object v0
.end method

.method private eO()Z
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESTRICTIONS_CHALLENGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x38

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiMasterClear;->startActivityForResult(Landroid/content/Intent;I)V

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private eP()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 134
    invoke-static {v3}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 135
    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    invoke-static {v3, v1}, Lmiui/cloud/CloudSyncUtils;->isFindDeviceEnabled(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 141
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 142
    const-string v4, "verify_only"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    new-instance v4, Lcom/android/settings/dQ;

    invoke-direct {v4, p0}, Lcom/android/settings/dQ;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move v0, v6

    .line 161
    goto :goto_0
.end method

.method private eQ()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 317
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x103006d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->qq:Landroid/app/Dialog;

    .line 318
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->qq:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x11030000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->qq:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 320
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->qq:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 321
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->qq:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 322
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 323
    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->qq:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 324
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->qq:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 325
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->qq:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 326
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->qq:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 328
    const v1, 0x110b000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 329
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11060010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11060011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    .line 335
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    .line 337
    new-instance v0, Lcom/android/settings/dS;

    invoke-direct {v0, p0}, Lcom/android/settings/dS;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/dS;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 338
    return-void
.end method

.method private eR()V
    .locals 6

    .prologue
    const/high16 v5, 0x10000000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ql:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lmiui/os/MiuiInit;->doFactoryReset(Z)V

    .line 348
    const-string v0, "MasterClearRec"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFactoryReset hex password:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MiuiMasterClear;->qp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->qm:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->qm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 350
    const-string v0, "support_erase_external_storage"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    const-string v1, "format_sdcard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ql:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    .line 356
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 361
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 363
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->qp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 364
    const-string v1, "password"

    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->qp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/MiuiMasterClear;->qp:Ljava/lang/String;

    .line 367
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private ej()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ql:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ql:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->qm:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->qm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090ba6

    .line 291
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09047a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090ba2

    new-instance v2, Lcom/android/settings/dR;

    invoke-direct {v2, p0}, Lcom/android/settings/dR;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090169

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 312
    return-void

    .line 283
    :cond_0
    const v0, 0x7f090ba4

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->qm:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->qm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f090ba5

    goto :goto_0

    :cond_2
    const v0, 0x7f090ba3

    goto :goto_0
.end method

.method private el()Z
    .locals 2

    .prologue
    .line 373
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l(I)Z
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_0

    .line 112
    const v1, 0x7f09047d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 113
    const v2, 0x7f09047e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 118
    :goto_0
    new-instance v2, Lcom/android/settings/ap;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/settings/ap;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    invoke-virtual {v2, p1, v1, v0}, Lcom/android/settings/ap;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 115
    :cond_0
    const v1, 0x7f0904e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 116
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private z(Z)V
    .locals 3

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_buttons_state"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 410
    return-void

    .line 407
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 251
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 253
    const/16 v0, 0x38

    if-ne p1, v0, :cond_1

    .line 254
    if-ne p2, v1, :cond_0

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->qo:Z

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    const/16 v0, 0x37

    if-ne p1, v0, :cond_0

    .line 263
    if-ne p2, v1, :cond_0

    .line 264
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v1, "support_device_encrypt"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 268
    invoke-static {}, Lcom/android/settings/a;->f()Ljava/lang/String;

    move-result-object v1

    .line 270
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiMasterClear;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/settings/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->qp:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->ej()V

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    const-string v1, "MiuiMasterClear"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 166
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 168
    invoke-virtual {p0, v5}, Lcom/android/settings/MiuiMasterClear;->setHasOptionsMenu(Z)V

    .line 169
    const v0, 0x7f06004a

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->addPreferencesFromResource(I)V

    .line 170
    const-string v0, "erase_application"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ql:Landroid/preference/CheckBoxPreference;

    .line 171
    const-string v0, "erase_external_storage"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->qm:Landroid/preference/CheckBoxPreference;

    .line 173
    const-string v0, "erase_optional"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 174
    const-string v1, "support_erase_application"

    invoke-static {v1, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->ql:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    iput-object v6, p0, Lcom/android/settings/MiuiMasterClear;->ql:Landroid/preference/CheckBoxPreference;

    .line 179
    :cond_0
    const-string v1, "ro.boot.sdcard.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    .line 183
    if-eqz v2, :cond_1

    const-string v3, "support_erase_external_storage"

    invoke-static {v3, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->el()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "mixed"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 186
    :cond_3
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->qm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    iput-object v6, p0, Lcom/android/settings/MiuiMasterClear;->qm:Landroid/preference/CheckBoxPreference;

    .line 192
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->qm:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->ql:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_5

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clear_all"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->qn:Z

    .line 197
    iget-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->qn:Z

    if-eqz v0, :cond_7

    .line 198
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->qm:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 199
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->qm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 201
    :cond_6
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ql:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_9

    .line 202
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->eQ()V

    .line 207
    :cond_7
    :goto_1
    return-void

    .line 188
    :cond_8
    if-eqz v2, :cond_4

    .line 189
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->qm:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090ba8

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 190
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->qm:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090ba9

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 204
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->eR()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 211
    const v2, 0x7f09047a

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 212
    const v3, 0x7f020009

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 213
    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_demo_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    .line 216
    if-nez v3, :cond_0

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 217
    return-void

    :cond_0
    move v0, v1

    .line 216
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->qq:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->qq:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 390
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 391
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 221
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 222
    if-ne v1, v0, :cond_2

    .line 232
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/MiuiMasterClear;->qo:Z

    .line 233
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->eO()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    const/16 v1, 0x37

    invoke-direct {p0, v1}, Lcom/android/settings/MiuiMasterClear;->l(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->eP()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->ej()V

    goto :goto_0

    .line 245
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiMasterClear;->z(Z)V

    .line 381
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiMasterClear;->A(Z)V

    .line 382
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 395
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 398
    iget-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->qo:Z

    if-eqz v0, :cond_0

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->qo:Z

    .line 400
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiMasterClear;->l(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->ej()V

    .line 404
    :cond_0
    return-void
.end method
