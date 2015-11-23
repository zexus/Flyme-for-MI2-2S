.class Lcom/android/settings/accounts/AccountSettings$AccountPreference;
.super Landroid/preference/Preference;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic BD:Lcom/android/settings/accounts/AccountSettings;

.field private final BE:Ljava/lang/String;

.field private final BF:Landroid/os/Bundle;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->BD:Lcom/android/settings/accounts/AccountSettings;

    .line 452
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 453
    iput-object p3, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    .line 454
    iput-object p4, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->BE:Ljava/lang/String;

    .line 455
    iput-object p5, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->BF:Landroid/os/Bundle;

    .line 456
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setWidgetLayoutResource(I)V

    .line 458
    invoke-virtual {p0, p3}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 459
    invoke-virtual {p0, p6}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 461
    invoke-virtual {p0, p0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 462
    return-void
.end method

.method static synthetic a(Lcom/android/settings/accounts/AccountSettings$AccountPreference;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 466
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->BE:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->BE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->BF:Landroid/os/Bundle;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/android/settings/hl;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 469
    const/4 v4, 0x1

    .line 471
    :cond_0
    return v4
.end method
