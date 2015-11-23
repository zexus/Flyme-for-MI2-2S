.class Lcom/android/settings_ext/wifi/af;
.super Ljava/lang/Object;
.source "WifiScanModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic avH:Lcom/android/settings_ext/wifi/WifiScanModeActivity$AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/WifiScanModeActivity$AlertDialogFragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings_ext/wifi/af;->avH:Lcom/android/settings_ext/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings_ext/wifi/af;->avH:Lcom/android/settings_ext/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WifiScanModeActivity$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/wifi/WifiScanModeActivity;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/WifiScanModeActivity;->a(Lcom/android/settings_ext/wifi/WifiScanModeActivity;)V

    .line 140
    return-void
.end method
