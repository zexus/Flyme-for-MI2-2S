.class public Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
.super Landroid/app/Fragment;
.source "ConfirmLockPattern.java"


# instance fields
.field private dx:Ljava/lang/Runnable;

.field private ei:I

.field private ej:Landroid/os/CountDownTimer;

.field private en:Lcom/android/settings/LockPatternView;

.field protected eo:Landroid/security/MiuiLockPatternUtils;

.field private ep:Landroid/widget/TextView;

.field private eq:Landroid/widget/TextView;

.field protected er:Landroid/widget/Button;

.field protected es:Ljava/lang/CharSequence;

.field protected et:Ljava/lang/CharSequence;

.field private eu:Ljava/lang/CharSequence;

.field private ev:Ljava/lang/CharSequence;

.field private ew:Lcom/android/settings/i;

.field private ex:Landroid/view/View$OnClickListener;

.field private ey:Landroid/database/ContentObserver;

.field private ez:Lcom/android/settings/cR;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 383
    new-instance v0, Lcom/android/settings/ay;

    invoke-direct {v0, p0}, Lcom/android/settings/ay;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->dx:Ljava/lang/Runnable;

    .line 400
    new-instance v0, Lcom/android/settings/az;

    invoke-direct {v0, p0}, Lcom/android/settings/az;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ez:Lcom/android/settings/cR;

    .line 144
    return-void
.end method

.method static synthetic a(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;I)I
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ei:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/i;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ew:Lcom/android/settings/i;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings/i;)Lcom/android/settings/i;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ew:Lcom/android/settings/i;

    return-object p1
.end method

.method private ar()V
    .locals 4

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->dx:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 393
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->dx:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 394
    return-void
.end method

.method static synthetic b(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/LockPatternView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->dx:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ei:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ei:I

    return v0
.end method

.method static synthetic e(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ar()V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ep:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->eq:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected a(J)J
    .locals 1

    .prologue
    .line 289
    return-wide p1
.end method

.method protected a(Lcom/android/settings/ConfirmLockPattern$Stage;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 334
    sget-object v0, Lcom/android/settings/av;->dX:[I

    invoke-virtual {p1}, Lcom/android/settings/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 380
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ep:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ep:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 381
    return-void

    .line 336
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->es:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ep:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->es:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    :goto_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->et:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->eq:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->et:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :goto_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->aA()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->setInStealthMode(Z)V

    .line 351
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/settings/LockPatternView;->setEnabled(Z)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->enableInput()V

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ep:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->az()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->eq:Landroid/widget/TextView;

    const v1, 0x7f0904f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 355
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->eu:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ep:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->eu:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :goto_3
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ev:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->eq:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ev:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :goto_4
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    sget-object v1, Lcom/android/settings/LockPatternView$DisplayMode;->nT:Lcom/android/settings/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->a(Lcom/android/settings/LockPatternView$DisplayMode;)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/settings/LockPatternView;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->enableInput()V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ep:Landroid/widget/TextView;

    const v1, 0x7f0904f1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->eq:Landroid/widget/TextView;

    const v1, 0x7f0904f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 371
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->clearPattern()V

    .line 374
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 491
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 493
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    const-string v1, "password"

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 500
    return-void
.end method

.method protected aA()Z
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected aB()Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    return v0
.end method

.method protected av()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->savedPatternExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 516
    :cond_0
    return-void
.end method

.method protected aw()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method protected ax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method protected ay()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 257
    const-string v0, ""

    return-object v0
.end method

.method protected az()I
    .locals 1

    .prologue
    .line 476
    const v0, 0x7f0904ef

    return v0
.end method

.method protected b(J)V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method protected c(J)V
    .locals 7

    .prologue
    .line 451
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->eD:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 452
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 453
    new-instance v0, Lcom/android/settings/aA;

    sub-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/aA;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/aA;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ej:Landroid/os/CountDownTimer;

    .line 472
    return-void
.end method

.method protected checkPattern(Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0, p1}, Landroid/security/MiuiLockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected e(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 520
    if-eqz p1, :cond_0

    .line 521
    const-string v0, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->es:Ljava/lang/CharSequence;

    .line 522
    const-string v0, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->et:Ljava/lang/CharSequence;

    .line 523
    const-string v0, "com.android.settings.ConfirmLockPattern.header_wrong"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->eu:Ljava/lang/CharSequence;

    .line 524
    const-string v0, "com.android.settings.ConfirmLockPattern.footer_wrong"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ev:Ljava/lang/CharSequence;

    .line 526
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 241
    if-eqz p1, :cond_0

    const-string v0, "account_dialog_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->er:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->er:Landroid/widget/Button;

    const-string v1, "account_dialog_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ex:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->er:Landroid/widget/Button;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 246
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ax()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Lcom/android/settings/aw;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/aw;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ey:Landroid/database/ContentObserver;

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ax()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ey:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 169
    const v0, 0x7f040029

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 170
    const v0, 0x7f100057

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ep:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f10005c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    .line 172
    const v0, 0x7f100066

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->eq:Landroid/widget/TextView;

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 176
    const v0, 0x7f100065

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->er:Landroid/widget/Button;

    .line 177
    new-instance v0, Lcom/android/settings/ax;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/ax;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ex:Landroid/view/View$OnClickListener;

    .line 192
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->er:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ex:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v0, 0x7f10005b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 199
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->e(Landroid/content/Intent;)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->aB()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ez:Lcom/android/settings/cR;

    invoke-virtual {v0, v2}, Lcom/android/settings/LockPatternView;->a(Lcom/android/settings/cR;)V

    .line 216
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->eB:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 218
    if-eqz p3, :cond_0

    .line 219
    const-string v0, "num_wrong_attempts"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ei:I

    .line 234
    :goto_0
    return-object v1

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->av()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ew:Lcom/android/settings/i;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ew:Lcom/android/settings/i;

    invoke-virtual {v0}, Lcom/android/settings/i;->dismiss()V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ey:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ey:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 326
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 327
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 282
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ej:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ej:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 285
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 300
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 303
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 305
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(J)J

    move-result-wide v0

    .line 306
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 307
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->c(J)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->en:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ei:I

    .line 312
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->eB:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 268
    const-string v0, "num_wrong_attempts"

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ei:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ew:Lcom/android/settings/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ew:Lcom/android/settings/i;

    invoke-virtual {v0}, Lcom/android/settings/i;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 271
    :goto_0
    if-eqz v0, :cond_0

    .line 272
    const-string v0, "account_dialog_state"

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ew:Lcom/android/settings/i;

    invoke-virtual {v1}, Lcom/android/settings/i;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 276
    :cond_0
    return-void

    .line 270
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
