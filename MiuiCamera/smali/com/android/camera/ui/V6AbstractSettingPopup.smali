.class public abstract Lcom/android/camera/ui/V6AbstractSettingPopup;
.super Landroid/widget/RelativeLayout;
.source "V6AbstractSettingPopup.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected mDisableKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field protected mPreference:Lcom/android/camera/preferences/IconListPreference;

.field protected mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setVisibility(I)V

    .line 45
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 22
    iput-object p2, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 23
    iput-object p3, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 24
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 33
    return-void
.end method

.method public abstract reloadPreference()V
.end method

.method public show()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setVisibility(I)V

    .line 41
    return-void
.end method

.method public updateBackground()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
