.class public Lcom/android/settings/location/DimmableIconPreference;
.super Landroid/preference/Preference;
.source "DimmableIconPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private aG(Z)V
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/settings/location/DimmableIconPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_1

    const/16 v0, 0x66

    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/settings/location/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_0
    return-void

    .line 47
    :cond_1
    const/16 v0, 0xff

    goto :goto_0
.end method


# virtual methods
.method public onParentChanged(Landroid/preference/Preference;Z)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p2}, Lcom/android/settings/location/DimmableIconPreference;->aG(Z)V

    .line 55
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onParentChanged(Landroid/preference/Preference;Z)V

    .line 56
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 60
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/location/DimmableIconPreference;->aG(Z)V

    .line 61
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 62
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
