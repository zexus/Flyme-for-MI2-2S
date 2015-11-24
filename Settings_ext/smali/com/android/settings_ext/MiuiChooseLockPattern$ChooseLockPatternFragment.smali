.class public Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "MiuiChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected b:Landroid/security/ChooseLockSettingsHelper;

.field protected db:Landroid/widget/TextView;

.field private dq:Landroid/widget/TextView;

.field private dr:Landroid/widget/TextView;

.field protected ds:Ljava/util/List;

.field private final dt:Ljava/util/List;

.field private dx:Ljava/lang/Runnable;

.field protected en:Lcom/android/settings_ext/LockPatternView;

.field protected oy:Lcom/android/settings_ext/cR;

.field private oz:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 45
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->ds:Ljava/util/List;

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v3, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    invoke-static {v4, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dt:Ljava/util/List;

    .line 104
    new-instance v0, Lcom/android/settings_ext/dv;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/dv;-><init>(Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->oy:Lcom/android/settings_ext/cR;

    .line 257
    sget-object v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oO:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->oz:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 259
    new-instance v0, Lcom/android/settings_ext/dw;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/dw;-><init>(Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dx:Ljava/lang/Runnable;

    return-void
.end method

.method private K(I)V
    .locals 3

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 520
    const-string v0, "miui_security_fragment_result"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 521
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 522
    check-cast v0, Lcom/android/settings_ext/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->getTargetRequestCode()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->a(ILandroid/os/Bundle;)V

    .line 524
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dx:Ljava/lang/Runnable;

    return-object v0
.end method

.method private ar()V
    .locals 4

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings_ext/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dx:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 489
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings_ext/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dx:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ext/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 490
    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->oz:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dq:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dr:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->ak()V

    .line 285
    const v0, 0x7f040024

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 286
    const v0, 0x7f100057

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->db:Landroid/widget/TextView;

    .line 287
    const v0, 0x7f10005c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/LockPatternView;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings_ext/LockPatternView;

    .line 288
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings_ext/LockPatternView;

    iget-object v2, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->oy:Lcom/android/settings_ext/cR;

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/LockPatternView;->a(Lcom/android/settings_ext/cR;)V

    .line 289
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings_ext/LockPatternView;

    iget-object v2, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 292
    const v0, 0x7f10005d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dq:Landroid/widget/TextView;

    .line 293
    const v0, 0x7f10005e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dr:Landroid/widget/TextView;

    .line 295
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dq:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dr:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    const v0, 0x7f10005b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 303
    iget-object v2, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings_ext/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 305
    if-nez p3, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->ai()V

    .line 315
    :goto_0
    return-object v1

    .line 309
    :cond_0
    const-string v0, "chosenPattern"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_1

    .line 311
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->ds:Ljava/util/List;

    .line 313
    :cond_1
    invoke-static {}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    const-string v2, "uiStage"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 528
    if-eqz p2, :cond_1

    const-string v0, "miui_security_fragment_result"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 531
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 547
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 528
    goto :goto_0

    .line 533
    :pswitch_0
    if-nez v0, :cond_2

    .line 534
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->finish()V

    .line 535
    invoke-direct {p0, v1}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->K(I)V

    goto :goto_1

    .line 537
    :cond_2
    sget-object v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oO:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_1

    .line 541
    :pswitch_1
    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->finish()V

    .line 543
    invoke-direct {p0, v1}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->K(I)V

    goto :goto_1

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 413
    iput-object p1, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->oz:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 417
    sget-object v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oQ:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->db:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :goto_0
    iget-object v0, p1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oF:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 427
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dq:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    :goto_1
    iget-object v0, p1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->oM:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_2

    .line 435
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dr:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    :goto_2
    iget-boolean v0, p1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    if-eqz v0, :cond_3

    .line 444
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings_ext/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings_ext/LockPatternView;->enableInput()V

    .line 451
    :goto_3
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings_ext/LockPatternView;

    sget-object v1, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nR:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/LockPatternView;->a(Lcom/android/settings_ext/LockPatternView$DisplayMode;)V

    .line 453
    sget-object v0, Lcom/android/settings_ext/du;->ox:[I

    iget-object v1, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->oz:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 482
    :goto_4
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->db:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dq:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dq:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget v1, v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 431
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dq:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget-boolean v1, v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dr:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dr:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget v1, v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 439
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dr:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v1, v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 446
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings_ext/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings_ext/LockPatternView;->disableInput()V

    goto :goto_3

    .line 455
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings_ext/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings_ext/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 458
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings_ext/LockPatternView;

    sget-object v1, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nS:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    iget-object v2, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dt:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ext/LockPatternView;->a(Lcom/android/settings_ext/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_4

    .line 461
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings_ext/LockPatternView;

    sget-object v1, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nT:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/LockPatternView;->a(Lcom/android/settings_ext/LockPatternView$DisplayMode;)V

    .line 462
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->ar()V

    goto :goto_4

    .line 465
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings_ext/LockPatternView;

    new-instance v1, Lcom/android/settings_ext/dx;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/dx;-><init>(Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ext/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 473
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings_ext/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings_ext/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 476
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings_ext/LockPatternView;

    sget-object v1, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nT:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/LockPatternView;->a(Lcom/android/settings_ext/LockPatternView$DisplayMode;)V

    .line 477
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->ar()V

    goto :goto_4

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected ai()V
    .locals 1

    .prologue
    .line 326
    sget-object v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oO:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 327
    return-void
.end method

.method protected aj()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 493
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v3

    .line 494
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 496
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 498
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    .line 499
    iget-object v5, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->ds:Ljava/util/List;

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 500
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 502
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "miui_password_type"

    const/high16 v6, 0x10000

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 505
    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 512
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->finish()V

    .line 514
    invoke-direct {p0, v2}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->K(I)V

    .line 515
    return-void

    :cond_1
    move v0, v2

    .line 494
    goto :goto_0
.end method

.method protected ak()V
    .locals 2

    .prologue
    .line 322
    sget-object v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oO:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    const v1, 0x7f0904f3

    iput v1, v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 323
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 83
    packed-switch p1, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 85
    :pswitch_0
    if-eq p2, v1, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 89
    :cond_1
    sget-object v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oO:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 92
    :pswitch_1
    if-ne p2, v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dq:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 343
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->oz:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oD:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->ds:Ljava/util/List;

    .line 345
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings_ext/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings_ext/LockPatternView;->clearPattern()V

    .line 346
    sget-object v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oO:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->oz:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oB:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_2

    .line 349
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 350
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 352
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->oz:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->dr:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->oz:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->oH:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_5

    .line 358
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->oz:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oR:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_4

    .line 359
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oR:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->oH:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_4
    sget-object v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oS:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 363
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->oz:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->oJ:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_7

    .line 364
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->oz:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oU:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_6

    .line 365
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oU:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->oJ:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->aj()V

    goto/16 :goto_0

    .line 369
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->oz:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->oL:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->oz:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oP:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_8

    .line 371
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->oz:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings_ext/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings_ext/LockPatternView;->clearPattern()V

    .line 375
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->en:Lcom/android/settings_ext/LockPatternView;

    sget-object v1, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nR:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/LockPatternView;->a(Lcom/android/settings_ext/LockPatternView$DisplayMode;)V

    .line 376
    sget-object v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oO:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 273
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    .line 275
    const/16 v0, 0x37

    invoke-static {p0, v0}, Lcom/android/settings_ext/ChooseLockPassword;->a(Lcom/android/settings_ext/SettingsPreferenceFragment;I)V

    .line 276
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 396
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 398
    const-string v0, "uiStage"

    iget-object v1, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->oz:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 399
    iget-object v0, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->ds:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 400
    const-string v0, "chosenPattern"

    iget-object v1, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment;->ds:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 331
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onStart()V

    .line 332
    invoke-static {p0}, Lcom/android/settings_ext/eK;->a(Landroid/app/Fragment;)V

    .line 333
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 337
    invoke-static {p0}, Lcom/android/settings_ext/eK;->b(Landroid/app/Fragment;)V

    .line 338
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onStop()V

    .line 339
    return-void
.end method
