.class Lcom/android/settings_ext/wfd/v;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

.field private final aoF:Landroid/hardware/display/WifiDisplay;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V
    .locals 1

    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/settings_ext/wfd/v;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    .line 753
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 755
    iput-object p3, p0, Lcom/android/settings_ext/wfd/v;->aoF:Landroid/hardware/display/WifiDisplay;

    .line 756
    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wfd/v;->setTitle(Ljava/lang/CharSequence;)V

    .line 759
    const v0, 0x11070058

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wfd/v;->setSummary(I)V

    .line 760
    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wfd/v;->setEnabled(Z)V

    .line 761
    invoke-virtual {p0}, Lcom/android/settings_ext/wfd/v;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wfd/v;->setOrder(I)V

    .line 767
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/settings_ext/wfd/v;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 768
    return-void

    .line 764
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wfd/v;->setOrder(I)V

    .line 765
    const v0, 0x7f090273

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wfd/v;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/settings_ext/wfd/v;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings_ext/wfd/v;->aoF:Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, v1}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->b(Lcom/android/settings_ext/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 773
    const/4 v0, 0x1

    return v0
.end method
