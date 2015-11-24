.class Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment$8;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Gg:Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .locals 0

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment$8;->Gg:Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment$8;->Gg:Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;->jj()Lcom/android/settings_ext/applications/InstalledAppDetails;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/applications/InstalledAppDetails;->a(Lcom/android/settings_ext/applications/InstalledAppDetails;Z)V

    .line 1247
    return-void
.end method
