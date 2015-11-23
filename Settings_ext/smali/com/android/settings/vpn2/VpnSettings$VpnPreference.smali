.class Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
.super Lmiui/preference/RadioButtonPreference;
.source "VpnSettings.java"


# instance fields
.field private anz:Lcom/android/internal/net/VpnProfile;

.field final synthetic aoj:Lcom/android/settings/vpn2/VpnSettings;

.field private mState:I


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 462
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->aoj:Lcom/android/settings/vpn2/VpnSettings;

    .line 463
    invoke-direct {p0, p2}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 460
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mState:I

    .line 465
    const v0, 0x7f0400c8

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->setWidgetLayoutResource(I)V

    .line 466
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->setPersistent(Z)V

    .line 467
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->setOrder(I)V

    .line 469
    iput-object p3, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->anz:Lcom/android/internal/net/VpnProfile;

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update()V

    .line 471
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2

    .prologue
    .line 517
    const/4 v0, -0x1

    .line 518
    instance-of v1, p1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v1, :cond_0

    .line 519
    check-cast p1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 526
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 529
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 458
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method d(Lcom/android/internal/net/VpnProfile;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->anz:Lcom/android/internal/net/VpnProfile;

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update()V

    .line 480
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 504
    invoke-super {p0, p1}, Lmiui/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 505
    const v0, 0x7f1001d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 506
    new-instance v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference$1;-><init>(Lcom/android/settings/vpn2/VpnSettings$VpnPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    return-void
.end method

.method sP()Lcom/android/internal/net/VpnProfile;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->anz:Lcom/android/internal/net/VpnProfile;

    return-object v0
.end method

.method update()V
    .locals 2

    .prologue
    .line 488
    iget v0, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mState:I

    if-gez v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->anz:Lcom/android/internal/net/VpnProfile;

    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 497
    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->notifyHierarchyChanged()V

    .line 499
    return-void

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 495
    iget v1, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mState:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method update(I)V
    .locals 0

    .prologue
    .line 483
    iput p1, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->mState:I

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update()V

    .line 485
    return-void
.end method
