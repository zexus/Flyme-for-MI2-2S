.class public Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;
.super Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
.source "ConfirmSmsLockPattern.java"


# static fields
.field private static ec:J


# instance fields
.field private b:Landroid/security/ChooseLockSettingsHelper;

.field private dY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;-><init>()V

    .line 62
    return-void
.end method

.method private au()V
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->dY:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/security/ChooseLockSettingsHelper;->setPrivateSmsEnabled(Z)V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(J)J
    .locals 6

    .prologue
    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 120
    sget-wide v2, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->ec:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    sget-wide v2, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->ec:J

    const-wide/16 v4, 0x7530

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 121
    :cond_0
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->ec:J

    .line 123
    :cond_1
    sget-wide v0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->ec:J

    return-wide v0
.end method

.method protected a(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->au()V

    .line 152
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Ljava/util/List;)V

    .line 153
    return-void
.end method

.method protected aA()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "private_sms_lock_pattern_visible_pattern"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected av()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->au()V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 80
    :cond_0
    return-void
.end method

.method protected aw()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseSmsLockPattern;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected ax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "private_sms_lock_enabled"

    return-object v0
.end method

.method protected ay()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 108
    const v0, 0x7f090c70

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected az()I
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f090c6f

    return v0
.end method

.method protected b(J)V
    .locals 1

    .prologue
    .line 128
    sput-wide p1, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->ec:J

    .line 129
    iget-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->clearLockoutAttemptDeadline()V

    .line 130
    return-void
.end method

.method protected c(J)V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->c(J)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->er:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->er:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected checkPattern(Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0, p1}, Landroid/security/MiuiLockPatternUtils;->checkMiuiLockPattern(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected e(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->e(Landroid/content/Intent;)V

    .line 86
    const-string v0, "confirm_purpose"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->dY:I

    .line 88
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    .line 68
    iget-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    .line 69
    return-void
.end method
