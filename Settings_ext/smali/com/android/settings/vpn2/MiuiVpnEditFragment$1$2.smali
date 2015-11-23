.class Lcom/android/settings/vpn2/MiuiVpnEditFragment$1$2;
.super Ljava/lang/Object;
.source "MiuiVpnEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic anS:Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1$2;->anS:Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1$2;->anS:Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;

    iget-object v0, v0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;->anR:Lcom/android/settings/vpn2/MiuiVpnEditFragment;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->finish()V

    .line 202
    return-void
.end method
