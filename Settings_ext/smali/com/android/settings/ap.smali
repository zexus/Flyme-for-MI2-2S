.class public final Lcom/android/settings/ap;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# instance fields
.field private bw:Landroid/app/Fragment;

.field private cP:Lcom/android/internal/widget/LockPatternUtils;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/settings/ap;->mActivity:Landroid/app/Activity;

    .line 37
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ap;->cP:Lcom/android/internal/widget/LockPatternUtils;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/ap;-><init>(Landroid/app/Activity;)V

    .line 42
    iput-object p2, p0, Lcom/android/settings/ap;->bw:Landroid/app/Fragment;

    .line 43
    return-void
.end method

.method private a(ILjava/lang/CharSequence;Z)Z
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/ap;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    .line 129
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 131
    const-string v0, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 132
    const-string v2, "com.android.settings"

    if-eqz p3, :cond_1

    const-class v0, Lcom/android/settings/ConfirmLockPassword$InternalActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/android/settings/ap;->bw:Landroid/app/Fragment;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/android/settings/ap;->bw:Landroid/app/Fragment;

    invoke-virtual {v0, v1, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 141
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    const-class v0, Lcom/android/settings/ConfirmLockPassword;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ap;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method private b(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/ap;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ap;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    .line 103
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 105
    const-string v0, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 106
    const-string v0, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 107
    const-string v2, "com.android.settings"

    if-eqz p4, :cond_2

    const-class v0, Lcom/android/settings/ConfirmLockPattern$InternalActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v0, p0, Lcom/android/settings/ap;->bw:Landroid/app/Fragment;

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/android/settings/ap;->bw:Landroid/app/Fragment;

    invoke-virtual {v0, v1, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 116
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    :cond_2
    const-class v0, Lcom/android/settings/ConfirmLockPattern;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ap;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method


# virtual methods
.method a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/android/settings/ap;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 87
    :goto_0
    return v0

    .line 76
    :sswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/ap;->b(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    goto :goto_0

    .line 84
    :sswitch_1
    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/ap;->a(ILjava/lang/CharSequence;Z)Z

    move-result v0

    goto :goto_0

    .line 74
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method public at()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/ap;->cP:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/settings/ap;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method
