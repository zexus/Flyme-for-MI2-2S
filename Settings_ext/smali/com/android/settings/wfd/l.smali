.class Lcom/android/settings/wfd/l;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "WifiDisplaySettings.java"


# instance fields
.field final synthetic aoA:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/settings/wfd/l;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/settings/wfd/l;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->f(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    .line 650
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/settings/wfd/l;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->f(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    .line 655
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/settings/wfd/l;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->f(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    .line 660
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/settings/wfd/l;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->f(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    .line 665
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/settings/wfd/l;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->f(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    .line 670
    return-void
.end method
