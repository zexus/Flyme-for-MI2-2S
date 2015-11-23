.class Lcom/android/settings/wfd/u;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

.field private final aoE:Landroid/media/MediaRouter$RouteInfo;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/settings/wfd/u;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 678
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 680
    iput-object p3, p0, Lcom/android/settings/wfd/u;->aoE:Landroid/media/MediaRouter$RouteInfo;

    .line 681
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/u;->setTitle(Ljava/lang/CharSequence;)V

    .line 682
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/u;->setSummary(Ljava/lang/CharSequence;)V

    .line 683
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/u;->setEnabled(Z)V

    .line 684
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/u;->setOrder(I)V

    .line 686
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    const v0, 0x7f090271

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/u;->setSummary(I)V

    .line 703
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/settings/wfd/u;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 704
    return-void

    .line 689
    :cond_0
    const v0, 0x7f090272

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/u;->setSummary(I)V

    goto :goto_0

    .line 692
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/u;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/u;->setOrder(I)V

    goto :goto_0

    .line 695
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/u;->setOrder(I)V

    .line 696
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 697
    const v0, 0x7f090273

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/u;->setSummary(I)V

    goto :goto_0

    .line 699
    :cond_3
    const v0, 0x7f090274

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/u;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/settings/wfd/u;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings/wfd/u;->aoE:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->a(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V

    .line 709
    const/4 v0, 0x1

    return v0
.end method
