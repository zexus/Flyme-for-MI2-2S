.class public Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SyncStateCheckBoxPreference.java"


# instance fields
.field private Cw:Z

.field private Cx:Z

.field private Cy:Z

.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mIsPending:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v1, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->Cw:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->Cx:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->Cy:Z

    .line 54
    iput-object p2, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    .line 55
    iput-object p3, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    .line 56
    const v0, 0x7f0400cb

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 57
    return-void
.end method


# virtual methods
.method public X(Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 105
    return-void
.end method

.method public Y(Z)V
    .locals 0

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->Cx:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 114
    return-void
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public isOneTimeSyncMode()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->Cy:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 7

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 62
    const v0, 0x7f1001d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/widget/AnimatedImageView;

    .line 64
    const v1, 0x7f1001d4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 66
    iget-boolean v1, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->Cw:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    if-eqz v1, :cond_1

    :cond_0
    move v5, v4

    .line 67
    :goto_0
    if-eqz v5, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/AnimatedImageView;->setVisibility(I)V

    .line 68
    iget-boolean v1, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->Cw:Z

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/AnimatedImageView;->setAnimating(Z)V

    .line 70
    iget-boolean v0, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->Cx:Z

    if-eqz v0, :cond_3

    if-nez v5, :cond_3

    move v0, v4

    .line 71
    :goto_2
    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 74
    iget-boolean v1, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->Cy:Z

    if-eqz v1, :cond_5

    .line 75
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0907eb

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_4
    return-void

    :cond_1
    move v5, v2

    .line 66
    goto :goto_0

    :cond_2
    move v1, v3

    .line 67
    goto :goto_1

    :cond_3
    move v0, v2

    .line 70
    goto :goto_2

    :cond_4
    move v0, v3

    .line 71
    goto :goto_3

    .line 85
    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->Cy:Z

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    const-string v0, "SyncState"

    const-string v1, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->Cw:Z

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 96
    return-void
.end method

.method public setOneTimeSyncMode(Z)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->Cy:Z

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 122
    return-void
.end method
