.class Lcom/android/settings/vpn2/VpnSettings$VpnPreference$1;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aok:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings$VpnPreference;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference$1;->aok:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference$1;->aok:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->aoj:Lcom/android/settings/vpn2/VpnSettings;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference$1;->aok:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->sP()Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/VpnSettings;->a(Lcom/android/internal/net/VpnProfile;)V

    .line 511
    return-void
.end method
