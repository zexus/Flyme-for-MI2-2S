.class Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment$4;
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
    .line 1194
    iput-object p1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment$4;->Gg:Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1196
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment$4;->Gg:Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;->jj()Lcom/android/settings_ext/applications/InstalledAppDetails;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/applications/InstalledAppDetails;->e(Lcom/android/settings_ext/applications/InstalledAppDetails;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1198
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment$4;->Gg:Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;->jj()Lcom/android/settings_ext/applications/InstalledAppDetails;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/android/settings_ext/applications/InstalledAppDetails;->a(Lcom/android/settings_ext/applications/InstalledAppDetails;ZZ)V

    .line 1199
    return-void
.end method
