.class public Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;
.super Lcom/android/settings_ext/ConfirmLockPattern$ConfirmLockPatternFragment;
.source "ConfirmGalleryLockPattern.java"


# static fields
.field private static ec:J


# instance fields
.field private b:Landroid/security/ChooseLockSettingsHelper;

.field private dY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ext/ConfirmLockPattern$ConfirmLockPatternFragment;-><init>()V

    .line 60
    return-void
.end method

.method private au()V
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->dY:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/security/ChooseLockSettingsHelper;->setPrivateGalleryEnabled(Z)V

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(J)J
    .locals 6

    .prologue
    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 118
    sget-wide v2, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->ec:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    sget-wide v2, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->ec:J

    const-wide/16 v4, 0x7530

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 119
    :cond_0
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->ec:J

    .line 121
    :cond_1
    sget-wide v0, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->ec:J

    return-wide v0
.end method

.method protected a(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->au()V

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings_ext/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Ljava/util/List;)V

    .line 156
    return-void
.end method

.method protected aA()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 148
    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "private_gallery_lock_pattern_visible_pattern"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected aB()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method protected av()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->au()V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 78
    :cond_0
    return-void
.end method

.method protected aw()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ext/ChooseGalleryLockPattern;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected ax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "private_gallery_lock_enabled"

    return-object v0
.end method

.method protected ay()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f090c73

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected az()I
    .locals 1

    .prologue
    .line 101
    const v0, 0x7f090c72

    return v0
.end method

.method protected b(J)V
    .locals 1

    .prologue
    .line 126
    sput-wide p1, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->ec:J

    .line 127
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->clearLockoutAttemptDeadline()V

    .line 128
    return-void
.end method

.method protected c(J)V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/ConfirmLockPattern$ConfirmLockPatternFragment;->c(J)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->er:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->er:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected checkPattern(Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0, p1}, Landroid/security/MiuiLockPatternUtils;->checkMiuiLockPattern(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected e(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings_ext/ConfirmLockPattern$ConfirmLockPatternFragment;->e(Landroid/content/Intent;)V

    .line 84
    const-string v0, "confirm_purpose"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->dY:I

    .line 86
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings_ext/ConfirmLockPattern$ConfirmLockPatternFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    .line 66
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/ConfirmGalleryLockPattern$ConfirmGalleryLockFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    .line 67
    return-void
.end method
