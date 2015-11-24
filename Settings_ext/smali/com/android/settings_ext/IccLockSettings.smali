.class public Lcom/android/settings_ext/IccLockSettings;
.super Lmiui/preference/PreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings_ext/cn;


# instance fields
.field private bO:Lcom/android/internal/telephony/Phone;

.field private mHandler:Landroid/os/Handler;

.field private mL:I

.field private mM:Ljava/lang/String;

.field private mN:Ljava/lang/String;

.field private mO:Ljava/lang/String;

.field private mP:Ljava/lang/String;

.field private mQ:Z

.field private mR:Lcom/android/settings_ext/EditPinPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mS:Landroid/preference/CheckBoxPreference;

.field private final mT:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/IccLockSettings;->mL:I

    .line 110
    new-instance v0, Lcom/android/settings_ext/cN;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/cN;-><init>(Lcom/android/settings_ext/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcom/android/settings_ext/cO;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/cO;-><init>(Lcom/android/settings_ext/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mT:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private A(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 483
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 485
    :cond_0
    const/4 v0, 0x0

    .line 487
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private E(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 468
    if-nez p1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0903cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 476
    :goto_0
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayMessage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-object v0

    .line 470
    :cond_0
    if-lez p1, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e0009

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0903ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings_ext/IccLockSettings;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->dY()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/IccLockSettings;Ljava/lang/Throwable;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/IccLockSettings;->a(Ljava/lang/Throwable;I)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 426
    if-nez p1, :cond_1

    .line 427
    iget-boolean v0, p0, Lcom/android/settings_ext/IccLockSettings;->mQ:Z

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0903cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 434
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mS:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings_ext/IccLockSettings;->mQ:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 441
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 442
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->ec()V

    .line 443
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0903cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 436
    :cond_1
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings_ext/IccLockSettings;->a(Ljava/lang/Throwable;II)V

    .line 438
    invoke-direct {p0, p2}, Lcom/android/settings_ext/IccLockSettings;->E(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private a(Ljava/lang/Throwable;II)V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 391
    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_5

    .line 392
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 394
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_2

    .line 396
    if-ne p2, v3, :cond_1

    .line 397
    const v0, 0x7f0903c9

    .line 401
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 422
    :cond_0
    :goto_1
    return-void

    .line 399
    :cond_1
    const v0, 0x7f0903c8

    goto :goto_0

    .line 403
    :cond_2
    if-ne p2, v3, :cond_4

    .line 404
    iget-boolean v0, p0, Lcom/android/settings_ext/IccLockSettings;->mQ:Z

    if-eqz v0, :cond_3

    .line 405
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0903c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/settings_ext/IccLockSettings;->d(Ljava/lang/String;I)V

    goto :goto_1

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0903c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/settings_ext/IccLockSettings;->d(Ljava/lang/String;I)V

    goto :goto_1

    .line 414
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0903bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/settings_ext/IccLockSettings;->d(Ljava/lang/String;I)V

    goto :goto_1

    .line 419
    :cond_5
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/settings_ext/IccLockSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->bO:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/IccLockSettings;Ljava/lang/Throwable;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/IccLockSettings;->b(Ljava/lang/Throwable;I)V

    return-void
.end method

.method private b(Ljava/lang/Throwable;I)V
    .locals 2

    .prologue
    .line 446
    if-eqz p1, :cond_0

    .line 447
    const/16 v0, 0x65

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings_ext/IccLockSettings;->a(Ljava/lang/Throwable;II)V

    .line 449
    invoke-direct {p0, p2}, Lcom/android/settings_ext/IccLockSettings;->E(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 456
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->ec()V

    .line 457
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0903c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings_ext/IccLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mS:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/IccLockSettings;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private d(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 500
    if-ltz p2, :cond_0

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0903ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 508
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0903c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private dY()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mS:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->bO:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 216
    return-void
.end method

.method private dZ()V
    .locals 4

    .prologue
    const v3, 0x7f0903bb

    .line 287
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mR:Lcom/android/settings_ext/EditPinPreference;

    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 288
    const-string v0, ""

    .line 289
    iget v1, p0, Lcom/android/settings_ext/IccLockSettings;->mL:I

    packed-switch v1, :pswitch_data_0

    .line 309
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mP:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mP:Ljava/lang/String;

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mR:Lcom/android/settings_ext/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 314
    return-void

    .line 291
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0903b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 292
    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mR:Lcom/android/settings_ext/EditPinPreference;

    iget-boolean v0, p0, Lcom/android/settings_ext/IccLockSettings;->mQ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0903b6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/settings_ext/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 295
    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0903b7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 297
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0903b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mR:Lcom/android/settings_ext/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 301
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0903b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mR:Lcom/android/settings_ext/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 305
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0903ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mR:Lcom/android/settings_ext/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private dn()V
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/android/settings_ext/IccLockSettings;->mL:I

    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->dZ()V

    .line 283
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mR:Lcom/android/settings_ext/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings_ext/EditPinPreference;->dn()V

    goto :goto_0
.end method

.method private ea()V
    .locals 4

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->bO:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ext/IccLockSettings;->mQ:Z

    iget-object v3, p0, Lcom/android/settings_ext/IccLockSettings;->mM:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 382
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mS:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 383
    return-void
.end method

.method private eb()V
    .locals 4

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->bO:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mN:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ext/IccLockSettings;->mO:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 463
    return-void
.end method

.method private ec()V
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mP:Ljava/lang/String;

    .line 493
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ext/IccLockSettings;->mL:I

    .line 494
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mM:Ljava/lang/String;

    .line 495
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->dZ()V

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/IccLockSettings;->mL:I

    .line 497
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/EditPinPreference;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 317
    if-nez p2, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->ec()V

    .line 358
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings_ext/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mM:Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mM:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/IccLockSettings;->A(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0903bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mP:Ljava/lang/String;

    .line 326
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->dn()V

    goto :goto_0

    .line 329
    :cond_1
    iget v0, p0, Lcom/android/settings_ext/IccLockSettings;->mL:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 331
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->ea()V

    goto :goto_0

    .line 334
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mM:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mN:Ljava/lang/String;

    .line 335
    iput v3, p0, Lcom/android/settings_ext/IccLockSettings;->mL:I

    .line 336
    iput-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mP:Ljava/lang/String;

    .line 337
    iput-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mM:Ljava/lang/String;

    .line 338
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->dn()V

    goto :goto_0

    .line 341
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mM:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mO:Ljava/lang/String;

    .line 342
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ext/IccLockSettings;->mL:I

    .line 343
    iput-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mM:Ljava/lang/String;

    .line 344
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->dn()V

    goto :goto_0

    .line 347
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mM:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0903bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mP:Ljava/lang/String;

    .line 349
    iput v3, p0, Lcom/android/settings_ext/IccLockSettings;->mL:I

    .line 350
    iput-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mM:Ljava/lang/String;

    .line 351
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->dn()V

    goto :goto_0

    .line 353
    :cond_2
    iput-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mP:Ljava/lang/String;

    .line 354
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->eb()V

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-static {}, Lcom/android/settings_ext/hl;->hr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ext/IccLockSettings;->finish()V

    .line 212
    :goto_0
    return-void

    .line 168
    :cond_0
    const v0, 0x7f06007f

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/IccLockSettings;->addPreferencesFromResource(I)V

    .line 170
    const-string v0, "sim_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/EditPinPreference;

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mR:Lcom/android/settings_ext/EditPinPreference;

    .line 171
    const-string v0, "sim_toggle"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mS:Landroid/preference/CheckBoxPreference;

    .line 172
    if-eqz p1, :cond_1

    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/IccLockSettings;->mL:I

    .line 175
    const-string v0, "dialogPin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mM:Ljava/lang/String;

    .line 176
    const-string v0, "dialogError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mP:Ljava/lang/String;

    .line 177
    const-string v0, "enableState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/IccLockSettings;->mQ:Z

    .line 180
    iget v0, p0, Lcom/android/settings_ext/IccLockSettings;->mL:I

    packed-switch v0, :pswitch_data_0

    .line 197
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mR:Lcom/android/settings_ext/EditPinPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/EditPinPreference;->a(Lcom/android/settings_ext/cn;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ext/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 204
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ext/IccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/android/settings_ext/IccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v0

    .line 208
    :cond_2
    invoke-static {}, Lcom/android/settings_ext/eK;->fB()Lcom/android/settings_ext/eK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/eK;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->bO:Lcom/android/internal/telephony/Phone;

    .line 210
    invoke-virtual {p0}, Lcom/android/settings_ext/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 211
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->dY()V

    goto :goto_0

    .line 182
    :pswitch_0
    const-string v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mN:Ljava/lang/String;

    goto :goto_1

    .line 186
    :pswitch_1
    const-string v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mN:Ljava/lang/String;

    .line 187
    const-string v0, "newPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mO:Ljava/lang/String;

    goto :goto_1

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 239
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mT:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 362
    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mS:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 364
    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ext/IccLockSettings;->mQ:Z

    .line 366
    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mS:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings_ext/IccLockSettings;->mQ:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 367
    iput v1, p0, Lcom/android/settings_ext/IccLockSettings;->mL:I

    .line 368
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->dn()V

    :cond_1
    move v0, v1

    .line 373
    :goto_0
    return v0

    .line 369
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ext/IccLockSettings;->mR:Lcom/android/settings_ext/EditPinPreference;

    if-ne p2, v2, :cond_1

    .line 370
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ext/IccLockSettings;->mL:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 220
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 224
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mT:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ext/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    iget v0, p0, Lcom/android/settings_ext/IccLockSettings;->mL:I

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->dn()V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/IccLockSettings;->ec()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/settings_ext/IccLockSettings;->mR:Lcom/android/settings_ext/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings_ext/EditPinPreference;->dm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settings_ext/IccLockSettings;->mL:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mR:Lcom/android/settings_ext/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings_ext/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mP:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings_ext/IccLockSettings;->mQ:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    iget v0, p0, Lcom/android/settings_ext/IccLockSettings;->mL:I

    packed-switch v0, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 259
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mN:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mN:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/settings_ext/IccLockSettings;->mO:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
