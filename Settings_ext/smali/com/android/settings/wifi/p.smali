.class Lcom/android/settings_ext/wifi/p;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings_ext/wifi/p;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings_ext/wifi/p;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/wifi/bm;->bN(Landroid/content/Context;)V

    .line 178
    return-void
.end method
