.class public Lcom/android/settings_ext/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private do:Lcom/android/internal/widget/LockPatternView;

.field protected du:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private dx:Ljava/lang/Runnable;

.field private eQ:Z

.field private eR:Z

.field private eS:Z

.field private eT:Z

.field private eU:Z

.field private eV:I

.field private eW:Landroid/widget/EditText;

.field private eX:I

.field private eY:I

.field private eZ:I

.field private fa:Landroid/app/StatusBarManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Landroid/os/Handler;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 124
    iput-boolean v0, p0, Lcom/android/settings_ext/CryptKeeper;->eU:Z

    .line 130
    iput v0, p0, Lcom/android/settings_ext/CryptKeeper;->eX:I

    .line 132
    iput v0, p0, Lcom/android/settings_ext/CryptKeeper;->eY:I

    .line 133
    const v0, 0x7f090800

    iput v0, p0, Lcom/android/settings_ext/CryptKeeper;->eZ:I

    .line 141
    new-instance v0, Lcom/android/settings_ext/aG;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/aG;-><init>(Lcom/android/settings_ext/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->dx:Ljava/lang/Runnable;

    .line 279
    new-instance v0, Lcom/android/settings_ext/aH;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/aH;-><init>(Lcom/android/settings_ext/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mHandler:Landroid/os/Handler;

    .line 683
    new-instance v0, Lcom/android/settings_ext/aK;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/aK;-><init>(Lcom/android/settings_ext/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->du:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/CryptKeeper;I)I
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/android/settings_ext/CryptKeeper;->eV:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings_ext/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->do:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/CryptKeeper;Z)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings_ext/CryptKeeper;->j(Z)V

    return-void
.end method

.method private a(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 793
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 798
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 800
    if-le v1, v4, :cond_1

    .line 826
    :goto_1
    return v4

    .line 801
    :cond_1
    invoke-virtual {p1, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v6

    .line 804
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 805
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 806
    goto :goto_0

    .line 810
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v2

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    .line 811
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 812
    add-int/lit8 v0, v3, 0x1

    :goto_3
    move v3, v0

    .line 814
    goto :goto_2

    .line 815
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .line 820
    if-gtz v0, :cond_4

    if-eqz p2, :cond_0

    if-le v3, v4, :cond_0

    .line 821
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 822
    goto :goto_0

    .line 826
    :cond_5
    if-gt v1, v4, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_7

    :cond_6
    move v2, v4

    :cond_7
    move v4, v2

    goto :goto_1

    :cond_8
    move v0, v3

    goto :goto_3
.end method

.method private aJ()Z
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/settings_ext/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private aK()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 325
    iget v0, p0, Lcom/android/settings_ext/CryptKeeper;->eX:I

    if-lez v0, :cond_2

    .line 326
    iget v0, p0, Lcom/android/settings_ext/CryptKeeper;->eX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/CryptKeeper;->eX:I

    .line 340
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 343
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget v0, p0, Lcom/android/settings_ext/CryptKeeper;->eY:I

    if-lez v0, :cond_3

    .line 345
    iget v0, p0, Lcom/android/settings_ext/CryptKeeper;->eY:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/CryptKeeper;->eY:I

    .line 350
    :cond_1
    :goto_1
    return-void

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->playSoundEffect(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method private aL()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const v3, 0x7f040035

    .line 426
    iget-boolean v1, p0, Lcom/android/settings_ext/CryptKeeper;->eS:Z

    if-nez v1, :cond_0

    const-string v1, "error"

    invoke-direct {p0, v1}, Lcom/android/settings_ext/CryptKeeper;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ext/CryptKeeper;->setContentView(I)V

    .line 428
    iget-boolean v0, p0, Lcom/android/settings_ext/CryptKeeper;->eT:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->j(Z)V

    .line 493
    :cond_1
    :goto_0
    return-void

    .line 432
    :cond_2
    const-string v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "progress"

    invoke-direct {p0, v1}, Lcom/android/settings_ext/CryptKeeper;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 434
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings_ext/CryptKeeper;->setContentView(I)V

    .line 435
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aM()V

    goto :goto_0

    .line 436
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings_ext/CryptKeeper;->eQ:Z

    if-nez v1, :cond_5

    const-string v1, "password"

    invoke-direct {p0, v1}, Lcom/android/settings_ext/CryptKeeper;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 437
    :cond_5
    new-instance v0, Lcom/android/settings_ext/aI;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/aI;-><init>(Lcom/android/settings_ext/CryptKeeper;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/aI;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 488
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings_ext/CryptKeeper;->eR:Z

    if-nez v1, :cond_1

    .line 490
    new-instance v1, Lcom/android/settings_ext/aQ;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ext/aQ;-><init>(Lcom/android/settings_ext/CryptKeeper;Lcom/android/settings_ext/aG;)V

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/aQ;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/CryptKeeper;->eR:Z

    goto :goto_0
.end method

.method private aM()V
    .locals 3

    .prologue
    .line 534
    const-string v0, "CryptKeeper"

    const-string v1, "Encryption progress screen initializing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 536
    const-string v0, "CryptKeeper"

    const-string v1, "Acquiring wakelock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 538
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 539
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 542
    :cond_0
    const v0, 0x7f100073

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 544
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->k(Z)V

    .line 547
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aN()V

    .line 548
    return-void
.end method

.method private aN()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 592
    const-string v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    const-string v2, "error_partially_encrypted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    invoke-direct {p0, v1}, Lcom/android/settings_ext/CryptKeeper;->j(Z)V

    .line 633
    :goto_0
    return-void

    .line 600
    :cond_0
    const v2, 0x7f0901c1

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 604
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aJ()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0x32

    .line 608
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 611
    const-string v3, "CryptKeeper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encryption progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :try_start_1
    const-string v3, "vold.encrypt_time_remaining"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 614
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 615
    if-ltz v3, :cond_1

    .line 617
    add-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0xa

    mul-int/lit8 v3, v3, 0xa

    .line 618
    int-to-long v4, v3

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    .line 619
    const v3, 0x7f0901c2

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/CryptKeeper;->getText(I)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :cond_1
    move-object v3, v2

    move-object v2, v0

    .line 625
    :goto_2
    const v0, 0x7f10003a

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 626
    if-eqz v0, :cond_2

    .line 627
    new-array v4, v6, [Ljava/lang/CharSequence;

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 632
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 604
    :cond_3
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    goto :goto_1

    .line 605
    :catch_0
    move-exception v0

    .line 606
    const-string v3, "CryptKeeper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_1

    .line 621
    :catch_1
    move-exception v3

    move-object v3, v2

    move-object v2, v0

    goto :goto_2
.end method

.method private aO()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 637
    const v0, 0x7f10003a

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 639
    iget v1, p0, Lcom/android/settings_ext/CryptKeeper;->eV:I

    if-gtz v1, :cond_2

    .line 641
    iget-object v1, p0, Lcom/android/settings_ext/CryptKeeper;->eW:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/android/settings_ext/CryptKeeper;->eW:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 643
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 645
    iget-object v2, p0, Lcom/android/settings_ext/CryptKeeper;->eW:Landroid/widget/EditText;

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 646
    invoke-direct {p0, v3}, Lcom/android/settings_ext/CryptKeeper;->k(Z)V

    .line 648
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/CryptKeeper;->do:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_1

    .line 649
    iget-object v1, p0, Lcom/android/settings_ext/CryptKeeper;->do:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 651
    :cond_1
    iget v1, p0, Lcom/android/settings_ext/CryptKeeper;->eZ:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 668
    :goto_0
    return-void

    .line 654
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/CryptKeeper;->eW:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    .line 655
    iget-object v1, p0, Lcom/android/settings_ext/CryptKeeper;->eW:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 657
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ext/CryptKeeper;->do:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_4

    .line 658
    iget-object v1, p0, Lcom/android/settings_ext/CryptKeeper;->do:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 661
    :cond_4
    const v1, 0x7f0901c3

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 662
    new-array v2, v3, [Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/settings_ext/CryptKeeper;->eV:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget v0, p0, Lcom/android/settings_ext/CryptKeeper;->eV:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/CryptKeeper;->eV:I

    .line 665
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 666
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private aP()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    .line 708
    const v0, 0x7f100070

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->eW:Landroid/widget/EditText;

    .line 709
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->eW:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->eW:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 711
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->eW:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 713
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->eW:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 714
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->eW:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 715
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->eW:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 719
    :cond_0
    const v0, 0x7f10005c

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->do:Lcom/android/internal/widget/LockPatternView;

    .line 720
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->do:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->do:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ext/CryptKeeper;->du:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 727
    :cond_1
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 728
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 729
    const v0, 0x7f10006d

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 730
    if-eqz v0, :cond_2

    .line 731
    const-string v1, "CryptKeeper"

    const-string v2, "Removing the emergency Call button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 736
    :cond_2
    const v0, 0x7f100071

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 737
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 739
    if-eqz v1, :cond_3

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ext/CryptKeeper;->a(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 740
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 741
    new-instance v2, Lcom/android/settings_ext/aL;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ext/aL;-><init>(Lcom/android/settings_ext/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ext/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_4

    .line 753
    const-string v1, "CryptKeeper"

    const-string v2, "Acquiring wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 755
    if-eqz v1, :cond_4

    .line 756
    const/16 v2, 0x1a

    const-string v3, "CryptKeeper"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 757
    iget-object v1, p0, Lcom/android/settings_ext/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 760
    const/16 v1, 0x60

    iput v1, p0, Lcom/android/settings_ext/CryptKeeper;->eY:I

    .line 766
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ext/CryptKeeper;->do:Lcom/android/internal/widget/LockPatternView;

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/settings_ext/CryptKeeper;->eV:I

    if-gtz v1, :cond_5

    .line 767
    iget-object v1, p0, Lcom/android/settings_ext/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings_ext/aM;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ext/aM;-><init>(Lcom/android/settings_ext/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 774
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aR()V

    .line 776
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 777
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 780
    invoke-virtual {p0}, Lcom/android/settings_ext/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x480000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 782
    return-void
.end method

.method private final aQ()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 882
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aU()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 884
    :goto_0
    if-nez v0, :cond_0

    .line 885
    const-string v0, "CryptKeeper"

    const-string v2, "Going into airplane mode."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-virtual {p0}, Lcom/android/settings_ext/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 887
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 888
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 889
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/CryptKeeper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 891
    :cond_0
    return-void

    .line 882
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aR()V
    .locals 2

    .prologue
    .line 900
    const v0, 0x7f10006d

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 902
    if-nez v0, :cond_0

    .line 927
    :goto_0
    return-void

    .line 905
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 906
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 907
    new-instance v1, Lcom/android/settings_ext/aN;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/aN;-><init>(Lcom/android/settings_ext/CryptKeeper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 920
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aV()Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 922
    const v1, 0x7f090896

    .line 926
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 915
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 924
    :cond_2
    const v1, 0x7f090895

    goto :goto_1
.end method

.method private aS()V
    .locals 2

    .prologue
    .line 936
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aV()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 937
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 942
    :goto_0
    return-void

    .line 940
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aT()V

    goto :goto_0
.end method

.method private aT()V
    .locals 2

    .prologue
    .line 946
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 947
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 949
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ext/CryptKeeper;->k(Z)V

    .line 950
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 951
    return-void
.end method

.method private aU()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 954
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private aV()Landroid/telecom/TelecomManager;
    .locals 1

    .prologue
    .line 958
    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private aW()V
    .locals 1

    .prologue
    .line 965
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings_ext/CryptKeeper;->eX:I

    .line 966
    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/CryptKeeper;I)I
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/android/settings_ext/CryptKeeper;->eZ:I

    return p1
.end method

.method static synthetic b(Lcom/android/settings_ext/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/CryptKeeper;Z)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings_ext/CryptKeeper;->k(Z)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings_ext/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->dx:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/CryptKeeper;Z)Z
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/settings_ext/CryptKeeper;->eQ:Z

    return p1
.end method

.method static synthetic d(Lcom/android/settings_ext/CryptKeeper;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aO()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings_ext/CryptKeeper;Z)Z
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/settings_ext/CryptKeeper;->eS:Z

    return p1
.end method

.method static synthetic e(Lcom/android/settings_ext/CryptKeeper;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->eW:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings_ext/CryptKeeper;Z)Z
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/settings_ext/CryptKeeper;->eT:Z

    return p1
.end method

.method static synthetic f(Lcom/android/settings_ext/CryptKeeper;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aL()V

    return-void
.end method

.method static synthetic g(Lcom/android/settings_ext/CryptKeeper;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aN()V

    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 1

    .prologue
    .line 833
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 834
    if-eqz v0, :cond_0

    .line 835
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 837
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/android/settings_ext/CryptKeeper;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aK()V

    return-void
.end method

.method static synthetic i(Lcom/android/settings_ext/CryptKeeper;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/android/settings_ext/CryptKeeper;->eZ:I

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/android/settings_ext/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1109000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/android/settings_ext/CryptKeeper;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aP()V

    return-void
.end method

.method private j(Z)V
    .locals 5

    .prologue
    const v4, 0x7f100052

    const v3, 0x7f10003a

    const/4 v2, 0x0

    .line 558
    const v0, 0x7f10006e

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 561
    const v0, 0x7f100074

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 562
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 563
    new-instance v1, Lcom/android/settings_ext/aJ;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ext/aJ;-><init>(Lcom/android/settings_ext/CryptKeeper;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    if-eqz p1, :cond_1

    .line 577
    invoke-virtual {p0, v4}, Lcom/android/settings_ext/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 578
    invoke-virtual {p0, v3}, Lcom/android/settings_ext/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901c9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 584
    :goto_0
    const v0, 0x7f100075

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 586
    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 589
    :cond_0
    return-void

    .line 580
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings_ext/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 581
    invoke-virtual {p0, v3}, Lcom/android/settings_ext/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/android/settings_ext/CryptKeeper;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/android/settings_ext/CryptKeeper;->eV:I

    return v0
.end method

.method private final k(Z)V
    .locals 2

    .prologue
    .line 675
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ext/CryptKeeper;->eU:Z

    .line 676
    if-eqz p1, :cond_1

    .line 677
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->fa:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 681
    :goto_1
    return-void

    .line 675
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->fa:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_1
.end method

.method static synthetic l(Lcom/android/settings_ext/CryptKeeper;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aS()V

    return-void
.end method

.method private o(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/settings_ext/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 992
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 982
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/settings_ext/CryptKeeper;->eU:Z

    if-eqz v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 369
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aJ()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/CryptKeeper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 373
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings_ext/CryptKeeper;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 383
    invoke-virtual {p0}, Lcom/android/settings_ext/CryptKeeper;->finish()V

    .line 408
    :cond_1
    :goto_0
    return-void

    .line 388
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ext/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :cond_3
    :goto_1
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->fa:Landroid/app/StatusBarManager;

    .line 397
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->fa:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 399
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aQ()V

    .line 400
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 402
    invoke-virtual {p0}, Lcom/android/settings_ext/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 403
    instance-of v1, v0, Lcom/android/settings_ext/aP;

    if-eqz v1, :cond_1

    .line 404
    check-cast v0, Lcom/android/settings_ext/aP;

    .line 405
    iget-object v0, v0, Lcom/android/settings_ext/aP;->fg:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 406
    const-string v0, "CryptKeeper"

    const-string v1, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 518
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 520
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 521
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 525
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 842
    if-eqz p2, :cond_0

    const/4 v2, 0x6

    if-ne p2, v2, :cond_1

    .line 844
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 846
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 863
    :cond_1
    :goto_0
    return v0

    .line 851
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v3, p0, Lcom/android/settings_ext/CryptKeeper;->eW:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 856
    invoke-direct {p0, v0}, Lcom/android/settings_ext/CryptKeeper;->k(Z)V

    .line 858
    const-string v3, "CryptKeeper"

    const-string v4, "Attempting to send command to decrypt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    new-instance v3, Lcom/android/settings_ext/aO;

    invoke-direct {v3, p0, v5}, Lcom/android/settings_ext/aO;-><init>(Lcom/android/settings_ext/CryptKeeper;Lcom/android/settings_ext/aG;)V

    new-array v4, v1, [Ljava/lang/String;

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Lcom/android/settings_ext/aO;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 861
    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 970
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aW()V

    .line 971
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 510
    new-instance v0, Lcom/android/settings_ext/aP;

    iget-object v1, p0, Lcom/android/settings_ext/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/settings_ext/aP;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 511
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ext/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 513
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 417
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 418
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aL()V

    .line 419
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 497
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 498
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 499
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 500
    iget-object v0, p0, Lcom/android/settings_ext/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 501
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 987
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aW()V

    .line 988
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 976
    invoke-direct {p0}, Lcom/android/settings_ext/CryptKeeper;->aW()V

    .line 977
    const/4 v0, 0x0

    return v0
.end method
